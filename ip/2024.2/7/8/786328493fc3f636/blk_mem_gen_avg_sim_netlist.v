// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Sep 25 10:17:09 2026
// Host        : whr running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_avg_sim_netlist.v
// Design      : blk_mem_gen_avg
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_avg,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 40736)
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
