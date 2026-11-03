`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/02 17:02:53
// Design Name: 
// Module Name: delay_beats
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

module delay_beats #(
    parameter DELAY_NUM = 2,  // ÑÓ³ÙÅÄÊý
    parameter DATA_WIDTH = 8  // ÐÅºÅÎ»¿í
)(
    input                       i_clk,
    input                       i_rst_,
    input      [DATA_WIDTH-1:0] din,
    output reg [DATA_WIDTH-1:0] dout
);

reg [DATA_WIDTH-1:0] delay_reg [0:DELAY_NUM-1];

always @(posedge i_clk or negedge i_rst_) begin
    if (i_rst_ == 1'b0) begin
        delay_reg[1] <= 1'd0;
        dout <= 1'd0;
    end else if (DELAY_NUM != 1'b1) begin
        delay_reg[1] <= din;
        dout <= delay_reg[DELAY_NUM-1];
    end else begin
        dout <= din;
    end
end

generate
    genvar i;
    for (i = 2; i < DELAY_NUM; i = i + 1) begin : delay_chain
        always @(posedge i_clk or negedge i_rst_) begin
            if(i_rst_ == 1'b0) begin
                delay_reg[i] <= 1'd0;
            end else begin
                delay_reg[i] <= delay_reg[i-1];
            end
        end
    end
    endgenerate
endmodule

