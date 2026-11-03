`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/09/24 15:52:24
// Design Name: 
// Module Name: Adc_xilinx
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



module Adc_xilinx(
    input       wire            ip_clk,
    input       wire            ip_rst_,
    input       wire            ip_vauxp0,      
    input       wire            ip_vauxn0, 
    input       wire            i_conv_start,
    output      wire   [15:0]   o_data_out,
    output      wire            o_eoc_broadened_delay    
);

wire    conv_start;
delay_beats #(
    .DELAY_NUM (150),  // 延迟拍数
    .DATA_WIDTH (8)  // 信号位宽
)delay_beats_inst1(
    .i_clk          (ip_clk),
    .i_rst_         (ip_rst_),
    .din            (i_conv_start),
    .dout           (conv_start)
);


//xadc
wire                    [ 4:0]      channel;
wire                                endOfConversion;
wire                    [15:0]      outputDataOfAD; 
reg                                 endOfConversionReg;

xadc_wiz_0       Xadc_inst(
   .convst_in              (i_conv_start),           // Convert Start Input
   .daddr_in               ({2'b00, channel}),            // Address bus for the dynamic reconfiguration port
   .dclk_in                (ip_clk),             // Clock input for the dynamic reconfiguration port
   .den_in                 (endOfConversion),              // Enable Signal for the dynamic reconfiguration port
   .di_in                  (),               // Input data bus for the dynamic reconfiguration port
   .dwe_in                 (),              // Write Enable for the dynamic reconfiguration port
   .reset_in               (~ip_rst_),            // Reset signal for the System Monitor control logic
   .vauxp0                 (ip_vauxp0),// Auxiliary channel 0
   .vauxn0                 (ip_vauxn0),    
   .busy_out               (),            // ADC Busy signal
   .channel_out            (channel),         // Channel Selection Outputs
   .do_out                 (o_data_out),              // Output data bus for dynamic reconfiguration port
   .drdy_out               (),            // Data ready signal for the dynamic reconfiguration port
   .eoc_out                (endOfConversion),             // End of Conversion Signal
   .eos_out                (),             // End of Sequence Signal
   .ot_out                 (),              // Over-Temperature alarm output
   .vccaux_alarm_out       (),    // VCCAUX-sensor alarm output
   .vccint_alarm_out       (),    //  VCCINT-sensor alarm output
   .user_temp_alarm_out    (), // Temperature-sensor alarm output
   .alarm_out              (),           // OR'ed output of all the Alarms    
   .vp_in                  (),               // Dedicated Analog Input Pair
   .vn_in                  ()
   );

reg                 end_of_conversion;
reg                 end_of_conversion_n;
reg        [ 7:0]   cnt_timer;
reg        [ 7:0]   cnt_timer_n;
reg                 eoc_broadened;
reg                 eoc_broadened_n; 

always @ (posedge ip_clk or negedge ip_rst_) begin
    if (ip_rst_ == 1'b0) begin
        end_of_conversion <= 1'b0;
        cnt_timer <= 8'd100 - 1'b1;
        eoc_broadened <= 1'b0;
    end
    else begin
        end_of_conversion <= end_of_conversion_n;
        cnt_timer <= cnt_timer_n;
        eoc_broadened <= eoc_broadened_n;
    end
end


always @ (*) begin
    if (endOfConversion == 1'b1)
        end_of_conversion_n = 1'b1;
    else
        end_of_conversion_n = 1'b0;
end


always @ (*) begin
    if (end_of_conversion == 1'b0 && end_of_conversion_n == 1'b1 && cnt_timer == 8'd100 - 1'd1)
        cnt_timer_n = 8'd0;
    else if (cnt_timer < 8'd100 - 1'd1)
        cnt_timer_n = cnt_timer + 1'd1;
    else
        cnt_timer_n = cnt_timer;
        
end

always @ (*) begin
    if (end_of_conversion == 1'b0 && end_of_conversion_n == 1'b1)
        eoc_broadened_n = 1'b1;
    else if (cnt_timer == 8'd100 - 1'd1)
        eoc_broadened_n = 1'b0;
    else
        eoc_broadened_n = eoc_broadened;
end
/*
reg         delay1;
reg         delay2;
reg         delay3;
always @ (posedge ip_clk or negedge ip_rst_) begin
    if (ip_rst_ == 1'b0) begin
        eoc_broadened <= 1'b0;
        delay1 <= 1'b0;
        delay2 <= 1'b0;
        delay3 <= 1'b0;
    end
    else begin
        delay1 <= eoc_broadened;
        delay2 <= delay1;
        delay3 <= delay2;
    end
end
*/
         
delay_beats #(
    .DELAY_NUM (4),  // 延迟拍数
    .DATA_WIDTH (1)  // 信号位宽
)delay_beats_inst(
    .i_clk          (ip_clk),
    .i_rst_         (ip_rst_),
    .din            (eoc_broadened),
    .dout           (o_eoc_broadened_delay)
);
      
endmodule
