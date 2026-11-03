`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/09/24 18:30:38
// Design Name: 
// Module Name: FrequencyDivision
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



module FrequencyDivision(
	//输入端口
	input      wire                ip_clk,
	input      wire                ip_rst_,
	//输出端口
	output     wire                o_clk_2MHz,   
	output     wire                o_clk_500KHz    
);

parameter   SET_TIME1 = 16'd25;
parameter   SET_TIME2 = 16'd100;

reg                         [15:0]      cnt_timer1;			//计数器
reg                         [15:0]      cnt_timer2;			//计数器
reg                                     clk_2MHz;
reg                                     clk_500KHz;
//---------------------------------------------------------------------------
//--	逻辑功能实现
//---------------------------------------------------------------------------

//时序电路,用来给time_cnt寄存器赋值
always @ (posedge ip_clk or negedge ip_rst_)
begin
	if(ip_rst_ == 1'b0)	begin							//判断复位
		cnt_timer1 <= 1'd0;					//初始化time_cnt值
		clk_2MHz <= 1'd0;
    end
	else if (cnt_timer1 == SET_TIME1 - 1'd1) begin
	   cnt_timer1 <= 1'd0;
	   clk_2MHz <= ~clk_2MHz;
	end
	else begin
		cnt_timer1 <= cnt_timer1 + 1'd1;			    //用来给time_cnt赋值
		clk_2MHz <= clk_2MHz;

    end
end


always @ (posedge ip_clk or negedge ip_rst_)
begin
	if(ip_rst_ == 1'b0)	begin							//判断复位
		cnt_timer2 <= 1'd0;					//初始化time_cnt值
		clk_500KHz <= 1'd0;
    end
	else if (cnt_timer2 == SET_TIME2 - 1'd1) begin
	   cnt_timer2 <= 1'd0;
	   clk_500KHz <= ~clk_500KHz;
	end
	else begin
		cnt_timer2 <= cnt_timer2 + 1'd1;			    //用来给time_cnt赋值
		clk_500KHz <= clk_500KHz;
    end
end

assign o_clk_2MHz = clk_2MHz;
assign o_clk_500KHz = clk_500KHz;

endmodule

