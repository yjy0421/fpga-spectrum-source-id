`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/23 22:19:56
// Design Name: 
// Module Name: UartInputDataProcessing
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
module UartInputDataProcessing
(
	//输入端口
	input                          ipClk,
	input                          ipRst_,
	input              [ 7:0]      iOutRxData,
	input                          iRxBpsEn,
	//输出端口
	output   reg       [15:0]      o_sh_int_time,
	output   reg       [ 7:0]      o_num_avg
);
//---------------------------------------------------------------------------
//--	内部端口声明
//---------------------------------------------------------------------------
reg                         [ 1:0]      detectEdge;
wire                        [ 1:0]      detectEdge_n;
reg                                     negedgeReg;
wire                                    negedgeReg_n;
reg                         [55:0]      dataFromUart;
reg                         [55:0]      dataFromUart_n;

//---------------------------------------------------------------------------
//--	逻辑功能实现
//---------------------------------------------------------------------------

//时序电路,用来给detectEdge寄存器赋值
always @ (posedge ipClk or negedge ipRst_)
begin
	if(ipRst_ == 1'b0)									//判断复位
		detectEdge	<= 2'b11;				//初始化detectEdge值
	else
		detectEdge <= detectEdge_n;		//用来给detectEdge赋值
end
//组合电路,用来接收iRxBpsEn信号
assign detectEdge_n = {detectEdge[0], iRxBpsEn};	

//时序电路,用来给negedgeReg寄存器赋值
always @ (posedge ipClk or negedge ipRst_)
begin
	if(ipRst_ == 1'b0)									//判断复位
		negedgeReg <= 1'b0;					//初始化negedgeReg值
	else
		negedgeReg <= negedgeReg_n;		//用来给negedgeReg赋值
end
//组合电路,判断下降沿,如果下降沿到来,negedgeReg_n就为1
assign negedgeReg_n = (detectEdge == 2'b10) ? 1'b1 : 1'b0; 

always @ (posedge ipClk or negedge ipRst_)
begin
    if (ipRst_ == 1'b0)
        dataFromUart <= 1'd0; //72'd0;
    else
        dataFromUart <= dataFromUart_n;
end
always @ (*)
begin
	if (negedgeReg == 1'b1)
//	if (iRxBpsEn == 1'b1)
		dataFromUart_n = {dataFromUart[47:0],iOutRxData};
	else
		dataFromUart_n = dataFromUart;
end

always @ (posedge ipClk or negedge ipRst_)
begin
	if(!ipRst_)								//判断复位
	begin
	   o_sh_int_time <= 16'd20;
	   o_num_avg <= 8'd100;					//初始化time_cnt值
	end	
    else if (dataFromUart[55:24] == 32'hFEFE_FEFE && dataFromUart_n[55:24] != 32'hFEFE_FEFE)
	begin
	   o_sh_int_time <= dataFromUart[23:8];//[15:0];
	   o_num_avg <= dataFromUart[7:0];//[7:0];
	end
	else
	begin
	   o_sh_int_time <= o_sh_int_time;
	   o_num_avg <= o_num_avg; 
    end
end	

endmodule
*/
module UartInputDataProcessing
(
	//输入端口
	input                          ip_clk,             // 输入时钟
	input                          ip_rst_,            // 输入复位，低电平有效
	input              [ 7:0]      i_rx_data,          // 接收的串口数据
	input                          i_rx_done,          // 串口接收完成信号
	//输出端口
	output   reg       [15:0]      o_sh_int_time,      // 输出的采样间隔时间
	output   reg       [ 7:0]      o_num_avg           // 输出的平均次数
);
//---------------------------------------------------------------------------
//--	内部端口声明
//---------------------------------------------------------------------------
reg                         [ 1:0]      detect_edge_reg;    // 边缘检测寄存器
reg                                     negedge_flag;      // 下降沿标志
reg                         [55:0]      uart_rx_data_reg;   // 串口接收数据寄存器

//---------------------------------------------------------------------------
//--	合并后的时序逻辑（包含原组合逻辑计算）
//---------------------------------------------------------------------------
always @ (posedge ip_clk or negedge ip_rst_)
begin
	if(ip_rst_ == 1'b0) begin
		// 复位状态初始化所有寄存器
		detect_edge_reg	<= 2'b11;
		negedge_flag   <= 1'b0;
		uart_rx_data_reg <= 1'd0;
		o_sh_int_time   <= 16'd20;
		o_num_avg       <= 8'd100;
	end
	else begin
		// 1. 计算边缘检测寄存器的下一个值并更新
		detect_edge_reg <= {detect_edge_reg[0], i_rx_done};
		
		// 2. 计算下降沿标志的下一个值并更新（检测到i_rx_done的下降沿）
		negedge_flag <= (detect_edge_reg == 2'b10) ? 1'b1 : 1'b0;
		
		// 3. 串口接收数据寄存器更新
		if (negedge_flag == 1'b1) begin
			uart_rx_data_reg <= {uart_rx_data_reg[47:0], i_rx_data};
		end
		else begin
			uart_rx_data_reg <= uart_rx_data_reg;
		end
		
		// 4. 输出信号更新
		if (uart_rx_data_reg[55:24] == 32'hFEFE_FEFE) begin
			o_sh_int_time <= uart_rx_data_reg[23:8];
			o_num_avg     <= uart_rx_data_reg[7:0];
		end
		else begin
			o_sh_int_time <= o_sh_int_time;
			o_num_avg     <= o_num_avg;
		end
	end
end

endmodule
    

