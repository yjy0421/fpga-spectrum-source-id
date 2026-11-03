// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Sep 25 10:17:10 2026
// Host        : whr running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Program/FPGA/Xilinx/Xilinx_Vivado2024/TCD1304 driver with
//               nn/project_1.gen/sources_1/ip/blk_mem_gen_avg/blk_mem_gen_avg_sim_netlist.v}
// Design      : blk_mem_gen_avg
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_avg,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_avg
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.822999 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_avg.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_avg.mif" *) 
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
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_avg_blk_mem_gen_v8_4_9 U0
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
