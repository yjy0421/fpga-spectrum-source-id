// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Sep 25 10:16:52 2026
// Host        : whr running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Program/FPGA/Xilinx/Xilinx_Vivado2024/TCD1304 driver with
//               nn/project_1.gen/sources_1/ip/blk_mem_gen_cnt/blk_mem_gen_cnt_sim_netlist.v}
// Design      : blk_mem_gen_cnt
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_cnt,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_cnt
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;
  output rsta_busy;

  wire [11:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.068175 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_cnt.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_cnt.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_cnt_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 40624)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
