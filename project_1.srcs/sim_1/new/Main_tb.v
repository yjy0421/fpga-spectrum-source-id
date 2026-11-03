`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/09/25 15:26:52
// Design Name: 
// Module Name: Main_tb
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


`timescale 1ns / 1ps

module Main_tb;

// 顶层端口
reg         ip_clk;
reg         ip_rst_;
reg         ip_vauxp0;
reg         ip_vauxn0;
wire        op_phim;
wire        op_icg;
wire        op_sh;
reg         ip_uart_rx;
wire        op_uart_tx;

// 100MHz时钟 10ns周期
initial begin
    ip_clk = 1'b0;
    forever #5 ip_clk = ~ip_clk;
end

initial begin
    ip_rst_ = 1'b1;   // 初始高，不复位
    #50;
    ip_rst_ = 1'b0;   // 产生下降沿，触发异步复位
    #200;
    ip_rst_ = 1'b1;   // 撤销复位
end

// 任务：发送UART字节（115200，偶校验，1起始+8数据+1偶校验+1停止）
task automatic uart_send_byte;
    input [7:0] din;
    integer i;
    reg parity_bit;
    begin
        parity_bit = ^din; //偶校验
        ip_uart_rx = 1'b1;
        #8680; //115200波特：bit周期≈8680ns
        ip_uart_rx = 1'b0; //起始位
        #8680;
        for(i=0;i<8;i=i+1) begin
            ip_uart_rx = din[i];
            #8680;
        end
        ip_uart_rx = parity_bit; //偶校验位
        #8680;
        ip_uart_rx = 1'b1; //停止位
        #8680;
    end
endtask


// 任务：发送完整一帧指令：FE FE FE FE + 积分时间(2byte) + 平均次数(1byte)
task automatic send_param_frame;
    input [15:0] sh_time;
    input [7:0] avg_cnt;
begin
    uart_send_byte(8'hFE);
    #200000;
    uart_send_byte(8'hFE);
    #200000;
    uart_send_byte(8'hFE);
    #200000;
    uart_send_byte(8'hFE);
    #200000;
    uart_send_byte(sh_time[15:8]);
    #200000;
    uart_send_byte(sh_time[7:0]);
    #200000;
    uart_send_byte(avg_cnt);
    #500000;
end
endtask

// 在initial激励块调用：设置积分时间500，平均次数16
initial begin
    ip_uart_rx = 1'b1;
    #500;
    send_param_frame(16'd50,8'd16);
    
    #20000000;
    $display("sim finish");
    $finish;
end

// 波形dump
initial begin
    $dumpfile("wave_Main.vcd");
    $dumpvars(0, Main_tb);
end

// 例化顶层
Main Main_inst(
    .ip_clk      (ip_clk),
    .ip_rst_     (ip_rst_),
    .ip_vauxp0   (ip_vauxp0),
    .ip_vauxn0   (ip_vauxn0),
    .op_phim     (op_phim),
    .op_icg      (op_icg),
    .op_sh       (op_sh),
    .ip_uart_rx  (ip_uart_rx),
    .op_uart_tx  (op_uart_tx)
);

endmodule

