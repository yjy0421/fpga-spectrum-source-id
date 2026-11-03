`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/26 19:55:55
// Design Name: 
// Module Name: TCD1304
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
/*
module TCD1304
#(
	parameter CCD_ELEMENT_COUNTS= 16'd3694
)
(
    input       wire                i_clk,
    input       wire                ip_rst_,
    input       wire    [15:0]      i_sh_int_time,
    output      wire                op_tcd1304_phim,    //phim: master clock
    output      wire                op_tcd1304_icg,     //icg: integration clear gate
    output      wire                op_tcd1304_sh,       //sh: shift gate
    output      wire                o_tcd1304_os_trigger,
    output      wire    [11:0]      o_tcd1304_digital_data
    );
    
//localparam SH_INTEGRATION_TIME = 16'd20;
localparam ICG_READOUT_PERIOD  = (20'd2000 > (CCD_ELEMENT_COUNTS << 2'd2))? 20'd2000 : (CCD_ELEMENT_COUNTS << 2'd2);
reg     [19:0]      cnt_timer_icg;
reg     [19:0]      cnt_timer_icg_n;
reg     [15:0]      cnt_timer_sh;
reg     [15:0]      cnt_timer_sh_n;
reg     [15:0]      cnt_timer_os;
reg     [15:0]      cnt_timer_os_n;
reg     [15:0]      cnt_os_trigger;
reg     [15:0]      cnt_os_trigger_n;
reg                 tcd1304_icg;
reg                 tcd1304_icg_n;
reg                 tcd1304_sh;
reg                 tcd1304_sh_n;
reg                 cd1304_os_trigger;
reg                 cd1304_os_trigger_n;

initial begin
        cnt_timer_icg = 20'd0;
        cnt_timer_sh = 16'd0;
        cnt_timer_os = 16'd0;
        tcd1304_icg = 1'b1;
        tcd1304_sh = 1'b0; 
        cnt_os_trigger = 16'd0;
end

always @ (negedge i_clk or negedge ip_rst_) begin
    if (ip_rst_ == 1'b0) begin
        cnt_timer_icg <= 20'd0;
        cnt_timer_sh <= 16'd0;
        cnt_timer_os <= 16'd0;
        tcd1304_icg <= 1'b1;
        tcd1304_sh <= 1'b0; 
        cd1304_os_trigger <= 1'b0;
        cnt_os_trigger <= 16'd0;
    end
    else begin
        cnt_timer_icg <= cnt_timer_icg_n;
        cnt_timer_sh <= cnt_timer_sh_n;
        cnt_timer_os <= cnt_timer_os_n;
        tcd1304_icg <= tcd1304_icg_n;
        tcd1304_sh <= tcd1304_sh_n;
        cd1304_os_trigger <= cd1304_os_trigger_n;
        cnt_os_trigger <= cnt_os_trigger_n;    
    end
end

always @ (*) begin
//    if (cnt_timer_icg >= 16'd20 + (CCD_ELEMENT_COUNTS << 2'd2) && cnt_timer_sh == i_sh_int_time) // 2Mhz时钟计7500us需要15000次振荡
    if (cnt_timer_icg >= 16'd20 + ICG_READOUT_PERIOD - 1'd1 && cnt_timer_sh == i_sh_int_time) // 2Mhz时钟计7500us需要15000次振荡
//    if (cnt_timer_icg >= 16'd20 + ICG_READOUT_PERIOD - 1'd1) // 2Mhz时钟计7500us需要15000次振荡  
        cnt_timer_icg_n = 20'd0;
    else
        cnt_timer_icg_n = cnt_timer_icg + 20'd1;
end

always @ (*) begin
    if (cnt_timer_sh == i_sh_int_time) // 2Mhz时钟计10us需要20次振荡
        cnt_timer_sh_n = 16'd0;
    else
        cnt_timer_sh_n = cnt_timer_sh + 16'd1;
end

always @ (*) begin
    if (cnt_timer_icg == 20'd0)
        tcd1304_icg_n = 1'b0;
    else if (cnt_timer_icg == 20'd20)   //icg低电平持续时间为10us
        tcd1304_icg_n = 1'b1;
    else
        tcd1304_icg_n = tcd1304_icg;
end

always @ (*) begin
    if (cnt_timer_sh == 16'd0)
        tcd1304_sh_n = 1'b0;
    else if (cnt_timer_sh == 16'd1)
        tcd1304_sh_n = 1'b1;
    else if (cnt_timer_sh == 16'd7)   //2Mhz时钟保持4us需要8次振荡
        tcd1304_sh_n = 1'b0;
    else
        tcd1304_sh_n = tcd1304_sh;
end

always @ (*) begin
    if (cnt_timer_icg >=20'd20 && (cnt_timer_icg < 20'd20 + (CCD_ELEMENT_COUNTS << 2'd2)) && cnt_timer_icg % 16'd4 == 16'd0)
        cd1304_os_trigger_n = 1'b1;
    else
        cd1304_os_trigger_n = 1'b0;
end

assign  op_tcd1304_phim = i_clk;
assign  op_tcd1304_icg = tcd1304_icg;
assign  op_tcd1304_sh = tcd1304_sh;
assign  o_tcd1304_os_trigger = cd1304_os_trigger;

endmodule
*/

module TCD1304
#(
    parameter CCD_ELEMENT_COUNTS = 16'd3694  // CCD像素数量
)
(
    input       wire                i_clk,                  // 输入时钟信号
    input       wire                ip_rst_,                // 异步复位信号，低电平有效
    input       wire    [15:0]      i_sh_int_time,          // 积分时间设置
    output      wire                op_phim,                // 主时钟输出
    output      wire                op_icg,                 // 积分清除门控信号
    output      wire                op_sh,                  // 移位门控信号
    output      wire                o_os_trigger            // 输出采样触发信号
);
    
// 计算ICG读取周期，取2000和4倍像素数中的较大值
localparam ICG_READOUT_PERIOD  = (20'd2000 > (CCD_ELEMENT_COUNTS << 2'd2)) ? 
                                 20'd2000 : (CCD_ELEMENT_COUNTS << 2'd2);

// 寄存器定义
reg     [19:0]      cnt_timer_icg;       // ICG定时器计数器
reg     [19:0]      cnt_timer_icg_n;     // ICG定时器计数器下一个状态
reg     [15:0]      cnt_timer_sh;        // SH定时器计数器
reg     [15:0]      cnt_timer_sh_n;      // SH定时器计数器下一个状态
reg     [15:0]      cnt_timer_os;        // OS定时器计数器（预留）
reg     [15:0]      cnt_timer_os_n;      // OS定时器计数器下一个状态（预留）
reg     [15:0]      cnt_os_trigger;      // 输出触发计数器（预留）
reg     [15:0]      cnt_os_trigger_n;    // 输出触发计数器下一个状态（预留）
reg                 icg;                 // 积分清除门控信号寄存器
reg                 icg_n;               // 积分清除门控信号下一个状态
reg                 sh;                  // 移位门控信号寄存器
reg                 sh_n;                // 移位门控信号下一个状态
reg                 os_trigger;          // 输出采样触发信号寄存器
reg                 os_trigger_n;        // 输出采样触发信号下一个状态

// 初始化块，设置寄存器初始值
initial begin
    cnt_timer_icg = 20'd0;
    cnt_timer_sh = 16'd0;
    cnt_timer_os = 16'd0;
    icg = 1'b1;           // ICG初始为高电平
    sh = 1'b0;            // SH初始为低电平
    cnt_os_trigger = 16'd0;
end

// 时序逻辑：在时钟下降沿或复位时更新寄存器状态
always @ (negedge i_clk or negedge ip_rst_) begin
    if (ip_rst_ == 1'b0) begin  // 复位状态
        cnt_timer_icg <= 20'd0;
        cnt_timer_sh <= 16'd0;
        cnt_timer_os <= 16'd0;
        icg <= 1'b1;
        sh <= 1'b0;
        os_trigger <= 1'b0;
        cnt_os_trigger <= 16'd0;
    end
    else begin  // 正常工作状态，更新为下一个状态
        cnt_timer_icg <= cnt_timer_icg_n;
        cnt_timer_sh <= cnt_timer_sh_n;
        cnt_timer_os <= cnt_timer_os_n;
        icg <= icg_n;
        sh <= sh_n;
        os_trigger <= os_trigger_n;
        cnt_os_trigger <= cnt_os_trigger_n;    
    end
end

// 组合逻辑：ICG定时器计数控制
always @ (*) begin
    // 当ICG计数达到周期值且SH计数达到设定积分时间时，重置计数器
    if (cnt_timer_icg >= 16'd20 + ICG_READOUT_PERIOD - 1'd1 && cnt_timer_sh == i_sh_int_time)
        cnt_timer_icg_n = 20'd0;
    else
        cnt_timer_icg_n = cnt_timer_icg + 20'd1;  // 否则计数器加1
end

// 组合逻辑：SH定时器计数控制
always @ (*) begin
    // 当SH计数达到设定的积分时间时，重置计数器
    if (cnt_timer_sh == i_sh_int_time)
        cnt_timer_sh_n = 16'd0;
    else
        cnt_timer_sh_n = cnt_timer_sh + 16'd1;  // 否则计数器加1
end

// 组合逻辑：ICG信号生成
always @ (*) begin
    if (cnt_timer_icg == 20'd0)
        icg_n = 1'b0;  // 计数器为0时，ICG置低
    else if (cnt_timer_icg == 20'd20)
        icg_n = 1'b1;  // 计数到20时，ICG置高（低电平持续10us）
    else
        icg_n = icg;   // 保持当前状态
end

// 组合逻辑：SH信号生成
always @ (*) begin
    if (cnt_timer_sh == 16'd0)
        sh_n = 1'b0;  // SH计数器为0时，SH置低
    else if (cnt_timer_sh == 16'd1)
        sh_n = 1'b1;  // 计数到1时，SH置高
    else if (cnt_timer_sh == 16'd7)
        sh_n = 1'b0;  // 计数到7时，SH置低（高电平持续3us）
    else
        sh_n = sh;    // 保持当前状态
end

// 组合逻辑：输出采样触发信号生成
always @ (*) begin
    // 在ICG计数20之后，且在有效读取周期内，每4个时钟周期生成一个触发脉冲
    if (cnt_timer_icg >= 20'd20 && (cnt_timer_icg < 20'd20 + (CCD_ELEMENT_COUNTS << 2'd2)) && cnt_timer_icg % 16'd4 == 16'd0)
        os_trigger_n = 1'b1;
    else
        os_trigger_n = 1'b0;
end

// 输出信号赋值
assign  op_phim = ~i_clk;               // 主时钟直接输出
assign  op_icg = ~icg;                  // 积分清除门控信号输出
assign  op_sh = ~sh;                    // 移位门控信号输出
assign  o_os_trigger = os_trigger;     // 输出采样触发信号

endmodule
