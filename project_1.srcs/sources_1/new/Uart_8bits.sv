`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/06 00:00:32
// Design Name: 
// Module Name: Uart_8bits
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


module Uart_8bits #(
    parameter CLK_FREQ    = 50_000_000,  // 时钟频率
    parameter BAUD_RATE   = 115200,      // 波特率
    parameter DATA_BITS   = 8,           // 数据位宽度
    parameter STOP_BITS   = 1,           // 停止位数量
    parameter PARITY_EN   = 0,           // 校验位使能(0:禁用,1:启用)
    parameter PARITY_TYPE = 0            // 校验类型(0:奇校验,1:偶校验)
)(
    input                   i_clk,        // 系统时钟
    input                   i_rst_n,      // 异步复位(低有效)
    // 接收接口
    input                   i_rx,         // 串口接收数据
    output reg [DATA_BITS-1:0] o_rx_data,  // 接收数据输出
    output reg              o_rx_done,    // 接收完成标志
    output reg              o_rx_err,     // 接收错误标志
    // 发送接口
    input [DATA_BITS-1:0]   i_tx_data,    // 发送数据
    input                   i_trig,       // 发送触发信号
    output reg              o_tx,         // 串口发送数据
    output reg              o_tx_busy,    // 发送忙标志
    output reg              o_tx_done     // 发送完成标志
);

// 计算波特率分频系数
localparam BAUD_DIV = CLK_FREQ / BAUD_RATE;
localparam BAUD_CNT_WIDTH = $clog2(BAUD_DIV);

// 接收状态机定义
localparam RX_IDLE      = 3'd0,  // 空闲状态
           RX_START     = 3'd1,  // 起始位状态
           RX_DATA      = 3'd2,  // 数据位状态
           RX_PARITY    = 3'd3,  // 校验位状态
           RX_STOP      = 3'd4;  // 停止位状态

// 发送状态机定义
localparam TX_IDLE      = 3'd0,  // 空闲状态
           TX_START     = 3'd1,  // 起始位状态
           TX_DATA      = 3'd2,  // 数据位状态
           TX_PARITY    = 3'd3,  // 校验位状态
           TX_STOP      = 3'd4;  // 停止位状态

// 接收状态机变量
reg [2:0]                   rx_state;
reg [BAUD_CNT_WIDTH-1:0]    rx_baud_cnt;
reg [2:0]                   rx_bit_cnt;
reg [DATA_BITS-1:0]         rx_data_reg;
reg                         rx_parity;

// 发送状态机变量
reg [2:0]                   tx_state;
reg [BAUD_CNT_WIDTH-1:0]    tx_baud_cnt;
reg [2:0]                   tx_bit_cnt;
reg [DATA_BITS-1:0]         tx_data_reg;
reg                         tx_parity;

// 接收状态机逻辑
always @(posedge i_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
        rx_state    <= RX_IDLE;
        rx_baud_cnt <= 0;
        rx_bit_cnt  <= 0;
        rx_data_reg <= 0;
        rx_parity   <= 0;
        o_rx_data   <= 0;
        o_rx_done   <= 0;
        o_rx_err    <= 0;
    end else begin
        o_rx_done <= 0;
        o_rx_err  <= 0;
        
        case (rx_state)
            RX_IDLE: begin
                if (!i_rx) begin  // 检测到起始位(低电平)
                    rx_baud_cnt <= 0;
                    rx_state    <= RX_START;
                end
            end
            
            RX_START: begin
                if (rx_baud_cnt == BAUD_DIV / 2 - 1) begin  // 中点采样
                    rx_baud_cnt <= 0;
                    if (!i_rx) begin  // 确认起始位
                        rx_state <= RX_DATA;
                        rx_bit_cnt <= 0;
                        rx_parity <= 0;
                    end else begin  // 虚假起始位，回到空闲
                        rx_state <= RX_IDLE;
                    end
                end else begin
                    rx_baud_cnt <= rx_baud_cnt + 1;
                end
            end
            
            RX_DATA: begin
                if (rx_baud_cnt == BAUD_DIV - 1) begin
                    rx_baud_cnt <= 0;
                    rx_data_reg[rx_bit_cnt] <= i_rx;
                    rx_parity <= rx_parity ^ i_rx;  // 计算校验位
                    
                    if (rx_bit_cnt == DATA_BITS - 1) begin
                        if (PARITY_EN) begin
                            rx_state <= RX_PARITY;
                        end else begin
                            rx_state <= RX_STOP;
                        end
                    end else begin
                        rx_bit_cnt <= rx_bit_cnt + 1;
                    end
                end else begin
                    rx_baud_cnt <= rx_baud_cnt + 1;
                end
            end
            
            RX_PARITY: begin
                if (rx_baud_cnt == BAUD_DIV - 1) begin
                    rx_baud_cnt <= 0;
                    rx_state <= RX_STOP;
                    
                    // 校验位错误检测
                    if ((PARITY_TYPE == 0 && i_rx != ~rx_parity) ||  // 奇校验
                        (PARITY_TYPE == 1 && i_rx != rx_parity)) begin  // 偶校验
                        o_rx_err <= 1;
                    end
                end else begin
                    rx_baud_cnt <= rx_baud_cnt + 1;
                end
            end
            
            RX_STOP: begin
                if (rx_baud_cnt == BAUD_DIV - 1) begin
                    rx_baud_cnt <= 0;
                    rx_bit_cnt <= 0;
                    rx_state <= RX_IDLE;
                    
                    if (i_rx) begin  // 停止位正确(高电平)
                        o_rx_data <= rx_data_reg;
                        o_rx_done <= 1;
                    end else begin  // 停止位错误
                        o_rx_err <= 1;
                    end
                end else begin
                    rx_baud_cnt <= rx_baud_cnt + 1;
                end
            end
            
            default: rx_state <= RX_IDLE;
        endcase
    end
end

// 发送状态机逻辑（仅发送单字节）
always @(posedge i_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
        tx_state    <= TX_IDLE;
        tx_baud_cnt <= 0;
        tx_bit_cnt  <= 0;
        tx_data_reg <= 0;
        tx_parity   <= 0;
        o_tx        <= 1;  // 空闲时为高电平
        o_tx_busy   <= 0;
        o_tx_done   <= 0;
    end else begin
        o_tx_done <= 0;
        
        case (tx_state)
            TX_IDLE: begin
                o_tx <= 1;  // 空闲状态为高电平
                if (i_trig && !o_tx_busy) begin  // 检测到触发信号且不忙
                    o_tx_busy   <= 1;
                    tx_data_reg <= i_tx_data;  // 仅加载单字节数据
                    tx_baud_cnt <= 0;
                    tx_state    <= TX_START;
                end else begin
                    o_tx_busy <= 0;
                end
            end
            
            TX_START: begin
                o_tx <= 0;  // 起始位(低电平)
                if (tx_baud_cnt == BAUD_DIV - 1) begin
                    tx_baud_cnt <= 0;
                    tx_bit_cnt  <= 0;
                    tx_parity   <= 0;
                    tx_state    <= TX_DATA;
                end else begin
                    tx_baud_cnt <= tx_baud_cnt + 1;
                end
            end
            
            TX_DATA: begin
                o_tx <= tx_data_reg[tx_bit_cnt];  // 发送数据位
                if (tx_baud_cnt == BAUD_DIV - 1) begin
                    tx_baud_cnt <= 0;
                    tx_parity <= tx_parity ^ tx_data_reg[tx_bit_cnt];  // 计算校验位
                    
                    if (tx_bit_cnt == DATA_BITS - 1) begin
                        if (PARITY_EN) begin
                            tx_state <= TX_PARITY;
                        end else begin
                            tx_state <= TX_STOP;
                        end
                    end else begin
                        tx_bit_cnt <= tx_bit_cnt + 1;
                    end
                end else begin
                    tx_baud_cnt <= tx_baud_cnt + 1;
                end
            end
            
            TX_PARITY: begin
                // 发送校验位
                o_tx <= (PARITY_TYPE == 0) ? ~tx_parity : tx_parity;
                if (tx_baud_cnt == BAUD_DIV - 1) begin
                    tx_baud_cnt <= 0;
                    tx_state    <= TX_STOP;
                end else begin
                    tx_baud_cnt <= tx_baud_cnt + 1;
                end
            end
            
            TX_STOP: begin
                o_tx <= 1;  // 停止位(高电平)
                if (tx_baud_cnt == BAUD_DIV - 1) begin
                    tx_baud_cnt <= 0;
                    tx_state    <= TX_IDLE;
                    o_tx_done   <= 1;
                    o_tx_busy   <= 0;  // 单字节发送完成
                end else begin
                    tx_baud_cnt <= tx_baud_cnt + 1;
                end
            end
            
            default: tx_state <= TX_IDLE;
        endcase
    end
end

endmodule