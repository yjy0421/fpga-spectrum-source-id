`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/06 00:43:15
// Design Name: 
// Module Name: Uart_data_ready
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

module Uart_data_ready
#(
    parameter       NUM_OF_CHANNEL = 8'd90  // 通道总数
)
(
    input                       ipClk,          // 系统时钟，与Uart_8bits同源
    input                       ipRst_,         // 异步复位(低有效)
    input                       i_start_pulse,  // 开始发送脉冲信号(高有效，单周期)
    // 与Uart_8bits的交互接口
    input                       i_uart_busy,    // 来自Uart_8bits的发送忙标志(o_tx_busy)
    input                       i_uart_done,    // 来自Uart_8bits的发送完成标志(o_tx_done)
    output reg                  o_uart_trig,    // 触发Uart_8bits发送的信号(i_trig)
    output reg [7:0]            o_uart_data,    // 发送给Uart_8bits的数据(i_tx_data)
    // 外部数据输入接口
    input [15:0]                i_data,         // 待发送的16位原始数据
    output reg [15:0]           o_ordinal,      // 当前发送的通道序号
    output reg                  o_transmitting  // 正在发送标志
); 

// 状态定义：控制16位数据拆分发送流程
localparam S_IDLE        = 4'd0,  // 空闲状态，等待开始脉冲
           S_START       = 4'd1,  // 接收到开始脉冲，准备发送
           S_SEND_LOW    = 4'd2,  // 发送低8位数据
           S_WAIT_LOW    = 4'd3,  // 等待低8位发送完成
           S_SEND_HIGH   = 4'd4,  // 发送高8位数据
           S_WAIT_HIGH   = 4'd5;  // 等待高8位发送完成

// 内部寄存器
reg [3:0]      state;               // 状态机寄存器
reg [15:0]     data_buf;            // 缓存当前通道的16位数据
reg            uart_done_dly;       // 打拍同步i_uart_done，用于边沿检测
reg            start_pulse_dly;     // 打拍同步开始脉冲，用于边沿检测

// 同步i_uart_done并检测上升沿（发送完成瞬间）
always @(posedge ipClk or negedge ipRst_) begin
    if (!ipRst_) begin
        uart_done_dly <= 1'b0;
    end else begin
        uart_done_dly <= i_uart_done;
    end
end
wire uart_done_posedge = i_uart_done && !uart_done_dly;  // i_uart_done上升沿检测

// 检测开始脉冲的上升沿
always @(posedge ipClk or negedge ipRst_) begin
    if (!ipRst_) begin
        start_pulse_dly <= 1'b0;
    end else begin
        start_pulse_dly <= i_start_pulse;
    end
end
wire start_pulse_posedge = i_start_pulse && !start_pulse_dly;  // 开始脉冲上升沿

// 一段式状态机：状态更新与输出控制合并
always @(posedge ipClk or negedge ipRst_) begin
    if (!ipRst_) begin
        // 复位状态初始化
        state <= S_IDLE;
        data_buf <= 16'd0;
        o_ordinal <= 16'd0;
        o_uart_data <= 8'd0;
        o_uart_trig <= 1'b0;
        o_transmitting <= 1'b0;
    end else begin
        // 默认值设置（避免 latch）
        o_uart_trig <= 1'b0;  // 触发信号默认低电平（脉冲式）
        o_transmitting <= (state != S_IDLE);  // 非空闲状态即为发送中
        
        case (state)
            S_IDLE: begin
                // 空闲状态：等待开始脉冲
                if (start_pulse_posedge) begin
                    state <= S_START;
                    o_ordinal <= 16'd0;  // 开始新的发送序列，序号复位
                end else begin
                    state <= S_IDLE;
                end
            end
            
            S_START: begin
                // 准备状态：UART不忙时进入低8位发送
                if (!i_uart_busy) begin
                    state <= S_SEND_LOW;
                    // 缓存当前通道数据（首通道）
                    data_buf <= i_data;
                end else begin
                    state <= S_START;
                end
            end
            
            S_SEND_LOW: begin
                // 发送低8位数据
                o_uart_data <= data_buf[7:0];
                o_uart_trig <= 1'b1;  // 产生触发脉冲
                state <= S_WAIT_LOW;  // 进入等待状态
            end
            
            S_WAIT_LOW: begin
                // 等待低8位发送完成
                if (uart_done_posedge) begin
                    state <= S_SEND_HIGH;  // 完成后进入高8位发送
                end else begin
                    state <= S_WAIT_LOW;
                end
            end
            
            S_SEND_HIGH: begin
                // 发送高8位数据
                o_uart_data <= data_buf[15:8];
                o_uart_trig <= 1'b1;  // 产生触发脉冲
                state <= S_WAIT_HIGH;  // 进入等待状态
            end
            
            S_WAIT_HIGH: begin
                // 等待高8位发送完成
                if (uart_done_posedge) begin
                    // 判断是否发送完所有通道
                    if (o_ordinal >= NUM_OF_CHANNEL) begin
                        state <= S_IDLE;  // 所有通道完成，回到空闲
                        // 最后一个通道发送结束标志(0xFFFF)已在data_buf中处理
                    end else begin
                        // 继续发送下一个通道
                        state <= S_SEND_LOW;
                        o_ordinal <= o_ordinal + 16'd1;  // 通道序号+1
                        // 缓存下一通道数据（特殊处理最后一个通道的结束标志）
                        //data_buf <= (o_ordinal == NUM_OF_CHANNEL) ? 16'hFFFF : i_data;
                        data_buf <= i_data;
                    end
                end else begin
                    state <= S_WAIT_HIGH;
                 //   data_buf <= (o_ordinal == NUM_OF_CHANNEL)? 16'hFFFF : data_buf;
                end
            end
            
            default: begin
                state <= S_IDLE;  // 异常状态回归空闲
            end
        endcase
    end
end

endmodule


/*
module Uart_data_ready
#(
    parameter       NUM_OF_CHANNEL = 8'd90  // 通道总数
)
(
    input                       ipClk,          // 系统时钟，与Uart_8bits同源
    input                       ipRst_,         // 异步复位(低有效)
    input                       i_start_pulse,  // 开始发送脉冲信号(高有效，单周期)
    // 与Uart_8bits的交互接口
    input                       i_uart_busy,    // 来自Uart_8bits的发送忙标志(o_tx_busy)
    input                       i_uart_done,    // 来自Uart_8bits的发送完成标志(o_tx_done)
    output reg                  o_uart_trig,    // 触发Uart_8bits发送的信号(i_trig)
    output reg [7:0]            o_uart_data,    // 发送给Uart_8bits的数据(i_tx_data)
    // 外部数据输入接口
    input [15:0]                i_data,         // 待发送的16位原始数据
    output reg [15:0]           o_ordinal,      // 当前发送的通道序号
    output reg                  o_transmitting  // 正在发送标志
); 

// 状态定义：控制16位数据拆分发送流程
localparam S_IDLE        = 4'd0,  // 空闲状态，等待开始脉冲
           S_START       = 4'd1,  // 接收到开始脉冲，准备发送
           S_SEND_LOW    = 4'd2,  // 发送低8位数据
           S_WAIT_LOW    = 4'd3,  // 等待低8位发送完成
           S_SEND_HIGH   = 4'd4,  // 发送高8位数据
           S_WAIT_HIGH   = 4'd5;  // 等待高8位发送完成

// 内部寄存器
reg [3:0]      state;               // 状态机寄存器
reg [3:0]      state_n;             // 状态机下一状态
reg [15:0]     data_buf;            // 缓存当前通道的16位数据
reg [15:0]     o_ordinal_n;         // 通道序号下一状态
reg            uart_done_dly;       // 打拍同步i_uart_done，用于边沿检测
reg            start_pulse_dly;     // 打拍同步开始脉冲，用于边沿检测
reg            sending_group;       // 正在发送一组数据的标志

// 同步i_uart_done并检测上升沿（发送完成瞬间）
always @(posedge ipClk or negedge ipRst_) begin
    if (!ipRst_) begin
        uart_done_dly <= 1'b0;
    end else begin
        uart_done_dly <= i_uart_done;
    end
end
wire uart_done_posedge = i_uart_done && !uart_done_dly;  // i_uart_done上升沿检测

// 检测开始脉冲的上升沿
always @(posedge ipClk or negedge ipRst_) begin
    if (!ipRst_) begin
        start_pulse_dly <= 1'b0;
    end else begin
        start_pulse_dly <= i_start_pulse;
    end
end
wire start_pulse_posedge = i_start_pulse && !start_pulse_dly;  // 开始脉冲上升沿

// 通道序号更新逻辑
always @(*) begin
    case (state)
        // 当高8位发送完成后，更新通道序号
        S_WAIT_HIGH: begin
            if (uart_done_posedge) begin
                if (o_ordinal >= NUM_OF_CHANNEL) begin
                    o_ordinal_n = 16'd0;  // 达到最大通道，复位为0
                end else begin
                    o_ordinal_n = o_ordinal + 16'd1;  // 切换到下一通道
                end
            end else begin
                o_ordinal_n = o_ordinal;  // 未完成时保持当前序号
            end
        end
        default: o_ordinal_n = o_ordinal;  // 其他状态保持序号
    endcase
end

// 状态机下一状态逻辑
always @(*) begin
    case (state)
        S_IDLE: begin
            // 空闲状态：检测到开始脉冲则进入准备状态
            if (start_pulse_posedge) begin
                state_n = S_START;
            end else begin
                state_n = S_IDLE;
            end
        end
        S_START: begin
            // 准备状态：UART不忙时，进入低8位发送状态
            if (!i_uart_busy) begin
                state_n = S_SEND_LOW;
            end else begin
                state_n = S_START;
            end
        end
        S_SEND_LOW: begin
            // 触发低8位发送后，进入等待状态
            state_n = S_WAIT_LOW;
        end
        S_WAIT_LOW: begin
            // 低8位发送完成后，进入高8位发送状态
            if (uart_done_posedge) begin
                state_n = S_SEND_HIGH;
            end else begin
                state_n = S_WAIT_LOW;
            end
        end
        S_SEND_HIGH: begin
            // 触发高8位发送后，进入等待状态
            state_n = S_WAIT_HIGH;
        end
        S_WAIT_HIGH: begin
            // 高8位发送完成后，判断是否继续发送
            if (uart_done_posedge) begin
                // 如果已发送完所有通道，回到空闲状态
                if (o_ordinal >= NUM_OF_CHANNEL) begin
                    state_n = S_IDLE;
                end else begin
                    // 否则继续发送下一个通道
                    state_n = S_SEND_LOW;
                end
            end else begin
                state_n = S_WAIT_HIGH;
            end
        end
        default: state_n = S_IDLE;
    endcase
end

// 发送组标志控制
always @(*) begin
    if (state == S_IDLE) begin
        sending_group = 1'b0;
    end else begin
        sending_group = 1'b1;
    end
end

// 数据缓存逻辑（在开始状态更新当前通道数据）
always @(posedge ipClk or negedge ipRst_) begin
    if (!ipRst_) begin
        data_buf <= 16'd0;
    end else begin
       // if (state == S_START || (state == S_WAIT_HIGH && uart_done_posedge && o_ordinal < NUM_OF_CHANNEL)) begin
        if (state == S_START || (state == S_SEND_LOW && state_n == S_WAIT_LOW && o_ordinal <= NUM_OF_CHANNEL)) begin
            // 特殊处理：最后一个通道发送结束标志(0xFFFF)
            data_buf <= (o_ordinal == NUM_OF_CHANNEL) ? 16'hFFFF : i_data;
        end
    end
end

// 输出信号控制（发送数据和触发信号）
always @(posedge ipClk or negedge ipRst_) begin
    if (!ipRst_) begin
        o_uart_data <= 8'd0;
        o_uart_trig <= 1'b0;
        state <= S_IDLE;
        o_ordinal <= 16'd0;
        o_transmitting <= 1'b0;
    end else begin
        state <= state_n;
        o_ordinal <= o_ordinal_n;
        o_uart_trig <= 1'b0;  // 默认拉低触发信号（脉冲式）
        o_transmitting <= sending_group;  // 正在发送标志
        
        case (state)
            S_SEND_LOW: begin
                // 发送低8位：输出低8位数据，产生触发脉冲
                o_uart_data <= data_buf[7:0];
                o_uart_trig <= 1'b1;  // 触发Uart_8bits发送
            end
            S_SEND_HIGH: begin
                // 发送高8位：输出高8位数据，产生触发脉冲
                o_uart_data <= data_buf[15:8];
                o_uart_trig <= 1'b1;  // 触发Uart_8bits发送
            end
            default: begin
                o_uart_data <= o_uart_data;  // 其他状态保持数据不变
            end
        endcase
    end
end


endmodule
*/