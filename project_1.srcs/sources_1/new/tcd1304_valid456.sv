`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/09/26 15:59:14
// Design Name: 
// Module Name: tcd1304_valid456
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

// ============================================================================
// tcd1304_valid456_dual
// ----------------------------------------------------------------------------
// 100MHz; 从 blk_mem_avg 读 3694, 取有效 3648(地址 32~3679), 滑均+÷8 -> 456 通道
// 乒乓双缓冲 (2 x 456 x 16), bank 由模块内部自动管理:
//   输出1: 主串行流 (给 NN, 每通道 10ns)
//   输出2: 串口读口, 只有两个信号:
//          i_uart_ch_idx  <- 串口模块给的"当前通道号"
//          o_uart_ch_data -> 该通道的 16bit 原始数据 (晚 1 拍有效)
// ============================================================================
// ============================================================================
// tcd1304_valid456_dual
//  - 100MHz; 从 blk_mem_avg 扫描 -> 有效区 3648 -> 滑均+抽样 -> 456 通道
//  - 乒乓双缓冲; 主输出给 NN; 串口读口: 通道号进, 数据 + 就绪出
// ============================================================================
module tcd1304_valid456_dual
#(
    parameter DATA_W      = 16,
    parameter ELEM_TOTAL  = 12'd364,
    parameter VALID_START = 12'd32,
    parameter VALID_LEN   = 12'd264, // 3648
    parameter DECIM       = 8,
    parameter CH_NUM      = 9'd33, //456
    parameter LOG_CH      = 9,
    parameter AVG_SEL     = 0,          // 0: W4滑动(>>2); 1: W8块平均(>>3)
    parameter RAM_LAT     = 0,          // blk_mem_avg 读延迟(100MHz 拍)
    parameter BUF_STRIDE  = 512         // 每个 bank 地址跨度(2^9)
)
(
    input  wire              i_clk,          // 100MHz
    input  wire              ip_rst_,
    input  wire              i_data_ready,   // 接 o_data_valid (2MHz 域)
    output wire [11:0]       o_ram_addr,     // -> blk_mem_avg 100MHz 读地址
    input  wire [DATA_W-1:0] i_ram_data,     // <- blk_mem_avg 100MHz 读数据

    // ---- 输出1: NN ----
    output reg  [DATA_W-1:0] o_ch_data,
    output reg  [LOG_CH-1:0] o_ch_idx,
    output reg               o_ch_valid,     // 1 拍 = 10ns
    output reg               o_frame_done,

    // ---- 输出2: 串口 ----
    input  wire [LOG_CH-1:0] i_uart_ch_idx,    // 串口当前要发的通道号 0~455
    output reg  [DATA_W-1:0] o_uart_ch_data,   // 对应通道的 16bit 数据
    output reg               o_uart_data_ready // 就绪: 高时串口可发送该通道数据
);

    // ================= 1. 2MHz -> 100MHz 同步 + 边沿检测 =================
    reg rdy_s0, rdy_s1, rdy_s2;
    always @(posedge i_clk or negedge ip_rst_) begin
        if (!ip_rst_) begin
            rdy_s0 <= 1'b0; rdy_s1 <= 1'b0; rdy_s2 <= 1'b0;
        end else begin
            rdy_s0 <= i_data_ready;
            rdy_s1 <= rdy_s0;
            rdy_s2 <= rdy_s1;
        end
    end
    wire frame_start = rdy_s1 & ~rdy_s2;

    // ================= 2. 读扫描 + 数据流水对齐 =================
    localparam S_IDLE   = 2'd0;
    localparam S_READ   = 2'd1;
    localparam S_OUTPUT = 2'd2;

    reg  [1:0]  state;
    reg  [11:0] rd_addr;
    wire        rd_run = (state == S_READ);

    assign o_ram_addr = rd_addr;

    wire [11:0] a_pipe [0:RAM_LAT];
    wire        v_pipe [0:RAM_LAT];
    assign a_pipe[0] = rd_addr;
    assign v_pipe[0] = rd_run;

    genvar gi;
    generate
        for (gi = 0; gi < RAM_LAT; gi = gi + 1) begin : g_lat
            reg [11:0] a_r;
            reg        v_r;
            always @(posedge i_clk or negedge ip_rst_) begin
                if (!ip_rst_) begin a_r <= 12'd0; v_r <= 1'b0; end
                else          begin a_r <= a_pipe[gi]; v_r <= v_pipe[gi]; end
            end
            assign a_pipe[gi+1] = a_r;
            assign v_pipe[gi+1] = v_r;
        end
    endgenerate

    wire [11:0] cap_addr   = a_pipe[RAM_LAT];
    wire        cap_vld    = v_pipe[RAM_LAT];
    wire        cap_in_win = cap_vld &&
                             (cap_addr >= VALID_START) &&
                             (cap_addr <  VALID_START + VALID_LEN);

    // ================= 3. 平均 + 抽样 =================
    reg  [DATA_W-1:0]  sr0, sr1, sr2, sr3;
    wire [DATA_W+1:0]  sum4  = {2'b0, sr0} + {2'b0, sr1} + {2'b0, sr2} + {2'b0, sr3};
    wire [DATA_W-1:0]  mavg4 = sum4[DATA_W+1:2];

    reg  [DATA_W+2:0]  acc8;
    wire [DATA_W+2:0]  sum8  = acc8 + i_ram_data;
    wire [DATA_W-1:0]  mavg8 = sum8 >> 3;

    // ================= 4. 乒乓双缓冲 + 串口 bank 自动管理 =================
    reg  [DATA_W-1:0] chan_mem [0:(2*BUF_STRIDE)-1];   // 2 x 512 深
    reg               wr_bank;        // 当前写/主读 bank
    reg               serve_bank;     // 当前给串口服务的 bank
    reg               newest_bank;    // 最近完成的 bank
    reg               new_bank_rdy;   // 有新 bank 待切换
    reg  [3:0]        grp_cnt;
    reg  [LOG_CH-1:0] ch_wr, ch_rd;
    reg               frame_full;
    reg               frame_loaded;   // 至少完成过一帧 (串口就绪的前提)

    // 组合读
    wire [DATA_W-1:0] fast_rd = chan_mem[{wr_bank,     ch_rd}];
    wire [DATA_W-1:0] uart_rd = chan_mem[{serve_bank, i_uart_ch_idx}];

    // ---- 串口读口: 数据输出 + 就绪 ----
    reg  [LOG_CH-1:0] idx_d;          // 通道号打一拍
    always @(posedge i_clk or negedge ip_rst_) begin
        if (!ip_rst_) begin
            o_uart_ch_data    <= 'd0;
            o_uart_data_ready <= 1'b0;
            idx_d             <= {LOG_CH{1'b1}};   // 与任何合法通道号都不同
        end else begin
            if (i_uart_ch_idx == CH_NUM)begin
                o_uart_ch_data    <= 16'hFFFF;                          // 数据晚 1 拍        
            end else begin
                o_uart_ch_data    <= uart_rd;                          // 数据晚 1 拍
                o_uart_data_ready <= (i_uart_ch_idx == idx_d)          // 通道号已稳定 >=1 拍
                                     & frame_loaded;                   // 且已有一帧有效数据
                idx_d             <= i_uart_ch_idx;
            end
        end
    end

    // ================= 5. 主状态机 =================
    always @(posedge i_clk or negedge ip_rst_) begin
        if (!ip_rst_) begin
            state        <= S_IDLE;
            rd_addr      <= 12'd0;
            sr0 <= 'd0; sr1 <= 'd0; sr2 <= 'd0; sr3 <= 'd0;
            acc8         <= 'd0;
            grp_cnt      <= 4'd0;
            ch_wr        <= 'd0;
            ch_rd        <= 'd0;
            frame_full   <= 1'b0;
            frame_loaded <= 1'b0;
            wr_bank      <= 1'b0;
            serve_bank   <= 1'b0;
            newest_bank  <= 1'b0;
            new_bank_rdy <= 1'b0;
            o_ch_data    <= 'd0;
            o_ch_idx     <= CH_NUM-1;
            o_ch_valid   <= 1'b0;
            o_frame_done <= 1'b0;
        end else begin
            o_ch_valid   <= 1'b0;
            o_frame_done <= 1'b0;

            // ---- 串口 bank 切换: 只在一轮扫描到达最后一个通道时进行 ----
            if (new_bank_rdy && (i_uart_ch_idx == CH_NUM - 1)) begin
                serve_bank   <= newest_bank;   // 下一轮起用最新帧
                new_bank_rdy <= 1'b0;
            end

            case (state)

            S_IDLE: begin
                if (frame_start) begin
                    rd_addr <= 12'd0;
                    grp_cnt <= 4'd0;
                    ch_wr   <= 'd0;
                    acc8    <= 'd0;
                    sr0 <= 'd0; sr1 <= 'd0; sr2 <= 'd0; sr3 <= 'd0;
                    state   <= S_READ;
                end
            end

            S_READ: begin
                if (rd_addr != ELEM_TOTAL - 1)
                    rd_addr <= rd_addr + 1'b1;

                if (cap_in_win) begin
                    sr0 <= i_ram_data;
                    sr1 <= sr0;
                    sr2 <= sr1;
                    sr3 <= sr2;

                    if (grp_cnt == DECIM - 1) begin
                        chan_mem[{wr_bank, ch_wr}] <= (AVG_SEL == 0) ? mavg4 : mavg8;
                        grp_cnt <= 4'd0;
                        acc8    <= 'd0;
                        ch_wr   <= ch_wr + 1'b1;
                        if (ch_wr == CH_NUM - 1) begin
                            frame_full   <= 1'b1;
                            frame_loaded <= 1'b1;    // 已有有效帧
                            newest_bank  <= wr_bank;
                            new_bank_rdy <= 1'b1;
                        end
                    end else begin
                        grp_cnt <= grp_cnt + 1'b1;
                        acc8    <= acc8 + i_ram_data;
                    end
                end

                if (frame_full) begin
                    frame_full <= 1'b0;
                    grp_cnt    <= 4'd0;
                    ch_wr      <= 'd0;
                    ch_rd      <= 'd0;
                    state      <= S_OUTPUT;
                end
            end

            S_OUTPUT: begin
                o_ch_data  <= fast_rd;
                o_ch_idx   <= ch_rd;
                o_ch_valid <= 1'b1;                  // 10ns
                if (ch_rd == CH_NUM - 1) begin
                    o_frame_done <= 1'b1;
                    ch_rd        <= 'd0;
                    wr_bank      <= ~wr_bank;         // 下一帧写另一块
                    state        <= S_IDLE;
                end else begin
                    ch_rd <= ch_rd + 1'b1;
                end
            end

            default: state <= S_IDLE;
            endcase
        end
    end

endmodule

