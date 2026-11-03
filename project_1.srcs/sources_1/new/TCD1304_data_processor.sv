`timescale 1ns / 1ps
/*
module TCD1304_data_processor
#(
    parameter CCD_ELEMENT_COUNTS = 16'd3694  // CCDԪ������
)
(
    input       wire                i_clk,          // ʱ��
    input       wire                ip_rst_,        // ��λ������Ч��
    input       wire    [11:0]      i_data_from_ad, // AD��������
    input       wire                i_eoc_broadened,// ��չ��EOC�ź�
    input       wire    [11:0]      i_index,        // �����������
    input       wire    [ 7:0]      i_num_avg,
    output      wire    [15:0]      o_data_avg,     // ƽ���������
    output      wire                o_data_valid    // ������Ч�ź�
);

//localparam NUM_AVG = 8'd100;                  // ƽ������

// ���ļ�������EOC�ź�ͬ��
reg [11:0] data_from_ad;
wire [11:0] data_from_ad_n;
reg [11:0] cnt;
reg [11:0] cnt_n;
reg eoc_broadened;
wire eoc_broadened_n;
reg [7:0] full_scan_cnt;  // ����ɨ�����������(1~i_num_avg)
reg [7:0] full_scan_cnt_n;
wire  sum_we_delay;
wire  sum_we_delay1;
wire  sum_we_delay2;
// RAM��ַ�����ź�
wire [11:0] ram_addr;
reg [11:0] avg_ram_addr;

// RAM�ӿ��ź�
reg sum_we;
wire sum_en;
reg [19:0] sum_din;
wire [19:0] sum_dout;
reg sum_we_n;
reg [19:0] sum_din_n;
reg [19:0] sum_dout_n;

reg [19:0]  sum_tmp;

reg cnt_we;
reg [11:0] cnt_din;
wire [11:0] cnt_dout;

reg avg_we;
reg [11:0] avg_din;
wire [11:0] avg_dout;
// --------------------------
// 1. ����������
// --------------------------

always @(posedge i_clk or negedge ip_rst_) begin
    if (!ip_rst_) begin
        data_from_ad <= 1'd0;
        cnt <= 1'd0;
        eoc_broadened <= 1'b0;
        full_scan_cnt <= 1'd0;
    end else begin
        data_from_ad <= data_from_ad_n;
        cnt <= cnt_n;
        eoc_broadened <= eoc_broadened_n;
        full_scan_cnt <= full_scan_cnt_n;
    end
end

assign  eoc_broadened_n = i_eoc_broadened;
assign  data_from_ad_n = i_data_from_ad;

always @(*) begin
    if (eoc_broadened == 1'b0 && eoc_broadened_n == 1'b1) begin
        if (cnt == CCD_ELEMENT_COUNTS) begin
            cnt_n = 1'd1;
            full_scan_cnt_n = (full_scan_cnt < i_num_avg) ? full_scan_cnt + 1'd1 : 1'd1;
        end else begin
            cnt_n = cnt + 1'd1;
            full_scan_cnt_n <= full_scan_cnt;
        end
     end else begin
        cnt_n = cnt;
        full_scan_cnt_n <= full_scan_cnt;
     end
end


always @ (*) begin
    if (full_scan_cnt == i_num_avg)
        avg_ram_addr = ram_addr;
    else begin
        if (i_index == CCD_ELEMENT_COUNTS)
            avg_ram_addr = 1'd1;
        else
            //avg_ram_addr = i_index + 2'd2;
            avg_ram_addr = i_index + 2'd1;
    end
end
// --------------------------
// --------------------------

blk_mem_gen_sum blk_mem_sum (
    .clka  (i_clk),
    .rsta  ((full_scan_cnt_n == 8'd1)),
    .ena   (sum_en),
    .wea   (sum_we_delay2),
    .addra (ram_addr),
    .dina  (sum_din),
    .douta (sum_dout)
);

blk_mem_gen_cnt blk_mem_cnt (
    .clka  (i_clk),
    .rsta  ((full_scan_cnt_n == 1'd1)),
    .ena   (sum_en),
    .wea   (sum_we_delay2),
    .addra (ram_addr),
    .dina  (cnt_din),
    .douta (cnt_dout)
);

blk_mem_gen_avg blk_mem_avg (
    .clka  (i_clk),
    .rsta  (1'b0),
    .ena   (1'd1),
    .wea   (sum_we_delay2 && full_scan_cnt == i_num_avg),
    .addra (avg_ram_addr),  // ʹ��ѡ���ĵ�ַ
    .dina  (avg_din),
    .douta (avg_dout)
);

// --------------------------
// 4. RAM��д����
// --------------------------
assign  ram_addr = cnt;

always @(posedge i_clk or negedge ip_rst_) begin
    if (!ip_rst_) begin
    // Ĭ�ϵ�ַΪ��ǰ������ֵ
        sum_we <= 1'b0;
    end else if (eoc_broadened == 1'b0 && eoc_broadened_n == 1'b1) begin
        sum_we <= 1'b1;
    end else begin
        sum_we <= 1'b0;
    end
end   

//assign  sum_en = 1'b1;
assign  sum_en = sum_we_delay1 | sum_we_delay2;



delay_beats #(
    .DELAY_NUM (1),  // �ӳ�����
    .DATA_WIDTH (1)  // �ź�λ��
)delay_beats_inst1(
    .i_clk          (i_clk),
    .i_rst_         (ip_rst_),
    .din            (sum_we),
    .dout           (sum_we_delay1)
);

delay_beats #(
    .DELAY_NUM (2),  // �ӳ�����
    .DATA_WIDTH (1)  // �ź�λ��
)delay_beats_inst2(
    .i_clk          (i_clk),
    .i_rst_         (ip_rst_),
    .din            (sum_we),
    .dout           (sum_we_delay2)
);


always @(*) begin  
    if (sum_we_delay2 == 1'b1) begin
        sum_din = sum_dout + data_from_ad;
        cnt_din = cnt_dout + 1'd1;
    end else begin
        sum_din = sum_din;
        cnt_din = cnt_din;
    end
end     

always @(*) begin  
    if (sum_we_delay2 == 1'b1 && full_scan_cnt == i_num_avg) begin
        avg_din = sum_din / (i_num_avg);
    end else begin
        avg_din = avg_din;
    end
end     

// --------------------------
// 5. �������
// --------------------------
// ������㹻����������ɨ���������Ч
//assign o_data_valid = 1'b1;
assign  o_data_valid = (full_scan_cnt == 1'd1 && full_scan_cnt_n == 2'd2);
// ���ƽ��ֵ
assign o_data_avg = (i_index == CCD_ELEMENT_COUNTS - 1'd1) ? 16'hFFFF : {4'd0,avg_dout};
//assign o_data_avg = (i_index == CCD_ELEMENT_COUNTS - 1'd1) ? 16'hFFFF : 16'hABCD;
endmodule
*/

module TCD1304_data_processor
#(
    parameter CCD_ELEMENT_COUNTS = 16'd3694  // CCDԪ������
)
(
    input       wire                i_clk, 
    input       wire                ip_rst_,        
    input       wire    [11:0]      i_data_from_ad, // AD��������
    input       wire                i_eoc_broadened,// ��չ��EOC�ź�
    input       wire    [11:0]      i_index,        // �����������
    input       wire    [ 7:0]      i_num_avg,
    output      wire    [15:0]      o_data_avg,     // ƽ���������
    output      wire                o_data_valid    // ������Ч�ź�
);

reg [11:0] data_from_ad;
wire [11:0] data_from_ad_n;
reg [11:0] cnt;
reg [11:0] cnt_n;
reg eoc_broadened;
wire eoc_broadened_n;
reg [7:0] full_scan_cnt; 
reg [7:0] full_scan_cnt_n;
wire  sum_we_delay;
wire  sum_we_delay1;
wire  sum_we_delay2;
wire [11:0] ram_addr;
reg [11:0] avg_ram_addr;

reg sum_we;
wire sum_en;
reg [19:0] sum_din;
wire [19:0] sum_dout;
reg sum_we_n;
reg [19:0] sum_din_n;
reg [19:0] sum_dout_n;

reg [19:0]  sum_tmp;

reg cnt_we;
reg [11:0] cnt_din;
wire [11:0] cnt_dout;

reg avg_we;
reg [11:0] avg_din;
wire [11:0] avg_dout;


always @(posedge i_clk or negedge ip_rst_) begin
    if (!ip_rst_) begin
        data_from_ad <= 1'd0;
        cnt <= CCD_ELEMENT_COUNTS-1;
        eoc_broadened <= 1'b0;
        full_scan_cnt <= 8'd255;
    end else begin
        data_from_ad <= data_from_ad_n;
        cnt <= cnt_n;
        eoc_broadened <= eoc_broadened_n;
        full_scan_cnt <= full_scan_cnt_n;
    end
end

assign  eoc_broadened_n = i_eoc_broadened;
assign  data_from_ad_n = i_data_from_ad;

always @(*) begin
    if (eoc_broadened == 1'b0 && eoc_broadened_n == 1'b1) begin
        if (cnt == CCD_ELEMENT_COUNTS-1) begin
            cnt_n = 1'd0;
            full_scan_cnt_n = (full_scan_cnt < i_num_avg-1) ? full_scan_cnt + 1'd1 : 1'd0;
        end else begin
            cnt_n = cnt + 1'd1;
            full_scan_cnt_n = full_scan_cnt;
        end
     end else begin
        cnt_n = cnt;
        full_scan_cnt_n = full_scan_cnt;
     end
end


always @ (*) begin
    if (full_scan_cnt == i_num_avg-1)
        avg_ram_addr = ram_addr;
    else begin
        if (i_index == CCD_ELEMENT_COUNTS-1)
            avg_ram_addr = 1'd0;
        else
            //avg_ram_addr = i_index + 2'd2;
            avg_ram_addr = i_index;
    end
end
// --------------------------
// --------------------------

blk_mem_gen_sum blk_mem_sum (
    .clka  (i_clk),
    .rsta  ((full_scan_cnt_n == 8'd0)),
    .ena   (sum_en),
    .wea   (sum_we_delay2),
    .addra (ram_addr),
    .dina  (sum_din),
    .douta (sum_dout)
);

blk_mem_gen_cnt blk_mem_cnt (
    .clka  (i_clk),
    .rsta  ((full_scan_cnt_n == 1'd0)),
    .ena   (sum_en),
    .wea   (sum_we_delay2),
    .addra (ram_addr),
    .dina  (cnt_din),
    .douta (cnt_dout)
);

blk_mem_gen_avg blk_mem_avg (
    .clka  (i_clk),
    .rsta  (1'b0),
    .ena   (1'd1),
    .wea   (sum_we_delay2 && full_scan_cnt == i_num_avg-1),
    .addra (avg_ram_addr),  // ʹ��ѡ���ĵ�ַ
    .dina  (avg_din),
    .douta (avg_dout)
);


assign  ram_addr = cnt;

always @(posedge i_clk or negedge ip_rst_) begin
    if (!ip_rst_) begin
        sum_we <= 1'b0;
    end else if (eoc_broadened == 1'b0 && eoc_broadened_n == 1'b1) begin
        sum_we <= 1'b1;
    end else begin
        sum_we <= 1'b0;
    end
end   

assign  sum_en = sum_we_delay1 | sum_we_delay2;



delay_beats #(
    .DELAY_NUM (1), 
    .DATA_WIDTH (1)
)delay_beats_inst1(
    .i_clk          (i_clk),
    .i_rst_         (ip_rst_),
    .din            (sum_we),
    .dout           (sum_we_delay1)
);

delay_beats #(
    .DELAY_NUM (2),
    .DATA_WIDTH (1)
)delay_beats_inst2(
    .i_clk          (i_clk),
    .i_rst_         (ip_rst_),
    .din            (sum_we),
    .dout           (sum_we_delay2)
);


always @(*) begin  
    if (sum_we_delay2 == 1'b1) begin
        sum_din = sum_dout + data_from_ad;
        cnt_din = cnt_dout + 1'd1;
    end else begin
        sum_din = sum_din;
        cnt_din = cnt_din;
    end
end     

always @(*) begin  
    if (sum_we_delay2 == 1'b1 && full_scan_cnt == i_num_avg-1) begin
        avg_din = sum_din / (i_num_avg);
    end else begin
        avg_din = avg_din;
    end
end     


assign  o_data_valid = (full_scan_cnt == i_num_avg-1 && full_scan_cnt_n == 1'd0);
assign o_data_avg = {4'd0,avg_dout};

endmodule

