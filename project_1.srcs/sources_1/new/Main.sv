`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/09/24 15:51:19
// Design Name: 
// Module Name: Main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Main(
    input       wire    ip_clk,
    input       wire    ip_rst_,
    // Ports of XADC
    input       wire    ip_vauxp0,      
    input       wire    ip_vauxn0,   
    // Ports of CCD1304  
    output      wire    op_phim,    //phim: master clock
    output      wire    op_icg,     //icg: integration clear gate
    output      wire    op_sh,       //sh: shift gate   
    // Ports of Uart
    input       wire    ip_uart_rx,
    output      wire    op_uart_tx,
    // Ports of segled
    output  wire    [ 1:0]           op_seg_en, 
    output  wire    [ 7:0]           op_seg_data
    );
    
// 只改这一行：1=小(364/264/33)  2=大(3694/3648/456)
parameter SIMULATION = 1;

localparam CCD_ELEMENT_COUNTS = (SIMULATION==1) ? 16'd364 : 16'd3694;
localparam VALID_LEN          = (SIMULATION==1) ? 12'd264 : 12'd3648;
localparam CH_NUM             = (SIMULATION==1) ? 9'd33 : 9'd456;
 

wire                                clk_2MHz;
wire                                clk_500KHz;
wire                [15:0]          sh_int_time;
wire                [ 7:0]          num_avg;
wire                                os_trigger;
wire                                eoc_broadened_delay;
wire                [15:0]          data_from_ad;
wire                [15:0]          data_avg;
wire                [15:0]          data_nn;
wire                [15:0]          data_uart;
wire                [11:0]          ram_addr;       
wire                [11:0]          ordinal;
wire                                data_valid;
wire                                data_valid_nn;
wire                [ 7:0]          rx_data;				//接收数据寄存器，保存直至下一个数据来刿
wire                                rx_done;
wire                                uart_data_ready;
wire                                frame_done;
wire                [ 8:0]          idx_nn;

FrequencyDivision       FrequencyDivision_inst(
	//输入端口
	.ip_clk                (ip_clk),
	.ip_rst_               (ip_rst_),
	//输出端口
	.o_clk_2MHz            (clk_2MHz),  
	.o_clk_500KHz          (clk_500KHz)             
);


UartInputDataProcessing             UartInputDataProcessing_Inst
(
	.ip_clk                  (ip_clk             ),
    .ip_rst_                 (ip_rst_            ),
	.i_rx_data               (rx_data            ),
    .i_rx_done               (rx_done            ),
    .o_sh_int_time           (sh_int_time        ),
	.o_num_avg               (num_avg            )
);

Adc_xilinx      Adc_xilinx_inst(
    .ip_clk                 (ip_clk),
    .ip_rst_                (ip_rst_),
    .ip_vauxp0              (ip_vauxp0),      
    .ip_vauxn0              (ip_vauxn0), 
    .i_conv_start           (os_trigger),
    .o_data_out             (data_from_ad),
    .o_eoc_broadened_delay  (eoc_broadened_delay)    
);

TCD1304
#(
     .CCD_ELEMENT_COUNTS    (CCD_ELEMENT_COUNTS)
)
TCD1304_inst(
    .i_clk                  (clk_2MHz),
    .ip_rst_                (ip_rst_),
    .i_sh_int_time          (sh_int_time),
    .op_phim                (op_phim),    //phim: master clock
    .op_icg                 (op_icg),     //icg: integration clear gate
    .op_sh                  (op_sh),  //sh: shift gate
    .o_os_trigger           (os_trigger)
    );
//======================时间域上累计平均=====================
TCD1304_data_processor
#(
     .CCD_ELEMENT_COUNTS    (CCD_ELEMENT_COUNTS)
)
TCD1304_data_processor_inst(
    .i_clk                      (clk_2MHz),
    .ip_rst_                    (ip_rst_),
    .i_data_from_ad             (data_from_ad[15:4]),
    .i_eoc_broadened            (eoc_broadened_delay),
    .i_index                    (ram_addr),
    .i_num_avg                  (num_avg),
    .o_data_avg                 (data_avg),
    .o_data_valid               (data_valid)      
    );


//=======================空间域上滑动平均+下采样=====================
tcd1304_valid456_dual
#(
    .DATA_W      (16),
    .ELEM_TOTAL  (CCD_ELEMENT_COUNTS), //(12'd364), // 
    .VALID_START (12'd32),
    .VALID_LEN   (VALID_LEN), //(12'd264), //
    .DECIM       (8),
    .CH_NUM      (CH_NUM),   // (9'd33),  //
    .LOG_CH      (9),
    .AVG_SEL     (0),          // 0: W4滑动(>>2); 1: W8块平均(>>3)
    .RAM_LAT     (0),          // blk_mem_avg 读延迟(100MHz 拍)
    .BUF_STRIDE  (512)         // 每个 bank 地址跨度(2^9)
)
tcd1304_valid456_dual_inst(
    .i_clk              (clk_2MHz),          // 100MHz
    .ip_rst_            (ip_rst_),

    .i_data_ready       (data_valid),   // 接 o_data_valid (2MHz 域)

    .o_ram_addr         (ram_addr),     // -> blk_mem_avg 100MHz 读地址
    .i_ram_data         (data_avg),     // <- blk_mem_avg 100MHz 读数据

    // ---- 输出1: 主串行流 (给 NN) ----
    .o_ch_data          (data_nn),
    .o_ch_idx           (idx_nn),
    .o_ch_valid         (data_valid_nn),     // 1 拍 = 10ns
    .o_frame_done       (frame_done),

    // ---- 输出2: 串口读口 (仅两个信号) ----
    .i_uart_ch_idx      (ordinal),  // 串口当前要发的通道号 0~455
    .o_uart_ch_data     (data_uart),  // 对应通道的 16bit 数据
    .o_uart_data_ready  (uart_data_ready)
);

reg         frame_done_reg;
wire        frame_done_10ns;
reg   [8:0] idx_nn_reg;
reg         idx_nn_10ns;
always@(posedge ip_clk or negedge ip_rst_) begin
    if (!ip_rst_) begin
        frame_done_reg <= 1'b0;
        idx_nn_reg <= CH_NUM - 1;
    end else begin
        frame_done_reg <= frame_done;
        idx_nn_reg <= idx_nn;
    end
end
assign  frame_done_10ns = (frame_done_reg == 1'b0 && frame_done == 1'b1)?1'b1:1'b0;
assign  idx_nn_10ns = (idx_nn_reg != idx_nn)?1'b1:1'b0;

wire            uart_busy;
wire            uart_tx_done;
wire            uart_tx_trig;
wire    [7:0]   uart_tx_data;

Uart_data_ready
#(
    .NUM_OF_CHANNEL  (CH_NUM) //(9'd33)  // 通道总数
)
Uart_data_ready_inst
(
    .ipClk              (ip_clk),          // 系统时钟，与Uart_8bits同源
    .ipRst_             (ip_rst_),         // 异步复位(低有效)
    .i_start_pulse      (frame_done_10ns),
    // 与Uart_8bits的交互接口
   
    .i_uart_busy        (uart_busy),    // 来自Uart_8bits的发送忙标志(o_tx_busy)
    .i_uart_done        (uart_tx_done),    // 来自Uart_8bits的发送完成标志(o_tx_done)
    .o_uart_trig        (uart_tx_trig),// 触发Uart_8bits发送的信号(i_trig)
    .o_uart_data        (uart_tx_data),    // 发送给Uart_8bits的数据(i_tx_data)
    // 外部数据输入接口
    .i_data             (data_uart),         // 待发送的16位原始数据
    .o_ordinal          (ordinal),       // 当前发送的通道序号
    .o_transmitting     () 
); 

Uart_8bits #(
    .CLK_FREQ  (100_000_000),  // 时钟频率
    .BAUD_RATE (115200),      // 波特率
    .DATA_BITS (8),           // 数据位宽度
    .STOP_BITS (1),           // 停止位数量
    .PARITY_EN (1),           // 校验位使能(0:禁用,1:启用)
    .PARITY_TYPE (1)            // 校验类型(0:奇校验,1:偶校验)
)
Uart_8bits_inst
(
    .i_clk              (ip_clk),        // 系统时钟
    .i_rst_n            (ip_rst_),      // 异步复位(低有效)
    // 接收接口
    .i_rx               (ip_uart_rx),         // 串口接收数据
    .o_rx_data          (rx_data),        // 接收数据输出
    .o_rx_done          (rx_done),    // 接收完成标志
    .o_rx_err           (),     // 接收错误标志
    // 发送接口
    .i_tx_data          (uart_tx_data),    // 发送数据
    .i_trig             (uart_tx_trig),       // 发送触发信号
    .o_tx               (op_uart_tx),         // 串口发送数据
    .o_tx_busy          (uart_busy),    // 发送忙标志
    .o_tx_done          (uart_tx_done)     // 发送完成标志
);


//===============================================神经网络========================

Neural_network #(
    .IN_FEATURES    (CH_NUM),
    .OUT_FEATURES   (2),
    .BIT_WIDTH      (8),
    .PARREL         (1),
    .RAW_DATA_W     (24)    
)Neural_network_inst(
    .i_clk          (ip_clk),
    .i_rst_n        (ip_rst_),
    .op_seg_en      (op_seg_en),
    .op_seg_data    (op_seg_data),
    .raw_sig        ($signed({{8{1'b0}}, data_nn})),
    .raw_valid      (idx_nn_10ns)
);

endmodule
