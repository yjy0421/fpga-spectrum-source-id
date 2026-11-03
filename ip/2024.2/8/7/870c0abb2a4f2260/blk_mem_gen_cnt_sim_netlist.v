// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Sep 25 10:16:51 2026
// Host        : whr running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_cnt_sim_netlist.v
// Design      : blk_mem_gen_cnt
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_cnt,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 40720)
`pragma protect data_block
TaksvFU9sYLNOIl0GQJRvR/jWAFL4ljOhIUUWiCnxgrOf2F5hAa/aFagw2trNRh2WTCXv3s0XOdK
1eFDV2w48qWwLVL1TCZmCd4ehOWfioQFC+raCHgXE79pkolJiv5GT8Wh622ET59rSJUc1F/Ey021
NI4za1Wgww+shfBjKoBB4bdrxQe8fSQ3eGbz9dP93dHMHTh7aDlZMfoSsinfTJoB9FPQuwK5KuoU
Q08kkEtAi0Txv5TlMXTMDuABkXI6pvmJrm1TNN1kVUtRpKk10HKQAkbz0uMI3Ai0cp9XqzmjP+v7
dcX+B1jkKiPeYT8IuUFHrKAENmN5r9N50IqSSiYwXh8P8uM0QQ1AgdDzhY6bjQHKb33QGwPC+49x
dSelf8nlWxZCm/VsWv8qifbk2AIbVaKBv8NleOxU+sPm31zi1tDljkMJx8yFDQirhPiB2wZktFO7
i/ocdvCpWW4OcwzPcvdBdsPlGM4o0Pj69zEj8EUh0++v3yL6XkzD5qpGnLNuzchCENPRxlM4WJIj
WmiW2bXHKqoEyyBqYWEArMWA1GRXL6wb95OLKWA3y7kYdXV3Y1o8up4IfjCv4N2DiJbGuoBBgH/M
fH1KMWU5yMhZbMiVxBBSD7LulA2XqlpeDtZlEkgGWVN85xEFKyBaCGu74pLGHFd9pSO7ZOt3jZgp
Re8KU54a/1Z5Od/78Cy0uNBHajnu3dyhcibxZ1a2/uvKhnzhYjgre/fJfPaveVkNbXt4bWNPniVL
efgPiKOWgOwBfrwNXLV24eDXEgXr8FSZeWJeELWF20oPR1WLxP68rBx6s2WXt8eXA16KxOFCfMXT
4BiDJO31XTdOCKHoMcyfX+Vi1o8/ILdVwswcdNnSQ2BTwZeR+SJ75i4jQNyAtKYvT9Hwpie9FQQd
YMyKcxJjcGRKUzJk2Hn+80sPjBpcyxnJcuP4p9n+NGPuXaW7DzXBwRiE7S8vhv7fXVI69xUd/gH0
n5s9lTremuC4jmNDYmLchxlwlkzXAhIsw7M6QXrrETCpVmrzo0tSsXNXdY9uKOQzh+K1lnLqqFlN
lVefP1RSB+wOTKlyjhHmQ4HjepuROa5GU6yjYLUl1pTjc4P/oxvLSdPyC1YUf0zvbtcnzJ7B4N9k
+kE26U5zQ9blJBe6gykp4TQbuq6giPgrxHFR1//MX1xeVrviiMj/2Mm3ewF8Di2dCpo+Gnpbi6BS
Jw1aAzlgz2+KvzC8ZXm+x5lyed/TJG0C/Q3PwBNUlh02SEhtg1VYr7Fd4X0UZsbL4AbewptmY5g3
pEIhZLEp4vqCXcFsVGHDExMLA0viARKb8vBaI/cf5W9JUjjMHIQQ1UIT8oE8vaud7CuRgCuyFkno
BHrIE4ME4VtHRO7M1d0pr6WBTu9sBE+hlppDHAUY3JlL6AO/1Su/1cFmaC0KjICMb2Fbr91aHPE3
neaWLshXlt52la2SuEjlTplpLAZ2+V0ZGXSsIQgpe1S5HOA4XsRS3jmCaOzIV+zDObi94Fu1u/HV
8bDlLSRTCr6yum63cVAyiERkWv2XHyYdGyjblQs+JBtAkUaZjeUqlZ+RTKpRpR2PXd3a0L/k9/JS
ZYPKczEj9PL7VVD2A63jXcr0Fz82QklK3KF1Dn58lrT/tOm7ADysrw6e1EIcB/1e5Kt69CNov1m4
YQ5peyGzp9soAUpC2HrjDeCAJ4xEGdxxn4M9Jl20l+O2FcV6sR2bES3fu2ZVcVcaEK2857kqF6id
d7ACUvQdu0iTjjHtIPPNKy+trMerjLvXKBYCsVZhfc/0kqH9njkhdGBU3Be2yFXZ5jVGVB2NUqYl
t7ZjD6/szsktANeHtEyh/zwEnjzlMdT4QIADHgGnOMIbmDkFoWXumbVI1WJ9zpKRDFoyJd8V4tZW
EUUOxh26gCbeZTJ7vPbEzfERcagPJlEcbIp/LQijBo09CpENuAVwLzyDAP6YRKTsvMBQBrik6kNh
4aJXo/K+uHdbVufgXLK7muRLyRht4w1RZk6YkLR7OjFm9rLJnGoU1PtlIFyAyXrQT23fvVtzXWqI
r02JaJW1/DYjslskF7Ptfx9wRfLab/WfYxdf9fiBJKsNTtbo8wsW5NfjO57bFymLLgL6MI00VFpJ
fTnGwkZh8dFTCdrGLfKvwQ/toeSvGxvAAV0hjXMsBWFVchpejb6/V2DgZ6UVFdvYDTnLbi1hkmvS
SQxyM1kgn6k2phcZXL7fxoZYsnP5WBmOkGGhV2nukSqoG9mW8t9BLOcZFyyV2/aeQf24w3ZZj7dT
ruuBdwovB9VTVnhhGZfHGq+/PuTYRECQeG5RSqnd8F+oKFJjDtv7IekdKNSd/o2aJqIMPBZFj2jV
7G+xsfO5jKJKUiehM9LWos97Az1EPXo1ucfeWVSsc/WfQQZB0hO5Z/7KR1GZGmS1Bk6l89Zl8Vn/
YBh3wOzZL7T3shwRaV/u1d8kWQ8BvEv1M2167A6gweOPlZRE3Vu5HzSxF9VbagWOTMqdLRa3+VzT
EjmQrk3uXmNdNNdSnISdbTqf0Jz6vgrr79rRsZzB/XkzxF96YsZMUSik3P7O7ez7zylTWQ5ZGoVD
Hy2/OkzZwMzFkQR4VfcMxgAA7O3jDB9yiOU9UgfGLgL6CHqOqU/LgNn2rnSDd9iNqu0yqKaQpgE6
SgCfox5wOUtajlafc+wB+3tZs7PKcduAdcKebFQvv5JJtXHXZALY0CrNh/dJ13BN2ktGJxKAAxSn
ryuv5nsgcLPHEg1PQUSfXwWh02juZoLWqsTYQFZ3Iu7x8x0jKH8wgEyr0MTMutjeSRKrzqE2b/91
dESVlhkS3Jpn5GydZsVyGyVkG/uFxQjBhg/7wMj+3Rf0wO5XXKrajq+DPhJDzF0zjVR012z0C4sz
Xtr1tLjETNg58+IvEKKWERZPCQG5cWXWENVqQaZr3vUr7toYesWJbWQTOSd3O6am6ililA57QFJ0
mz/AtOQ6rVp+9E4XpLuKX6Y2ZvgcM2BfS9xQnPUXSow4HtDeywbNxZE0O9TCn4c3lwZAL5rtpvH6
fgv3WeQt9ZKh2YyJHEj734LiwgSDuwILkvBfty/9A4kjlcap0DzuzEAoBPpczfZwbe8v1y1nGwID
l1m1pT6/kI4d3NBrtX97paMMO4Dng6VwgXtdXh/6QLbVixejQCM3OTKiwF492n4976DLRP5yCCkO
SdZedQ5cTwiWryYcp/6dhPIRgL/kZwfEei3rE0/qZ+GEOEqb1u10uKnYrXnFisrUA95HWYnbNtM3
4laVx2xJEYqEc+e9Fb9HkuPC4zWaXu4bxa277G7pdazDNpEsfFuq9bDkDbDdmiD12YnVhTs72NiM
jewO7OWM2SoE6RXWItABaVF0V3ElPVUkdKgh03NWPzqEVaqjVx9kEKf+X58kjvXus/Lwryw54qIf
Thl2iSwmHh0LdCO5iLe1ahPJBLdwbtqBYsgTJ2k6kHhBQGFlma8cBBI2EPDuK1BPPooV4juF4/jX
SW02pKNJzL7ygV0umxnF3NWSerBVdckhb25LEohf7531gw3RT8TTFtb3PEJvZbn+S6+aW4rRel/V
S+nKfU3C4dH+Ep3nK6azW0mVdzw7B43K+xn16W40VBQ9hTJrrqxltm/Gji2iZ0eIyfQvv5HKXFAH
cgkUAVdLWbajwfF0KNUI+kaH+wHof1FGvTw8wiomZ0OZ6EtveU6cn6oCTfRpo0wzamNep9UtBJO5
DyPwuYooGu4Cwd59puv5kLB4zBHkgZejLdDDYJtV6g89ZNyTN/ZrQ3o6rnIsZTPQ57z8m8OnTtwj
Bb51snFuc8jYxIxYfwDw0q0/aVpioGL0iF9tof+VXj6+IZNSrTl1Y8SpTCSE5IfYKKRVUDMZFWVr
kxViV2cqW9gFe4+d4XOnr2UVfidKFWsLv8F7ZlcXqi7stPXTi4H7wQjXxlf+q7afDxI//NAXoVO1
OH6OPPW0g1SUiio2f+j00YxCWVidqttqfKPJv+H/3bytq0VsQmPPDtVqXaC6CPnvLlsl2yfSi1Qi
HXxCgN1HsbGbnhRkJRKnsiqi/XeWLJe0B0zPesKWjkS7nmf6oG61A7mEbhVqeImrrarNK2QcN9ux
wPewn+NYlPo2G+f5MtsOPK3/pgyibKvcgxbXgbjA7H8HvbqmnDgdNO9KScJd0Jyinper5Mphmy8u
9YEBQhTB/lWYrYoREOrxTTqcDxA5S4eCvVnJBNlRhu7zDFEwGjf+Mr8ojFxE4bN+7lFQNfYo78W1
O356pL0fWqgejoMyvRgVTSYfkH/Z1SqIldkfAfF8UUlxxah1eE9RzJQqYGfiQO6DHZH+Bp+1LkM8
QJDZ/YZbXseiFbZRmL8/yVfrd3XcEKqg5jhD754Bo3WU99XKrZsLLUDFXnZvfbz/e4I2WHvfpkK0
M3Dox75BzznQsCt9hMv3XCrht80bcVIBSiOUrQCW9nI6SL8mnA0l5a1JTyV+agOY9Rb7tDxyPAVT
YzQ5frEqsN58JAef4v7jjUt2uDnAi7lN53FojwJuHBn/5C2VtirAzbCqTkcdUWVyodpXYlk9mzRG
TDwjS+0Fbkt3wq1l86aRQHHFt4zCiVX2N942UPRv4/fhB9hCF3iQg8/KpfFrZV3vJUXZHqxf1NPu
2drMdlUR/bsc6XiL8/jQjU7zXsdpQknw0kdGOiAkCj60kH6XvslnVjVG835jzbydaMXgavJUBvQU
M0NiCzd3i+PQloU3DKOiQ3K9y61V+ZzQH7W2nVRi80uT65kBiWqNiTkhg8yxDiyavDgQlhd1NY0a
zq6T1tf1CglRdrpqtlCGPywZ4f4MzWbNVk1wkuuTlwdRmhe1FcDb4N4+hqRE/mq86depc5+76cG1
vlxFrRdbgmAcnvkfFp0wCQU6mEPdIfvk8DjneT2RxXbSsMcHSENyItpk+ap9dy2PsD1M6rXG2DiE
NB79BPgSnTNmLUOe/1Wl58DUecoFu+oU7XxB2xB8p/klZLKM+qNU+b433ZiuxQ0dXiLNlZ8Kt+Nu
GLHlztJUI5WW0dGTt8g4uXmY5pcsIf/nLw5dzNfSv7bcRCBXmQVYyIjYsNRFsCXyWNg3brmnTxiZ
Czs9k871XzmJcOoCNXAk3t0jzVrUyXY+szAMgqaKhlWP+YvGf4mBFHrCIKR/Qa2HLSm5jErYumKE
xDgNO7iDH2aIVLGjDENYEJHarMttmhKRNyWZmWHtLgAa5qHzP82pXdulgA+xtyiZgRUzhwDvOdcx
mMA4JAahZLxJRGbOGoiAnc1nLP1VLpaq2Tdg2NlZqO1Ry85LmwbBWs3R1lLTNTNVdSex7fspgs9V
wVpw5ulNo+T69bFQquLYTF92xHlvW7u0VkqPxmmyeA+IPh27qXdMWGs6HUj3i9I9H3N85WBA39X0
btrjjGnFaxbbhjRxgzcUo6AkuSt2fRKBJxWM6KjT7EW2PNACxkiEudOqGKNSAyE5WUpBu8lgBePx
ihDBnGIBU+5T9sopnCeLbWcZbLLeXOnWT22wqzKCSS3te7Db2RXTQCLEeAA9+w1XZN678iG+z8E1
QOG1Vb2QYmWSzTGfqCtiBTrbQsXZTA102fJ7mUogMx5/FXtz6PNpqwSaK/xjORP6qO/3t6Dqeafa
rhpQTh6EGyfvH39izZFRjHWfY1zTjx/HIW7EMUmQcsWz3FWPIfc9GU8UwGzDHcALaGcH0kiAtRBN
XujmT3CCnv1Jb6pGMlh2kpOEeW/kF7TVXxZaStm/8XqdTlCISSV5H72ViburfG67s7xD229lu4+T
53XGnlVm8UAfiAc6ozkB+K1qYwYDNRX3Q5riJFG/kJEWrpmuo/lXhjsCogSfx6sCiplrsckvq1V3
aut+WmKZ+WGnkQfX9S4aqvYzNZ8tRdeAIOMqBl3k/SqdXHqCAx9avtpu6s/LZ6A+/G/kdWkuFunF
yCTIWYw2cDPaOK4DB9Szm91DN4wstqxPeDhMzS0GZR30oJtb8nmwE2kDBgTX2iXwjd6qAVszFmdc
Re4RaLvxav8+ibKUWXC3+Nody8nmGD7jRVfHvkVW0SIkHUYew8uWp6FjjEVQoq4rexetr1CJvfOI
7kUtkP82edXhgvue3yzntevppl8z9khoFx2i08UOmLqW1s66zFsberFTLQGRjQVfJdyuiQ4GQNWj
lVoVrJ9Nb+qjm14Jsjzr98KoYzt18I5Io+5CVxog5z7zscAa2U6PqvyN7q9JkTKLcIjP74pH5EBS
T7vRo2nYrsEssb84ltnY/QT1ia6uOrZIphxWT611ZFm6lP7BwsB9kiomvBd0IaEOi8AvX2xsp1nv
ChfET6e1grj2DxNsGKchZJ0exATnVnCLmUSOB8xzmmDgDQZeknSwI41IOU+v4kqfTBfnu+U5F3e+
dcJJN10IN+//HDgt2at8Q7a9XNurFfMqt7FRn2wJrkffxO9QXF2hMfC8ZrMUzMqdb81WTjyG3LrH
VaB5V1rSzTW2c/6N5IvnD2yqufypjgWx0QMQdCaOLI+Q4Yt/nWJtrScFvet+jhYRmTY94rc/Ifk1
pasXxM/f4gJBqK4aCeoVOSf16zAg9pmJzxYW3vAQiqMghQuV968tODniXRSGK8jA/x2NfGLsibEA
D5NOJkYTryeQzXdTCdlVIwsAfKaojQ2tF9HZYQq6YUBQ/mawETBz4NtZailW2Dyp4BMSJuzt6FDq
0k2UCYJ0ozDkDPbD3Xv08D0ymzs5GVqm2CFST4EcIzKlF3MLlThIarImSIpL4Cu+pzoDG2JugJgA
hOdVr7k1tAtQIirLI5XDexAUxfYM/Osl5Qt8VrzDs1WKRj3w72x6u8oJoUX8ky+r8uVLA+iZeKQG
fNGpEZd6Qyot68WPxmIReSA2LDLXJV39BzOA1VxMwMT0N+zaEDHPN4hGwvRurz666B1AZdkO2Kgd
+4ORI6XmxTjLoRitWI0mhf0m8rmOsqS5ZS6NVdKwrxnQVm0RALGIeaxPUI4eWNKDUTMzWx4Kft0F
pZHC9mrwWMA8RKwCqRgOw1tiowB6kv59rjsh/3WtARoQ2uflyb5L1eX7sZs1ab4enPDPfTMAHrqQ
vMnvkDKgAQ1Sm/1P39DMK1DtK7+RuOsoIoRh1FbPR5+WqTjwLX3b5LoB3eWNzP3/YxGra+Zqq9Oy
iPBuihoxB1z8CfOyyOuVI0BIOxdtR1faHKPHx04yl2De9XiTytFMg/AYu76X2gZmHg3QVWL0b53S
YKGAwSOS8zv9CY7cXuJtb5c05Ex3nxCKpImXV8EZBabsIztLdo9nNs61UjqkKxrki/m0z3B912Qh
XgeHUaWkDp1zW2hfIuljVL4DdQCH/sARvGRg1DeHDBDKOi2ZHuE6dCg3HUD7EDbuYukd5HqV9j4c
eJI3rTdvwy4DeMUX/e5WS5+CEdhScR+tHAw+8TaIBlkC+rD4c1xclpE+1F1FsyChf44yR8veWOAw
apkob5cH96anvFxOihyH9NQ2ZuVHR8SU14RoLqkh4WUEAa7g7vfoXXBqztXm4uG9pLUv/dPd/HAY
/Z2aZZoiH2Abucs9slJyeqC1FcXiQDnw0rrcBeZNYriVnT1xQrFWYNHPDo0d+z6YV71RpMdXPcMb
elCwktQLOoLZR+XO1QneZomZpnjQ7Qz8wLcqxRsZbxcRcxJGu6CEgJqlAmZ3lqJqbnpDQrAQcSd9
YxUiqsgHN7dyHTJOPoJWksb+JEsSCzpADl4hmCKOgjCpjXNhfUkt07TxduSQ9SkTl/L/pS4wJibo
QlP+PBODdfOIfGaM1vIJt5UverXY36PJvNu1twSaJpnHKh4rvSz4FypKz3oeFzliY5Wf6RNQbxXA
IPnoMFG9F/lLlXKlh5BnDO7T8G4Ec2rBrL1J9SRKU/aBZ6LasxED0g47mhyVs0TGQs3dk7xQA/B9
5medJPN2MJj9zJ+mz6o6a4I0VVaJWBEynJ9AQ0DfN1fGr/BMkBF7wZrL56+lEdXL05rxOthCqGV4
J9HvSdFrbLCaSc5EArBccpUi0G7d6XxcoTopGBPHV0mg4xGtFR4r8Ps6pFakJYQcwnRFuP6SHiqH
Pa2V1uSPFu+83Phe8UkMAVOS6ZO77l/2t7MC5SAUZ7Z3uheZMvMLkY1+654ChW7qSIN8gwqrs5yn
3ArE+hWKFdWgYuGgFxr7xpE+DRLVwYU1DQk9jirUK9aZ1Mc3xrlBadhh1s6KkH68KAWYxtJ1sD5V
88zH5OT3if4+vnvh8h1tJO6RYCV6841PZa3S/jPev5fhNWdqAadMOhq4lKgZwN4wmeeNX6x+5Y3Q
D50h1OlzYR3CWs7zb9CNmzonNgBeIIjCptF/rF2PGGMIcxKSF1i7yOM815YWFqn+aHMMnXKHCFny
JuqTParxkiis2oKcCn9LNyHvztD6zf+YoNIUZPUN17jXkIVkU0rF6N0+xVrAWvlzcsc0VNMQVu4w
VyaUpDslH1L1arFMd+6OMS4PJFwzJtmYXw5huhoVZrPyUJZQZutNznQVF8sb/dHIzDMuVN4f2nm9
OGx+NGe1XHICj06e6k7VuD7bDvDLRaU2GbM1PJ0ZFkBElY5zKhvkgdQr4zoCPr5b4fDsVNBMYj73
q8m9n3t2SREp6KK2u3jKiYprVBDS39lb1o3SCabK5hZBklrjeGlMgPpmFNVSv028XhUW+fESWrkt
MjXY7ro4RuL6Buy8aV5rcloDoASiwjq4I/WfAYTlgi6Xf+ogWli2/jMl9H7AH8hRk7KTJPNe9Uiu
hnojJm01dp/V074vQX0Y5bgzNItY7HOfN7sABhYBZluK8K8UqMWebYMPAy4qHbYsgqdXoXVdHFne
17YuEt6AZoT5bs15y5DtcDGbEu7anSnweJzjflgBe0yef8TCHzHbQhAjpoqIww+HtXM7+dAd82Ah
F3jjP4uX23mVBJKZyfSzcyDZUOJ4uaujjcvQRHkHU6i17R9pU1o5WmSzODiFL7PPykEJp53ci4nO
LanRbgM3LSaN8Eh2RWub2FZk/qV52YZwI67+TXpV8XQehRjPkxQv9c0PdFXdW/gUvHCSmGikQWgU
c1e4qqkbwj06W7lWbSPiM0Mkoboi0m8gsTPk/MVdSBDNdpfAtzJL9W0nIYK+emE9wxH9dPiHfzX5
uBaEC7gk0nme0uJEvL7c373iS6IjqgYwFKu+jbTWPehGdpmhE2A1YbJpzGzJO+3H6PX/F43pCCVe
uZOGEQ+bdQ1aokaz2Gvx2DhmofVPvbveTA63vc0W1b8QHwem4owNdKqf9xq+3m2CfIVjAeB4+HOZ
dvEvMmYnYfJEJgfB4j5OeVnvlUvfkvV2qI8bvdDV7PSGgNNHj0NuZzmwaKF9xgtmGvY8X9LfFwiC
D22UxTFx1s/Rzd4elJL6kD9A83DTYzXc19dhfHsTedIoIiL3+Ck1X5vNNttKM+d7ZNW66JfLUvvy
B4bghvTx7pWISUDhBxiQzcX0V6ghMnepsdVSQxJjlF/h4m/1B0xgi/3RQuwRHQB/w9d7ZkMuePM6
JoSmM1C+Jzua9KUFMJMsz1UvWkK26wr07ZcU9y8PBXfC4vlN2PioJJzSjmEmHkU+fmsMabho4kY1
yfReX/ieG9VpdKe/65ikF6eEnRGX0RmN/JzetnaNT+iuOuvIK/idPajU6m6CDhWkfX81BsEn5kA6
r7dOxc/6px8sYzjPVDKJz2FDVOK1qhsTlALFrZ0fZxiqT1xXA2lkVS44f9J+XI8+JnE4702PqOBo
TrI8uPuGkoi7eQdRAYnXZiabxCz6tWZ6EhjmwMypAFSMn/A/M+hHpkIWsuPcdG38IOE9IKaUC7/3
Oky5tQzvXvrmUDHkw4f/G9E8O/vDL1bOVIFcCiVZScx6LDRJzHJYH5vcpOZaCzRvnHekfqGbKFih
cq3L5/NokdlZowiftg9TwQWaanxTWMzZeaHhGedWZlDOcnUT9tuVMh2AVlvVPNyBStC4Z1MjP0us
DoVnT9oXNT1UWzyAqyYIxJczLudp1xq2vqDo2X3wTglR1IVnhBOITtspDoMVMX/ZauGhgsAHsjdT
b1LeyU71LmnqwpXh/CUt07ky3OaVl9cc7n1yfFTiFI9hEbH33II00MXMauY+fNwug3gu0gLfw7J5
0gTrApQJyi4Iiz1zR2oyShfgp+abKSU+SwVZ3DBVR5F8RK4scHNKid/ZAYQWlILg5asjjaNCTeBV
m5/Ih2MXi7JzCOfVsa0CpZGhDhzBmtpyUK2MwDzcR41PvNmijbiMjKsJgIijO+TEDHy/yQlahqaY
iopofvEjKfwOqkgrHAAPG7IsJGzQHUW+R7GJNy0G9N2MgynbXF/g4ObsTVk1KMgGNOLfY6N4tEIT
Y7l6ncnpZzNS7DOeT+etQMGZJnYHRe0GxTaUZV4YFga7S6CQWfzIiCwdt0J9Zl9WJPH3xyXJ7oNQ
NUvvMUAX+3Kaxflm7i6sys7CJ9kJ0r/D6SeMiblOYzDdEp8NSHmIECLD/GP9sq/8HI5OR5C4PU7m
YRQGqqtKVo2eCwLQWoS3ZRozO/ZSPMSzeDCeA68e9k5LMUDrY4sgFEQr8//HYXnHoqw1hBixpKMX
KWDo1jk4JhaSOm5cxRrmfDMj09Xr/P6M/OEzxwIf4pYDEb9qcBNOLixLXObN7W38Wo3e/blhsBld
mOjjmLQl0V+LNyhoTvd68Bb2j9dAA6VAq08HYTA5xqWe9SFUKy2QbTAHOlYq7tB7fyqJMdtDDLNJ
3C9llaTS3/5CZ/6veP7hhBgJL03xPgihxoC0mkoGWmrL7Vu2cvN+eyNl6ND6Pv8PDwxJPbabe5gY
+5D/1Z2AZ9i6L+ygflaluQ9+J2WhPnWFwb7DsI9Rb5J0c3Sos2xwucGlGlfw46VzaiZvTJ8LnA/T
5v9CWzGeQ5wnOZT8+anqVI8U6GkxluaZ6vq6t+uNQcG0GFVnZx7cDxpY2Yb8VwUPwlmvvAbAcuWx
BapFfjvf2Lx34dB3C7O/TSZU+COUPiZl44L+NWEAC1pDY/vz0AGXYyL3amVNLA26JFHJ/ZcN9Mki
ZtVxeEAdF2kUzI+5yQ/8g5INKSh5SYZgaGAJORc83KsMWYdS2i3xSoB4/YCMJwSgh8Dw5Q428RQl
ArqGirgXhyiomWEHAKd6TdqGfvE7+RhSO3GjEJrP09aUznn8gE3jdgG+SkPwUIx8hNa23s7egEeo
hS9FmsqRJbMUmnuS8BAHyu4h8KavbcFjqa4ZcpyzoaHeE+3efE5K/CxSnlCB3Wq10dHc+nimp6ZZ
pcF9OvIkamzv6TaShsgzWXqJuFblSpV23KL6/7E9ASkTtSkwyMBKxS7J8Gr+hkcX42F2BHMwN1qw
zPA6T4KedaXIIGc4UuZKhefDjQecI5EVTqPEkQHQLPdTlgQUAaGvnDYwkAIQQbygVYmxbWiTYsUh
HIeCOCA5ECzBClCbOGlqusOBbANyRgqepjL3AQNJ87RTJ+Flisl4QZB8DNJ6l/pcr2/OkF1p3O7H
gnSNRuPXtkWrnUHWesvW/MJevw+vlfCshQSlHFkdrLcgFMRS3NuB85S/JDiXJfkyLlJVzL8A5E6G
ko5uoLnndkrkrrGSOQDbHq9oxuhmUPP+SulJY+yRocH3AnaKEzi4jEd182XTlrFmgKxSAqlgk/OG
/34/49uZv8bBTvAJkVaJ7ZKGAJa996Uwkm3844OBHGgzBdxc9ICRWBWR79Ju0pB+R0osSrwWgDiI
HoqxhTNfUOT4YGaYD4arQqZsdXgDh9d3i+UnfjprtBS3uy5JLMAa0e3h5Z41kDbAYUWCMy9IfwBW
Jdo9d6wlppj9AZWEmHa6ghmWZqzG+e/Rt0GWgXxMSNoc9YeFELoAiRknTuFgKOTsSSW5il/LFBxA
9aw7QrXNO9HYFVXWBG/2A1QDRfbsTrlO9skr7kgrPytu2uA0n3mDfdCA1ap834rTbfwR5gVBBL9E
5rgObBkCHmt1F56yBAXa3X/VY0bIcaG37Qgo6ba/zMVFs7+00A4mtQhgCmHckd7Ip3B6yqcMscKM
apqCO/tMnZIhciy5ueWvELl50NfSe0E3gMO3/rnczZKxSKMz3tbqYdqGbP3+8wdzoKw9aNi4AJjE
NPiT3mHRTc1LNtpzx9qeswzRMSAFFFF5NJp3hrly4VruVgCZl54ubQSitZBOKRxCjQ6l/MN3Cj77
V6D4b31vXk0bJd3jIqv6QoeB7VtpBaKBRkZ50cVX7dEtLHw961pZm3BNgo8Upncv11rkSAwyzgbj
+kHrrN3N+SFCnQaP8qzbOPg6K/J7kZZICmWMeSDv7VCObZ5wFpdRQmTl/gBB0uvyUT9Bh2seHKEU
yrF4fp9qFffI1I0EYdb9Aop/Dcrja6/0+7RL+9b/cyV9AbsDSRUfjdAs4FJ9OCn1A4O0eNQc9WhI
SsVDhIG1mxHhWDkpFz1cfuNtXRf3G1eMTqHTHExo2jHlYlrueJ4INrKtvpka0Vpxzd9pmZQtm1a2
MoeOLGybr2JCjami+nfR7UP3wjfgLmyUYfQQ1EWPIMTVaMJIsFy9ZRMRWH/vDx7TukKIBqZAj14z
0u1e/5x+dM5EXVMhbSJ2tWBKL3KuPPylKxINaMtLnRRsKcPi72zTCUGUdLEivU/m6TL5pMkK/97S
s5xUHidkypC4hHEtOQ9RkD4Y/IlNiAsQkEGVVlCrBZ7ceIHUS0fv4vhK7Ijn4ZoJcxfP8EtAo0tQ
WITwXeKGryI/AhcAkqHeZPFtXNCUucRuxFlbgWvitRapIqXwp+trxt0b7DfXTnREFkozKRULAL8I
j1+O+C76NWnY4Moek1PsSzjBqJYFcYdUXUNC83A0EW5IBg57uOsIyExi186lW9jNk7KKIGJ3EYhI
hZiPYJS69DrDV719EmjInETKKq7ib4SBwLsyhfrjE4WjdkvoIE2eadUSSHBexDyEu48NzIljxBaq
J0AtiakqksmhXEFKTTYaO0vquHeh6qyeX/hVISM0Bzl0eBAXyc1U3teA8cgg0t/WTBMLBeW3Y5vn
E6a/dORSDBUlbuvL+wd2QbcqyBv53WMMfL4jAR6kHyKMAR9QHrIDK9g1Zr3vdixOaQieXRjiZcZR
nyjBIi/u1vu4icE2ttSgA88FQFYpujDFPx7Gzt12Kkg6Xv884o3ZSZ0gKv/cCGpLZGEoIoajo52S
lWp/NWIwqmpOG+FciliMt6ztytKw0LIzrIPNHA29+ggho56ZKzGHA6/nI1ikyRCQF0Y6pyrasSID
XV1rBGx+kPoIS8VrFgsNKvtl2fHnUS4m50DlX4ppnaTlc0dIKvxrsk9ypKHYbWBLH5v9EpSM3QdN
8vFh4pvXEeodNv8kMbXcRkzWdajHAPzK65609pTIVadxfb7xPQs9KGcyjQWfGA9x//lnrwzlEytJ
hDGHMAQwzsmRtfFZDoT20+QMZZZVDKNfrRuufyXnHxNz1LavLaj5Iw636qFvwkypXwuV2HBHdjIZ
MaD6HucZ0LveCjMUi/P8uXhoX62PB68A6TtEGGZwDR8NLV6+/Ek3VPp6S0L2JybYPtOqDiF30lcS
o9HAyEy0Etzepjg7hyZh/gcvNk24IP30O4ocuodKvvO4MG3BYDT2uIPZXg+7f2MgMMRZsHCZXlmb
rnKTwEOT2sQM5frfmxTRxJZjKbKJXcVuPogjGkrcxjGNFNCzb+LNdfd4bhtATrzlfcAwD0j+7nED
0GmFqOUOwxJfkiV1fBTEqSBO6EGo2M5YVjEF/9dZK1UDtlxXxlgymaBhnnECJBlsSVnNsjQksFk6
A/2UvyvM7cHWBy7rx8qo3fABUcjgpDz03V0fbtNE2/bRhk+sBt2g4XQN9X1c+h8/+qC2lkFsQVe7
SWEMv4dSHCo+P4iVlYxsr6IbMeN+g0n/sqlz9MDanlmWIT1qwB++b3k6nIsWbyjmOslauMS6ayID
T6OlpH6IdKMKdwLSWAwy7j+cdxVIj3mPH2x6NkeWKhSfvk99KFoUyZijGdaKW9IRVqVWPfATDV6I
RJcfHM2aE7OyWhszzco/o1Mze2PYQnnDm06nlu09iJq7RQbdxf1O4GJyp7K5pC0b0rBIz1OYdjs1
HV94b52bSWy3qhUYtBCKGkITmgTKYSxS7oguOFv8oMeUTNUhEra0lOs+z/R96VD+NEiqQhsRWWQ4
BfG9BNDLsYHs3xV0SbNqgIj95fPXr7Q1N5/rvOlyVAUgJitLNLjikkDPEmPY/Ua/IlN7EpmGPxM5
st0i9lFLnwcP/69hjRkRLJqB7QCPGbBxq2JYB2rBC+WCaA7g9H2raqLD2ZL1W96Grfvb5gFRk8sX
t57BRBxw5s0i1z7ZPIK1+lMmXRk0E5HK/rcA9HC9eBuMQlykWy8NLS/pIWl71UWjXi8Xeo0ej8Zr
ri4VcjEQ61xQHWyWWhemESkMMWvkXAuwb9GYUzE64/hlRsRURwsV/bPNh81PEtEUkBvYf/BUa0s6
lv+U8H1cIiFsbvdq+DtMS/FW8U0iMFUvFBAanhaNPBo+XWPI9cpGzNXYtLDxcBh1ZqffMAsWVIo6
iT6b6z3c2udGYP/hsi8G3t8BYIkGrp7pv+9PkCfNxiTlGLBDwVegb2s6e+NUJdlXdmjw2iElqoPu
O/4GZSYiJGpi3F3FmCC3gZoWYPxlbKdUotwaMFq3rc3AObWeG5aDpQFalgvP9yEmxvDuuC6U8UrG
xdNkSTYzCkv1BdhQhmjVED5NZzdcDrch276K1omim5BvBHX7W2uuxP0QrwtHXHaExI1vKXIhtf8t
ZKbOpQvDrNCvugNc7eL909b2zxLWvzhEStw1IFpGR9fZBRdTqzm/lNGGErkPSL9mPjhdE2UguvVy
/QX433T0VcBSTjnD+rpjpLG3z7sAE9TVb8VjoJm1TAlyLz/ouPdogFWdaWFyLirDaK891zLeGt03
gGf+5yoV2t7UMQIczg2RVYE0fsz/EKxPktm1XPfX4lz6yWvOrfiyQC4Z3YOpv6Y4EaEKkOFErmYx
XFl9rbIhS/YKvWCNE6lRkh8iJrMTrN2evSr6XS9x2lJDoxCAj3Cp5ISCBflkrtPmzxNXXEd9pnmZ
x8VdnbQbyTdDWhWTSJyu3nCoc39st7JWm6X2iTbCz7TLKM8+fmzh56bZM1JoSyXA+9LBNb6+QJrI
p72yH2YNM/if+K/6dV1l95qT9wl8l4KVLcDIeTeuGFLmQXCjFGdf0rvHKVrkB2/SUdQqeVkSK4zW
AGn/EQQtC4+UGP4y+gFLQolhLeQgobzqnOw07LHNWmM6j3mkEyKLDcnektD/1fjFYPRlygMDmm5M
IBgzJ7Klf3lXAPecNhCwSxWts1asD3eGDMcBxwnVUv/5v5HKsA8SX91Iv0JLS+Ya2wTHf1bL4oyc
6DgNUvpA/gYZnPmsZAhz4pToyNluCqNB2nffaMTp/k72LnVd/fRTrTZEs5Yy2L5YoS2DygiaR5pk
/8IURLLWk8p/PCtQrmhaTaYdJhcdTkqtejEe5aBHHReXQo4PPo2xK8pQPDlVbMF4VHQfPUDT0jev
V8sxhk2JRStuA+VchEfRsLVcuMx4WooLYhprCY9YlVUodTEIUrUKpaRrx/9YzrE+XyMc0Y0Qd2jM
cFGKXGWl0a4U6PFNDrpGVPFQNgQ+WCGJpqhvP1st7SyCpvMnrbYjinpnE1ydo55RDmiFakBlr5dC
QF5BdO44q3bfn/Ix5vldLN5Ml7caDNKnk5th3zL8txsgZfQp5tn+ZIsG2W5WEyqyBG67fbzF8g/S
gGOGd+UZ82qD6ZmrhbMM9Snb3qONNJAQxcYsVq8brAuZBTmc2On5YDPvJ/ZgQKijvbib3+jU2KUU
UwznfDoHMPtsHQY3ll8oJf2axnF0Al9ahdDi7DhvTHZ18hOEZtngMYUNql1rQ5uZMGOCbSqzy0Og
QPfhU/w99GTWbp5bswqlCjycyOhVAOK7+d1twQsmlvUEwU1asG8eE2b8RltdOz5j9X2+1GIZX8mf
/8mOogCRQWeyShZt1QUTN56moBbJDjYX1P2aIYUUPNYHALnGVoro7aOBdK7tzG4H82nPdzLGOe+G
0+BfZIqNxKAfrgR7vPz41i60MjxPhvmAyTKZ61qLY30SK5vs2hGM6y2S6Ami/atnb68PAHdeRdek
q/UfxEOlc2v5yG0oYAcczfJzjzD6LY0KISGl6gSv8K33NnHhuQZ8yYEuK6haNR/oueENbnJ7SOvE
IR55Tj9qbMv0on2lmQYsMvwj0mDq6Ps5W8RG2jCBjEc7G1UIY8Fuu5K7vHbZqGdtQWHE7JrRqJhF
hS3rgbroYBSVbVls4B1E6jIPa43beDB0I8vmk9hv/vFE18ozSS6ZgTaBH71H3Ao+q1qMzDpIFbPZ
QLqcOyz5tbxrgNlwtdQ7Vk964xVy7ZoACt6aFRWcTg15fLbnli0biPLr7kSgboLtHShSE8VTZ7P/
9fFDwgnnc3w77Vrzuodl3ydTE6v5lM52BP60Z7oMo7d0yY2M/t2nUXM2GtLgPC3zQC5A93CuTisM
XARryk2zLSt8qiEwzO2sFLrbl9YEAkufFozNyzHe/iteXM673GMzyD+ZiFFuLbykeWAmHhY4gPkM
6rjVf6FrfKWv7a2dhejLBGZ5ZwjMuYzbAOw0BmaPlxVNnKAAnwq8AucwkVGcf5LxTThyZlITwLL7
pX+wf9VMojSw0ghBErI8qxOIJEVScwuyZq3kQwnvtZPyUfob0yLZIAwMmEuarrNyX+JXEAoFTbE1
5amFHzLqkvhmDHtwzPIq5PqEGWhUQtZpsmIpxv+TgT+GUqI2zZPSnZ7QYiel7WNa1+0ijnR/IOgE
uj6OJw/oOGuQ4yZAGl39Vmk2iAzUFyIW8PJGFJ0A6cVAyPy4oRSELOeCItc7LbwEctYMevLhu/R1
UobXjH1FshYXqJoHc1K7MMkRyvskd8go0NByxSzh0mELm5oRnIOCtiPlhgFsPgzVFVsgCLw/RTHp
cP0eD0djSntTmEAvyVZSy+VK+6+AgdJ3vzRd09la+dgVwU5F5VqZXoD9N09C9acq6PeBQTJfECtw
Hc+4j7PJ7sAA75Tjbl7dCJ5tiCMZRBTE4yjR0kIdnFSo69rUusnN9mM9NzJb3VYSrMkFgDoa86tu
Sh9+SEocB4zLDsO2SxSPWQKi0tgWWhu3H0OQkkbwhB5j4LKRwRZJkZ2kSKBvrfMb0oc2nu7ZpR1l
YdOzX2EAJfJltTz9Bn5KqlPjYeLRl076EWYgK1fTRi7nTSCfXk6XANHoZE58X2BW4QVY+KxIEJa8
JSEeaheULnhoJqBIjXLUNfh496hSG8TZszfI6clHSp7HqR3mqPbSr0egwbDaZ8ydu7zTGVFkl9AX
qE22AhDlnp7DEc2CBWlthXxaq/8KEdIPAlqUWYJhkgNUoWqZpECEY3dj8L+jeFISMG1QO+VFzuJX
BY12xItZxm7pIh6LFuidcEhNdMPHxY3dRHKAstYMi46ceSOB1V6tY6q9hyzYwq4KqFkM1+yhWkWx
a2GOlxW/F81SJB+XXBBpSzynPmykZZhPOFRxrPV+yMf7qz36KQuO5FHGxUXDBJ8F6PLCjTXX9B+H
fQ6Bxsgl1n62nxE+QsPdcIn3O/VLceFAz3QFypmUEVIOe+/HRT1QLwoMoSDee1H965C7TKcDjwTo
TwUm+aqv+sYMTBly5gJ5xl8jksf5zjdsbutV6sT8NOj7f9IuTVpm53gKf9SydNq6zJRBUK2g1eOH
33+uxK3BdIT+qDqdg6WfvHySpki2ZMKjy2zAcy/YdeuN9ml4BssjKjZU+ydgdEziZm1jz/w/oMhL
6dKQ74kGAhk5q+2OVKAGIEUYvF3XiUlalmRIZ4LerzD8tMqKIXPKuPYQwRIw2zPPWr2/Yo2CUrx+
h+fIV8jJksCWOBcpR2mLRtbF1UrwjdKa6VJAUjZddgh4L1aBsAFyRFKfUUJUsEoV8Wcailc+v+bO
gb9QEJ/IbmJ5c5WTd9Ym0L0hklX5z8cbD4TnnSKsPfNXdzsuZajlPE/SzhFRbImVGPMPJ5Wp7Kt9
YKYo/WKh3EEVUPgrMoewvFCg1bQF6Qgl3kM3p8u1rWZJcviPB3em39Nno7VxFBz+uIDuv/GSppy3
WwqJIWFQMTEluCvph2OcEVB+wiqp/2o1BA5wvS0O0g0e5NrO3cXNjXafxmNUOTERxtYGt7xyfhlb
TaJrXesdJQtoumJr3F4on72j6pGDpnsk9KTNt0GHZkaxK/ubDA+NBCPq8S225vxToae3uMo50sIO
2OMlvU5VT4grWa4lXy99rMkJ1TjuXPbZE6ECGWsMnxXuxtnu/gpVBCEA1KdDsXeSHqm21x/EYD3/
DOda2ZWigFyfok7b4skt/vi5Juw6RHKT6WoFJ0KAKJlXQeTaGzt/L4KhZBdlDrgHXumCTpBGqn9T
sn8F6H2Ae4CERIVbNEbwXT8jX5MBT/8534IkL7cI7islaWn0ju2CFGytQq5/gZe28Zz6S91WTyEy
GIFMkr67VQ6wrwzpcW6SzUfhu2Q+PRj4xwo8dK73sYLBhTVvU8dm3XeTkz4eNO0pPt8LQcXyvwZc
v3kVjUt+8G6nRncGQrXj4QNdpQmnKb/suEAxZZFmB7L7jyHec+izUx62JfFyS/10QfJsQ6RD1sjB
16gMYlhAFcO7HgEya4HQeERfGXkmRyIWyFHuqDviicbZ2wTz7LNek1dY2LPlj3u1CtIAVnVsmMuW
QvChjhf9cvnwvjpDm1okb7tnIwqq78UYDVPKMf0Uw/omNimKmmKLgdo42yaueyub/krJU4terdbo
humKe0rEfwoOyfKiYWFmjngb5vgprNR40P61j4vCy0UahgrPt9uzNWI0Q1GDRmNaXfe7C7qstSI6
tze5Q0fdiEHLYvjOsSwhtZIvv8WS1OW6jQhA8m9FETbd3zux8vXHFUXXVnYlS1LgezKGalny4hOV
8hoQVZMfOr/CH2DoBFQ4MLpTNe6JJa3JiRegMNcvBgxQUthhZOA0p2Mk1P3OOglLIEWOxtUGshhX
tUH576Lz8nBVufX0zu9a9E0ED3+7PXUUEJXBHJEqcbqcYBrm27RWRazBRg7LsV1xyeriILKTMuv5
woqmGO4Tmn/NnAJEsaJVMyfz8F4l8AKb7gRhvVQWUEnOfSW3Ls61CWqx0g6+sD/aE1w7IQTacTr1
22s5cTtWIYu3x2zWQfotOBP46cVNtMiM5qZX7waDSHTWLtjjcMx91Vdv/+fyUmJjOXqiV1+nqDLr
cIlJ5h8ocjeWY68oFAFqfas3/v9Ma0gqH9mY0kDVNTaeH9gROPxofQD9zZFllnCCPBjGLnSU/58U
4C8bYZi7efqE/nMbn3CG6NVCOSZPe1Nd5fXZouB1DIaVRMhv5zWWS0fpB7+b4OpyZKKiCFxI9vRt
XjI60lYUK30zqdjGnfmEUkHZ4vA6QgclYayRvsJ8vWXvL0+8qzTcbcXIq/VclzuOlTjrkvga6wPi
+LQ+rTfa28OeDK1SdyRmaQTZr5fKYJVjFluRC1pDUrKibLHGHpA9q/0sYm4zlA7wLrUItonc+09b
cViCHV7qRqJXnIm80wHUgLpS0+3NFRnOsRBqsvJUgJH/WoHhltBgKVPF+eHC3yOkrijg/TNActyb
Kn4wGjDTitYjRv5TmloeYQ/vAyZmL+7wRPQTbLcz3b8aM1B+qPY0hhCt4Bio3Yxyxuc5/Mb9f8pQ
JK5k4HSEANRTyv20fYEw+Je8IS3BxMSIo1lGuXF9S/O80HzyPH8JP7tBdWes1UDsu0yOqFVAJmwq
S0w7DeTnLeCDPsJFhMKDMxqPakFXXnC5AiFiyU14vKbnmPkGWwisVQw07WtQJO1BH30ktVPdSa5W
GzRbd3efu4IkvpmI/k7Uae2APdiGMAfDmMK7rGTQ6PLALDvaLRzisHFOwNmfWdBGtEPjY47IrvK+
bV9QuINYGsleBlBGz2NB4eUSV4e4WhDK21owT3uLfCYNVPjewUVrsT6J+2pWM4RkvPsMYcAf0n7Q
ftFa66/ERej7AEH2bB/EVYH0RSyeHEQXt926rSu11nd4caIYIwt+WNVC5OuLH/we7/mWA3bZVNiJ
N7Dczq0CHZ11yQyTG9S3M/lMciQEI6B/yXQZujMDVv07aS9bfQTarwiHnVbHfzBXhHGnOcpobjB0
zdG2elM4Rq6hV0gkxIaaZ38zlQs4O94p5W5ONY8bhZru2PCabD3eR5/WbsHpqqHX+Mui1XQEIUTU
slnUpDJaBoqaXHUlk7Qbkd6FyJHmJD9AZw+Zp01/61EMhTPNFUafuj3yPKn0GPPRDsurt6FBFrvK
sHPFQnvxZUXnJn8QK5r+NB9k8YxrRJsUf7/V96gYwkhEmYbpq29PU3zIYH/oShUJTg5Z67VIGLpT
D/2jDLAyrxSo4AfBk7E/lfFoqFJTEozKTEfxZgTln/ldV/Gkmhdvc1T5jvp3wx7ossRoJFWFAJ61
W6GKfn0DyqGVQ+HaY1NHwn/x/OrE/1zkYEvlt/2IWnlVScSldXG9OxUhLxbKCFT+jIhTDyT1AXfo
0xkpsUdwZjvLGErU+SHRFoldPsgebNSoCTMp22rXbenYp/q45NfvepDjIWrcfjlp52TWf3k9Yj7D
L3oYOoj6QOJmCsMSJGj3kJs8FVJbviJANfk39+EMpXo6/P05JybJ64qatEHBuqsTopH4uNG56Q1Q
mDp9tdtMOZk/ouXQ+P3uKBZmh0eQa1NsG/Wc5o+JUHnBy5AMBrVhpXK8btVzmOe1cucr+jL1OuqN
B50Nu1kIcLqFwJ52/LHQcLYpkouU3maE1WytJ+S4D6FVxRCgtyF2sB/QGLY4GNEAIPr2Ue40AYpw
tsHCVeLq4lefT92dt8HzayKK0YkUap1SbcdfT6pvMuN7X/+778/ipqskuX+MyhYFkdpV7yzCQU4f
nKsJMNz3EkCY1PqfIt5FpT/VSTWe58YLLDpdKgh0x5xXX9SKiU4O7lwfCaYHwv6RyqTgF2U1Q/r5
XBv/YVO+9XKfifIoQ+Cp2mpssGF4jQW0ob2UqgsRxBwSOKTIxvIDvW2KvW+QP+fGIA3Bf1/DoGw+
evVj9GlnTZY4LGKnPaCyu+Bb0FwR5IyeGOWAI7Dls+Fj2XGGweKQlM5wT64kpi/3wrg4cAbgihTp
X8BkPAqIKJQLXg33/hnK/KECHgVQ3hVyTTW0uuDaDsblKJpJMknPjuOIARABUPnGLxRmDdmrnr8z
+8OyGzhmXTKPW86OztcECV5kWTqp6EuFPFcTBWqOtYFl2DXw59SvZLDiZGHZ0LJY769Izx5vEIyL
1IQXe0XWhR00kAbWLFVSjQdiY6SkhnQfB7rH2u06ETEDsTefc+XPetD4Q5As3ZXz4VIOMUk3/w50
ZkFxE/GxcImDGL1EUG7xjhwVqdrQ+MBNrwMgTZuLf4e8/7bFUbi0s+8gyJvV1T49/EGlpOPmSubN
yo3f+drxQpdAbuTgd+wNMu6XdXcS5BZCJxyO0lQFUPq2mzTsNb4VHkn8m4OnFlQbDpI2gsMIwuWg
js9ORJSoSTxdnuCW+OZCm9p0sP/JeB9Ypqm8xUPxoNkkBJllBRgikVHr4wDteo/7qMT07MTJMsn4
e1bdTc8kjtKZpVmp/hWJsxfculobnpX8r87K/GgizWkHjEUiJ1qyZOw7Jsl45+dxuoxLbd+apxfk
Z2lTww44YPmRYcaDqZuEbYwzbHDrtJmeBHSiX0fMn/jcGnr7loeXtyykRN3SGamk8XDcNGSPI+ef
/5FqrzAs6QYZ/rXby1gYnz33Ev2yud7yrXx6HmAi1me+l5kNV9ZJR7xDofm0h685ygqxMqiJnYaJ
y4ucC/JbtMtpbwGUDF0BxxbnWrvgsQ822o7kfjebglT2g51340Q7a6OE7VgbPs7UdqMXLFJVI4y6
rRUxahxOe0X4nD7YdNt9lhgZupydbOz9nRiR5YSUv/A0UiEuo4ntgmZ7yRIA/CPiJTsENJjIGLMR
X2cmbqBOQ3xEkRhFeHusG+cbGohfR46lo5xMFghqRVQWWkRQZ7GYHx72EDC3AroBIiVkgGN5fO+Z
OYPEtlKfkLDIsSY1U4MFVT/gwygff7hXdCkckZ0E+HPknIVDT+ffGjpumGGsm0XUaamrrnWwo51+
oAG4Dxh9YEr09x2+f9KESAceqADkvbfzXnW3aGi2bsRg/a+FUK3Fm2peHCWwUcyVd7fniL8r27F+
xiooRRYDzu1g0qvzWfMGpl6rfOMMOt+eb9AhKb/oHXz7QHUdG6Xp1ytsK4ZpGX+qAeH7cbKeYSej
6pOPhwIEYfmqbFhEHLKn1kSVQRmnKJjJ/qiwxngEIwB8ekrK6hmV2k8QVKOp00JZvvwmeyWRHvxf
WXhvY9HfgrlcJDMpWCU5Bk7FjkdqS9x0d3OD6u9rABRgtSfWk5bwFyYaJ2lIBzszZKwsZH0OoYan
XPZuDV1AOSSr51g6SCwpReITWLRxx3Aumh7bGq6cLoB23szAGqvyraw6ixOYUVdUQegUcAUzuKcE
Clxqow8b25oGGwH4nKYr0DJ4X5qGWvCeb9q9pJ7aVk0cNtqcYxkiOhP7N4ZE1SHTuSIwDJ1VOA/d
yZ3zvgvGJJ533h+OiZQF4wx1HeFkxfZ6TZC9uyuij49KiwZwP9lhxMGzc6cmNDmRTg4+1aWXStcu
YEZz6x0I4tsIurVF6eDafnfjDA6EsrQ6uiQjb1WJowNPuKFjqGmh75nzrEZzr3vhTEB6hww0ZOqN
I09rH4uOCj/esIuV6uMXIC05SyFc5WlfNWZluLWDjHt28j0Xcf5M2bUCtA7SgGYFofI7JtbhHkVn
GiItXkAq44UEycVO5rge099avtsK71xCLCyM5yWJY43KcnoU+xdj35jTaiRW8HpDNQFQKyKZKrA/
HDl2Axfig952233d80dZDUfuMecrorHkIvhgsYgRbH9kRgHK1kIwbd/wSSVL1rQMrvbQuhuiUFNX
RmP0TMx67//22hwC17jWlLHM6+SQd87j514t2Wu2ukfl8umMy0uT9xFAB6mFx6LjFhxv0EljzX1X
z94nhM7ctmVrzRwEG/jQVSOLVSMonF0rbybcIKurlDsFkp3mvQ7Z74Tm6Mcj6sFHnN25aGZ7u7ka
SuWW9swpdRb4BzLUL7pbYKmDEFRlnAa2cEtG0agQoODvLZsZ03ctCkCbMDuC7XedyQZAfhDBk0+W
xwo/hwYmpJ+4orFReQKDyAE9l9lv/Jt5fF5NtLI/dJ3/+76wmIGRDw5bVNla2QpIxZSsvOViz+XY
Kh76Gk2jTCkQLfnZUKtsSemDitt2k8Qkxz5PtBS/vrDbnFjALNha4u4jr4A5ad4e7ruitgXKBd+E
FLYp3TaFESkdkbmziEBmCxOHf3DVZVFAw8JJ5l4Pd1GEnAoQQbg5qP/Ug1pLDFcZ3xIiQgWN2Zy+
1kSYm5UkuaVKo7NWpRKTVMb7tDX2iexOBcBNGrMV0ETq3t8i4Rb6OcBXWlpuMNuvtbb8GksckYN9
rilp2cyOgodqoM/UlqmKI3GhgeGNBhKw/qzdivgUAkPWANExIGVRb2h8TafK1K44szQHc8GsEODq
PSKxJknx1lrXI0DrP33fTtRn6IDX6UJrGklymm/67ufCLP9OgSOKaHU09JTWc1e4nDUGHnLe2ydw
A29SXDVA+TnEwWtl966wxBcYTzcUHGjIWVQGnhTySANAY1uD6//1/jb4e+niAPvQpmrgoyk7GRrt
PZnXa/UGd7eH936HONEV2mNG3bsEqBmfsPfa82SZz0OKvofvz7gAVOcopGz/hx6YLgPqJlkHmLnv
6eA2MpzrD6GmyO68Fcos/x9Fn20u1sKFCaf51T//c8OsaE4p2ziduwVHIlGvCk+Z+Vs1Kix/znOk
kVy2qKyWvCpHqPQOEw/mCWXaxBpQVMwNt8a3xtf8IG9wZsDibHQapN4BYvosEug+QYhwvVXmgKiC
ay8XU3ckZlvvBjLySXNOO4gCa/QW6yhOAKWlCJN+32AbIDA7kh7hGq7Jzh7y4LBZZ34gf1N/8jTH
66T13xorrtkG4VjbKc/ricyW+5FV+RA7n3tUGdCf0VnRddvnnWjL6EJf9I6YUqLHZGztulmKzaiB
4d9fnsup1hznOoeXD9suPhn7HIfxo+9Ex29vywX1jV/ydmq3n5SZaeoegbdy3px2u5Yf/UlaBmuD
sJTWujBhqQNAGB2bS78bIO7uJLnfoE9hddkG1skY2PjLWmSRMQ0NccqvFC4QWO9i41ZjLCw+JoGA
eOxWg3hfcvCt3PWv/DFfBGGHOAmJlTEJqMTQ/yXoD4B4OZOS7dg/8IG4et/l/fBkyg2iCZVy02RI
V2XakQv32cH7k0bSAUX5p99fSsQ7AV0lDHhwFVVc0v8Dz/XMWzBVLf+/YI2DXkN1BFUvggCGk3Sb
U04M8Jw2A4W97mcNTatT/KbYCo/7+NwPRbbc1CL9qFQocomLXesYeOP98nZbek417DV4Xe6FZCYL
K4QWGbDBqYYdBrYnOPupGzi02U4rLmYe3GLOp7cNvOasKpOEZktDOVeMRiBFxHKHXYjgAiNDPefG
4yZTcZscghzUaXVQZG/1I3AtWN5b8IdvNqytUa2t/XdghvZTRX1UkyOXsxt/q8t5efuvLoic2yBB
ln2y3zjVDRe44kdLIq+Zmko8CVewNPrX+Y1KrADm9yi3figaJrrb0noOBoMb3W04scYvE1+zzsxh
wc4czNTrihfx1Qv1hBkZo+kbtS8A9cIx6s4lgo/zgPmtFLIElIVWXAMsP+4UnQgrBG0l2Dk4+HyC
T2B0AvzBoVZqVJsO7DTQQgLa5RHBr8C7iOvgkz1aZdrpWSpdhzomHhtbBZJXIxkU5663j0rcN9Cu
ZQDcMXz85Y1HYssVp9K80qr56Q7G6AxprBGs7fjnwSTfJmmNCR5ZbGs/lYjRr09rTqse/j9rXwLN
z5OCutiMnHjXu/Ap9YLOGBR8P+5BghOMFulQ8STRWTb3jfwFFEte3LIYUojX39E9tNCieaJCGsOr
lQ5VuJbVkAqW/Jw40AfOfCWtj7pb9vWcrrdlUkeToMTuSxItWE+l1gFcH77bl5yVJGCvzuqJsy/J
WVBfgHLi7c+1C0TceyiwTZdooLSdgmbvmANd/Wh0NwWiOkgHd0PvKeCgcEtVdSis17drUpaoLkmd
38UWusHiS64brnNIo4QiM2GUmVstVoYskZHQggBy8VPs2FhP+Z0eYXWXRbBFwdeeKewAZhAZcWfh
HMuQJE3uSq3wHxsrG0/9QVzahKhp8/BvBftDJxHCa09TWI2QOMCu0EgsAeTDl0f9fwOU5emcXIGq
T6jpMooE0e0/1lfa+DXcnGj+jAN71+5fu2ruiQL/NgzWsIWj5yPflng7Slfm+7BO3PoQC2UetcoD
6uXVdUB/+mnMwyHhON6YCNWhPW1ufuzKZuzLE1zb1X8cKTkWIvrsyzXZG2qb3SccJujoaoDXsWcO
BdGRMG2VzenndollQdstTYDSHXWncIL5ewBoaCbYU1GHjXvKY16TCo1maHtxTQf2qwD/s2paKfyF
gszfZDqlblrCCtb/edkT9H6fwPgrwwbE0f5WgQ8ECUF8whnhSEH9Px5+Tq+F9ZIrSI20Sf6rwT6d
8wP2vWDPi8wYjYZno3ZOzzJXt4gwWIJyKRUl4mlgAgPkprIAFwt8LtIN1oOLB3EPg4MvXr9NgNns
NBZ4VYRj3YsNqewZS+698vHO8P0AiBkI+micFsJObuPqp0XlZqhZ28t9AdIFGh6A1VBluE99MKQs
LK059jdvcEFLhLyrj0xUeXyfgTvNcAzaH9VX3zKwlSOQJHigXbSKeLYYG2F+8YZd4aFaBP0GXyBX
Mgerl2xGXWWP2O/PI0Fp8U8tvUpZed718bKTmq0D90XzfviFSQv3dWqvChzYrg9Zo5NwgQJO7Aex
nxlyu08MPoBY9emc4baivE+yugyqRzSHpHg4YiXoezL6hXIdszgrbHTx5UTO9c95UrTGqnluAdDN
UFZw+itBvAlZHJziGtRIf/FIaCjH1zs1okqQ187lNAd5O0hEMGVueTeyctVL2RY8GrVxDIcJ4+DC
UdgLCLquLMprcQ4CVQJU8ncdFN+V498l7d+gaR1ORRupFEZzd3MBmAuC3SuLM7b996bU+kxq2Vaf
Iqr3ZUaJBN72wKQEzBUZwngJu0MrsAVe7je72D0NrpxcWzqQ8EIMcaCSh22nssxK4RA9QmGvT118
RV8wLYelzyvpLSUVFi4XM/HFyATHDB4rQYhM7W7Vcl9iVbB2TxEIyUfr7fJdiSkstv5i6qe3HjCg
EnuzkbHWZcuepNpbCcfimzPP2H+lyaYekpbwh4OOq7Qimbm0YuLXMAxPm6DtqgbbX4QHoQiH+evy
sWrKjQIEmOHkncHCb0oGvKupSLiMuuI2Zx7bM9H9m4R0WpBfS/pdUeiwLuhtNpXEcs16xVz6Lz1F
SZOKJDlhB87kM0g7glZbhv2ZakfqSZv2pUeDvrfuPA+gFlpWhKQ5IiFRJcbTWpzMDrucQXitlM5V
jEABtdkkMEWOv4gicGmgtlzyChbfP1LRw8qmzMDwVEyzauUgSSwJOvHONoUz/KqV490//oxYkPeJ
gaKOBHt8nrojpM/y3el6Xlx9XPyZCSJbi0EbSsfyd9pGA52SQPL1oDYrlJf+ygS3r6VtxjnPvuMz
Ki6c5Ydp0yEggqEpXpPTKbmc28GuldJb9WmT2XOSTkn1djP0tlhVX37cO3Ac4vyMysDfMILbH+aB
7Gn60Fbeunnb1luBjbvcR/sdiNtcIdwz/he4L+QcUqEFZ06sKh/7jepboZMTYP4H2vrSvrWpErUG
W/R87jAd35mlfKACaqibPL6cuSUX73fFEZ7tWaPQoRdHQX4A1nLq9UBYIpOvX5NjcQ4xvGk/Dlze
EKtrfEVxXhbouPbuZadrsM3smFzAP48wiUTtT230jN4rTgFC5RwKeIfKNlS7Mql9zvGGtzVQEeDy
cEvlTakeOO0vJz36QEhCj4Jgo3GxI2DLWeUO1j6aGjth4kbynXkJF/VKmmgi8gBrL5Drou2xixFr
Dzs6uU5ZsmBkj+c+YwSvw6rqPq609mzI5qVKbHS/P8z1uqgVmoScstgCX0oWNIz8oxOdtHCfrkPD
tqgUGDrmScXMvsRp1iPSSc7IOxlNAQPGiAOl4ehDtnd9J+ONsqD7hzcUBTo+RooKzFyYdbbBguVr
q7qgi3YSIM7TDkmQ7d8r0ilhvujX4BY3RnZu2NSkvurS4duD/yIGNh3arcGA6jY9oQEXs+4il89U
bS6Da7p8RnaHw5DNnHmDRxTC0BPMA+8LUKK/Af2uN3lobqfacsx0xPf/9ziy4mjBh34eUGunfNt/
Zx9LhbWnfzdWQ3/WyIaqS9x9B0ur0Yw7fJkuKUuPQG9rTHth1frGOyoexZP38ukctsHq+UkrxLQO
0r/rnc264ESK84OqqkZ0kwxgRVEDNaupCTEgv7c7U9To+ojbP7mDKSam12CociT64yujJEMIRR1z
DNFqwGEGX5Mw3e/Cjndvf4l1gb7jAvlL7IZAdTy7YSd+tXbgKWObMq04A2mt9itSQwUZ2DlhIIGK
cp5gCMhI4+RqMfzE4IQRTOSScWkke7c/WdX36Yc8+7tlbhrqer4RiQnZZH8Zz+Efg8SZI7RK1aQg
ehGbBZ+xcIpxVv5+1j604/gU0/FaTLKKIy++RODs4y0p39Yb0FixInHL0UAmUxldHeSpkmhGjdk8
jByEyhiLzay5xJEpUPtYc8cNqhTxkBRxk80gDdg/eFv7pACWG8WKj/twyxcqPnkEolMBrY3YZQZ/
nTfkRd4XuycnxVnrKpVKJD3yH9U9A+0EEbQa9hfF3yvCTJQYzq2wnFgdwSg6zbZwY1wU2ASuPFfa
nBGD6MupZ4RVoWRJIwVf+3Ywmd7dZcrltE/pnj4RxdF+g9ISL5tnHgDdcTiK9zIf8siDNQhJjEI7
II1jrP2M7i/rPyvozi9f/u4fxASCe0SWvuvkhjj7XXDgdA5zl1qhcxJ+2Bo2rOODKUg8VGPWfa+P
5sUFG/QdtlxMpojsUbUzRqhWM8Xqtxoz7llpkHXI2zXUnH6GZ4AaUX0BV1APr9Hv46X+h/w6F6oM
zIql/DCRg2jVb0maH7ZR2TfStOBQeTr6ngMp8tMJsrNVJTeBU29eW1xVb9LE0Wz039M1dRQPxt3z
p7lRBJgJ3DXBzrPfX11vZOQ/876pPcIx0v5cZh8VYeIRN4kH0xFZc1lBfKEVyMSjmpthgCwSCctC
UILXq7oZStj+Y2Wf2jpKHGom22O5aOwACUZzu331rH226xaM0IWZkzxo0JmaRWD2Fxqn816y4CWH
mRsU3to0yuMumCpzqvKL3m6SjIyj/TgxnALfrkvNqFCbf53AMOrU3lEyCR9sh4SFyXDtoe4WUyvE
D80VNoB2hcLsNGHjS5oAGAPQZUukUeCESQXqij43OK4lJdPeBeTpDRPJTf9CdIcMK3rXcAQRR4wR
h0drbcAS/40+h77oKNElqzdQtN29DJKe0LQf1oIGgU/1m75NJgE5sDsMv5QymadkcTXsVDHY4x8s
nlWnjSw2SF2bGshBKDtarEuXE10UxJOjhZwX/ef80PA3/c0TsjVro5Gw7Qu3Gd3o7zLmKdm/qMYz
eYE0sp/4dHhXOvSvTAS6de6/2VBiFfuw73LE5i8/wXuyLfPAWXZ1U+9pIcCCD6jpRYdIvYQ7IYcv
Fka7xfJ98B/+sj7R4Xy04zaxQUBNMmcjkLa2wO+dRnEQrbJp4La0YOBTKdaLerNxmLVxxYXoRIyH
NSMmFiwh6li4+ZFG5ewkNnEaWH5Ca+4KIbfU8pc/U8yyWkTJ6+zjSGjp8QRk9P5Io3mijxwm25xy
oXm/xfgQ0xpAPwdkLXV+YgQYIfvq+VP0cafAHBVfwzGWq/4h+f1bjlpdmb3Vx6r64/EDxexvR4Ms
ZwG10r6tZsjNIX3NQuZrEtxgoW/I7s71Q5cgiP+qvU+V3jlPPHvRHhdQa8CyXF0vNqZPHJATXx5J
2CEMvQZR8JHLNUKGUWvBn0jyP3YTFlOD3YH+mO3JG4CUdOrjCf6jCYEht290UZkYTpQSA/wrM/ni
+f1qZxGw++Hp0CZpsBmlLa/5UdAz6qIVnGrowhRcCKZ3pNxyqURPGOOcSHEmMSvCipCUaS82KKwX
qpdw8a8J2XBZWl9Vd6enc62Hmot3EOr+TAnY3ygAKPMeqbA6nFHE+sHJrF6kKUJ8xi8xx2i+Kwu1
mWL04qwe3OnPMufDKXmuFD73g6HvA4yVlqXBkAKi7TO9a42ZLsMSzea6w9lT+i1z+X+a8J00D7rA
WgsPhqV7jCsvBoL+2TPpdZSsocPgtY3bJRjIAyb3hFMnS2wEEvEWs0/jmy4Mmtqss73gsXfw7PC/
a61DOQsNiuET6wviexCm6/suqCRQ5cTsIGcFJxdlRc0etKtL4yeKDFfmfbq6/aeB8GxnynZCgE1a
rJSjskkFwBuSnhS4j17MoMZZoyMn50hImJ2TzCJdh6jzUdZpvf+ImCqFzLRN0l0DD5IimUwmVwxT
BhmVUoTJeW33fv9vXEuRod0pZ4w2D1+KfF1RacfMa3TeV1zgzALk6OnY3DGwaQRwcLCRZIUL7RxL
hut98P2MxnGG640uZ6R8bT6Ui4IaSYpSZ4roKiSOZ7w+qwXGpLf2ZFUHMoHTi+oGRX8LhB4F8poX
OPUBRjiJFvfmBVVqjUBS8slADaDHG8SCo5ncGKeg2smW4a7QihkS5/c6bUIzOiMFmoDjqKzqlezj
hAQOWZHpRXoLMwSBK6P2KgnUK4kgd5hb20cLgxHlpHr8TCuO4x9A2ENMMBMxiMdGK7nFX35HXR/a
Jfn8BlTvF722GbuPQi3LSgMLtsIvGVdGsTKwijgaqJ409pslo1g4eSH+bLDo/rS+RU1t1oMSIQA2
uc1pvxJcStu2kEKIntvzsFMmNeTKX8iM2baY87jl6sWT043xNYf0DtIXJRCa0pT0Xr++glgUf6mJ
9WsnpjEx+FWC1CJ6xxU0tTwrtbtrFhCQHtj/9RuHsdcgRIrNwFJ9cV8+bd6P0OIhT7YTDeWibj5J
MBa5PGcFVnV++6xuQTiyeSpihwInjzoLbgkSJ5Ei3BWZjCnek6X1nAknnKQdM2gPjOnpUBsjwwrm
3gX/rco5lRpaBZKDNxlAOPCEzz92sk2SWDWlbr5E6ukns6B50Xn2omBOEk7bBanJHi6gon5r6rVo
CEiH3iCbt1p/llYdp1LYSPvShsSWh6AlOnZE6LnQssu9Jpn04gI6YmD9FECfheL/hPrnIhZ+RKyu
PjUZE3dUXdn8RzqmfCyaFa8UDMDxAwzM33MLuwT6q8LPP+8l1E0WRtQ8MblNZ9gWBZu4I/vQtVoa
2rrPUhqHNg/+ZMZokxT2X1uT7GmuB14A3mo0Z9L4g3H6nRHCRZRqwFblK9J+TD3pu8qLXZLugyh0
Mak+KdQALn4vD5g55VeYBgscEm5Z+QeIPqx7QdAI262cBa2hd50pbqy/Uv0cQ8LDXNjjSqBvMvqc
xDWYGZjyUoUPS7RdzxdIieQ67aqdqfNWhcctrPQ3MXRx7+tRHo0RyeQ+OmtiIXkt/xvS3DVIEjZ+
4NLJFawBzrRn8xFkGUV3fk/OJ0T76oF/zuI8XrD0fHfRlcp9dPV/OCe4HurjvZ4qk+jnxiNNN50c
76xZQxSUWa2eppdFZ7I7NCf+eNAMOcWOI+rNoX5UruNKOioOLa6Z+G4+jeL0QoyiFaqOQLt6s1mg
Sz5VHzaTuiNFDNPatpkYY3OikCZQYGoVadcxUZm/VKUluXHUYQnzL2xxaz33wNM5/z6LUYfC2GK2
v/asYybOwPL6ng90IerHSy+ezb0rRg2y2Oqf+Z08nshLUNLD47f4WNsQ8y18bWfvIkn48kvfv5jz
jY3ioZrL22TOQNAF0XJXkOe7LzZVMxvCstViUPG1FHs7yojj0ANoKao7a3fFxNKbI+Wlf1Cyuvcy
2EUZIpHxVb6ej0iWawHI2n4EfNyD/mi8fE2t0JBBKzF4IiicpM0HqdOvQKeDfZZwTuShusBARGRw
Iqx7Nc7wF2HHCF6fs/c605GATR2O4kq4QKuQat43GTcY3SLvtOWhsAylxknWRcfNDi8hzp8k+GcX
18dOTM7OcHXtSOTPmTHGcDDeLAjc011bokdZfJ45iGg2srgS73BpiIEF9JfJlhvTpz7nzJjRQF9L
aIDExIdpWnDtx5IO+c8zaDSkITfRICudhESTE/xnX7GnWqyansrO5fR01gABs8KW+VAvejryNci2
3byrZNKxBAxdIWqDWq6K3QG6SYhsDKHSuNwr4je/pV/FTGs2BgBUG4SaOkNagM/4kg7xCr10LpKw
2UnlexPSnKnalV/AY+baST7T/3urqWNjpY9JRHBgI7BPBcSiYpnSoKiAomDnGaqo0/8Z2Nm82Kg+
zTH4gKjxB4DiRrg28sm7KrBJHwAdyjIlSElK+k8UKj4ZQHaDovGzcTLq+/xQWBvIytdIakXzzXkc
pnQbV8wZdI0gm0M4jZRhSPOoKyT32TAW9YGBep+edVDvLDaqQJ99JPrxBtVdaHqvmPGMPo7KNWTm
YB3RRYdxwVFFuljAWzi4o4T/fm0jqjvpontcWdfrm8zoUfflNV9zPflzaymDXAhB6RCxgk/+SBzO
NZsK9+Iyx43VP2oKHfAa+8pbhh+w2r4Vty24RXsZ+VeZBrQ1YJm31OPVofTKihdCaEtEx7HJ6auB
23Q2ZkGyUU2RJbMEWhOYyZs5aRViHBYS9azgd0hPeeJXsQcQvVJUuHwbRlpK1DL6S2R3E5mG9Els
XY3ERldy49ar+VV0bMdfHu3qBspiaWhuuQ9O3ZzlRi7Uiksj+ml8HHMoQD5hUvUen6CJzvunmCQb
/Zo7mfSVQJhv24i1I2wEiMrLn8qVJkPZvVCfRHuF5vIfg85r7lGXCP1UWUg6WDQpbFzZ8MoGSLBx
cQT+AmQ6itfhjVUirDmH/709sD7JNHk1e0g1GtINGEaeWE5kBsXO+wfnlZYU/mKEgoyy0+oFj+N8
aFeveV/t6rPF1Rs0KzJ2xEvIcR3RX+DYrS6V8lQgn7YMgzHP1OtYnDXehE8bJIQzgr08ttx6A2GK
t30YErdKqwF9cv7msLLpcArBFiQeMYNFwRXz79x3PKf+ObOZsr/59mHsH/ml5DQ+eVmG242e2jGH
h7RRWBKoYQrAUZ3eE3BRWNm9djbHKMwUJzTdf7MvLjpTc7Gwe/evpWmcTNYA4PesxBNeK/q1IZ6F
x5P2DtPZVMULx1E91NeIknejoahHu3p4Xg07QASuVxg88cac5T5U+MU2IxttmGx7H37gX/kDBEIW
sDmHFyt42MKGrQdDmggkL0ZyY/1IdPCoh+62rEp934h+gh1HsfqSfPX7M2Q5kciTyIQX1j6oYcN2
7elCZu7EmFCi4BnI5oWqeKHz5/fzyl9nVOZMaetL+fSFwDqOWmXJ1trxvz+i7YL2lbBg8Dr3sByR
uULdkqEAoy5X8qp8ARV1C1GWTvvAwE+xmstj6jl3swhCo9Kab5a44a1rNJxqiVLdju94jN5SUMvV
0m1oytp5WH7bCM9HWxT446lBDmli/mCzuq7E64KOkvm34kY/eof2Et6ifixoe+2e4Z4vAo9+5QnB
hP+DhHtVe8E35NzZnEhVvilLjGuXE5sr1/qPaf5cU3V8by8nvnCRonQkd54viDMfFYLWl0H+Qste
wF/sdzvr/DwzUsJpSfwN2RyRE6MXa35AOkRqQuLnyG5tjrzpzgPX9dE5bTuIAMd7a5BoCbSBAFbB
rCGpb1+Q/vnK8Q4ZAxmRivxFZBYbDUePCrarx9D33ziAsbF1cNlVCxPTybBCo2Qb9uqxyowNcA5d
yDEzw940OKyToHdXHvKrWhSfp5vLDBev71ro8RP/s4UAxQJRlG9pqhuSOrb7kzxSdcTdDfw8xCIh
Fh7C7D10s4vcy8ml9Qg4CsNSN5ose5R2Af29tvfraXcX6pepw2F5mqAf08syKaiSIxBGgZgs4RMd
KviLESuPV/96jYixS+Cm6CZajee8DS3T9oGbwdvFBLryxbqg1r9AYqbNZhLO/FviU/NcMJ1MxD1y
iCTGvCArXQvy2O3yvef5aQ7o7HK30TOAguzyhW0EzsWlnpL2ae2r98YBeW+DGN7zUc4JNlrTmyB3
O7q6AEUBqsk1jQ1KYj+w+umtw1Hc8qPytC+blmZ4jIijsnCi8i8hLcLxEkZtp24uFv+kE5OWDISB
F3rLbB7jFNeOs29XKB0eVrxpGwcts7LzZ6/YcxBTYpYM7oSnmxLWWLLVIyDm2A/NJKh7iyzJrdp8
PkP2vxzZW8A2DW03hmOz1wxSU39I9YTpHAwmEnWt+5N3N4QBNcTYJJ7jXjAFdM33vMDLhgILSSNP
8zfzb6Vp0b0/4UadOONaVcVbaPv68lWl2sNcDtkQd0eMzH+b8qOT+SdYe00adkUMC++mqJWSE5XK
65v+0fRBrdO52eVrArHR2+mMFJX1hSuHgVDcpB5oSRr0SbWAtk8qwXyTdO4Z05jTLL9GwgYD7rS5
TCDj6iLjMYcp6543/L89Z71p784F/E5P1kRE4E0yKTczTSgdQz2T+q2e1UxV5Lxzl1Q6+dUWBZt9
pMad3eIkHRnnFiKPWu7RWpPj2vB31UwmgJsVz0d6DrOJme1kjKgHVYawGDtk0ByrfrekbzYGcssj
msu7p6GWSHBJulr/Gxk20IPyanfkn8z+XaeBSzPTJ8YkXX0AAZvFvu1Yti+oT74KoriC59efgi29
/iShvSRJEAwEF670xXexVny1akPTpZx0NsE0V8OX+tkToFF5IuPxUGEe4QrMLd/n8ZYzVUxpkS1d
kvqklyvuFlfVjhhIhvzoaNJ7v9FDFzupi2D3sRamHIty7Nh2XCYIlRIPPK/uCjBcpL4UnijZee2k
NlssBycv4AqBuqim9cvIvroH+C3SnFmI85eh9723blMTal0YcPsdzn1DH6nIZAeNCgzUOyydnrWt
n031wyVIAdg6g9eCMlrqpsE1X4EgMO/lGBw7V01C+dwJbjqIkZZUVY1JvVleDROZRUzZEA9ceFu4
WTaKYg52sqCLlLJUHuc0Y1o7m9F5JaxRZ3I1W4UYa3zp50UBkalBXJ2VB7v2P6r3QIvjBLqOcUN+
Sne3mx/kmzeovaTH3bX9RBbjYjO109Vtt/EbEv7EiMH1SnLWckJuw8Y+aWj04TFyhIDcbHr2wDBe
6iESzC4UaRxGsHioKiZOHsd6ry2+CMICF7StOX+BkLTneCRPF600dZXsqPL5t0GpO6J9o/HQQyyg
fkXjRYmc3Sl+zo5au16YB0qKyX2JzfbiVHAQxzRYj4UgbJFMFXCHM+Lp1L/zlYxNGMO+RWZ+7QjI
XxYs3ghp4dnldZn/VDXOT/EK37d3Q11SD+5DeDYzQpN7wmVlz2e3sk2ODh3H89FUZZqgWVuHb/2W
sVAvSH3gykvZwo8I/tOjSOacVgKCYDlKXnXqUGOwwXxZqXW3b2HGvempIKu64Hjn1GlnoNwwUPIJ
Er7S1W2vtSE5pkUlILb1KdDry/cxs8/D45vQux9l7uoB9oRENiq8yh0qvsr5vj7QAuwdfQmJLf4I
28XoVy+q8Sk54+/Uda+4QmyRRyNPfG4FRieBIqfsPzWYLkbUF/xmQMwIemKr4lG0EMoDp86q54Cm
ALB+q/57/fgF2HLNG15pjALRmdfwlcMcfXxfMSfKsM6fCYQIn1XcwOUyO+AlAJenOIt+byeR/Z8d
VKefG6loHs+CYnPepEeE3CTstlYh4RdLFZFpg/9t/caX3VIzZ7dcVNCJn5SqCvlybhRUewX366Mg
XKV/tkDB9HiftWJj4v9wYyxrFt/tFvj4zphyPady8M0Pk1IF+eT2Ep/V6TAq2SunZKSE8I9YbcB0
DZkAovpWS0GVhafWJlrTy6N+QxjXCJmBieBBMh6zTH7i5aYPoTxG6ANO+9+Im5JKnwP3qxKpzAZM
0MWLx821CBTXxIkXpHKcZyLkyn+9oJpC9ZJlWLedVusqL+s56SEKnyYxajF0+BZBLOSZ9KuIMvoN
bpW91rW5DoLsxFPe7/FcD04D0+L+yYcgSpSQxRpZ2927nHU5Dlm45OCTBbuXFOoz6hgB5Mi2twVx
wK3n/V6MXeOtnOow3e2mmrwcc2SQu6Lt3mn/IBe5dkR5umi9ByF5G12qn333a4RGPgeamRICoymr
91IO4tPN5hxIUrNoMX//gSCPx3B5gj4GrG3bpcoUUPtqcolhUXAyirnHU5H+hx0OtCUj4ZtOlATB
R4xU46N2ijinBTxhMGhSN6rK4CKRvCYcWD3RfiII8vbUlvxtg3Yc6c7kR3E9qmrBTrSXDaZFWfbI
FGzU0VIE7EZN863uENnUi5O5JeJrUE8JfZFOhKDEBxu0I2L2Ke3pdwiOY/O0er+09L8wKSIfZ/qx
svDxOyy708c0iY4T0Bm0Cdb+PEiXk2kSMQNqy/uzmKWLDFZJGHpt/ibJAZTThYMA/P5SoxcwYhJ6
5x+vOz3cpLdtCKrz4EPMfqkCGthCv6GCRNY3SeK8IJ3WKGz0McufTLMBR+2RJIZqL1Q5ZTKGitBf
ZkOVIRC2mW3wf0kgZSQwAwZhYCMcCc/TKXsdC3HA2AtVJo1tLBBVkRirMeMjnJByaCDG5lxtibJc
5xxOPBAabUDHhF66mYm1vK34QyJdz9lIqn1SASsSoElxRFjW90s0jfaqty7cPc1h/cPndk3gEByM
b1CeAGLYxYRxe+Qj5va/cD8wMhJ/Jq5aZ6zgU0ogdI3kl90JWt40VfJxT/oMw6xh2C4HfxrZFYpK
aXh+CfJnCXZjHwGPDZMOH+r0w4vgwzYcjQ9/ryojsGHLO+ux57kmentvpqdhqvjkI+jPa9CBZkN0
TpYkQ2lWamSxovbTM2uOIK2kfOeBvH6j9ECoMZ52x6MtkwuEJRayr7pjH6MvfWfqRyEtyS9SZdqx
ff/jgP1bCDOIQyGg9qaqGts0HYmZewgPcnRLp2TE7ddEd/tn4mES821mFCKiSFNCmQQ8FKf+JTzc
f55R2ZNLkcdR1hQw7aG2fBQmNLgI6gVDuJfqV2oOoQdznUIfZYmJr1ckgLbSXGWymASDrZmS8IaC
WnCVXAZsd8qPsxm4Cnxajo8eNW15reenaPyPDEYXv8xyHvD4MIOJdg1qoCPu0048JxpO9lQTIz0D
v/5HStFl1iGdnGFkQJ7N5pmBC4nJTwhLFYZ5D7mhNaAB/jtJEOXdu6g0n8WWS8kP222+3SK8k8c9
HSEThzdG4iT8b2EyjVytY8bY2PpOyed3uol+xthy6A/6jNtjrv+ae/3Ff+9NcGzrTBCv2qLmllrp
OVsS4oaEAjAxjVRFSAjAGE2iECV/UOtChBcXnJbPvbNSNmCme0qjfokyPTVJgV8C6/iWqlJRmsOh
HCwZymjZU8/PLjxUOujOUEGcW9C8u7zai5B5FtCLswYFkFzatKHgtJLP2WEbhZUhnzdrdfg2/qfX
NPUWIRhamcGneg9vc7eeNgD5/mRovDvMaCLZbqtnh1h+6B4CFxwQ+BrSQ8AFTNHCWTPCsblH/9UD
/2wURwotv7rTPocmn6bIiyvY6OcmXwaMptyAUYW/jFQiF3eWKuKiQ6VqNC/CURSOw1XqBFQJSADN
iFv+ppTYbgkkLn0gTwd1flOHBZrEX7OnCE5ljWuxQ0baE0VO9/c/hk6AbvyRm1K0Ydq2/Ys3nzLG
vDY33Q30QEkcI9wAIgQIcgCLhawUvRUY4evfxcT1Jkh6DIZVnz7cMjvs2w9q9PCuXXH+GqVUGjd3
NKtARnrD+YI3ftVYpo/WwV6MYLgG2GBqiUIYdggJLpDPPIJEvdTdCuSlwytaj9L8zmmEfS9bEWEv
hLQ436wilCdQHWaDXYsz3hBCVbW56yuMWpDjI6y5wVj9OD2xFcrHwpPyFDo42b4Qm81wV6sROF0H
BtJyb7nIQhQdiennJDMuS990CatpKVPPHnLBQup6gMv/Y+GwCi3UrNeEK/XTdixmj08p/qp3n6Ou
7RdYNm2Y3Zh2+aGFaoUOEum4YyDvpSpZ7bxwpHlkKF6krB/KePCsWeew9noKboDMb+sBHVhTXD4l
yewJccrHUf7zcGkr+eHear4YKJTCuIObOfvi1ZKXjBNTeLiHUWyBGyY+PDLrT7prFIs3GqlqDL4j
nLrSh9OeMETeIzXfXCobkEqEkutuIBYU3zXil9/6XkQb/Gfem/0fzZTw8CQ7g87cBBJED8q42URZ
3OtFB7I8Za7SG9Ays+mquIk+41GA0XxLMMDYhMLBfBB4VG+8JLqj9umE7M0cdDYFbjy41G5YjDL7
wHcpMYmQh3PxwAqmrNJWR91nl+b0nSTkUp6AvE/m6kKyfc2N72VrS1rUl8on7ElPtmzg/tFsTMxj
GS1/M+KW6thtLBTaLzqce337YIk2UbMap0A7AA7q9sutdVhsZ2wFrv3PqKbYjW7d2HF7GjZefgeT
PZU1u95prpMxeRonnrVZhR+lHP64pUC7WwLVyIB00OFtGF7JXzr9FMvO1mxMi3h9otBaTlZRFYNh
tdPfz1nDql1LkvY3U8MPBHu7YIWu0ZhkmHNbC2/qZykq/5SdE6vfDaYQfTKJmn74xWhSl3SWOhJ3
fBFShU9Kj/vLxqCtKh9epuL1CS4c2U5w31uZvL0WIpOiK+Ten6jR8KQrElTaUZu+3tV4vlDSHY4b
4s1hyHSwfOM7gOlD7MsmjboDirjHlyRhawgtlgu4sNbPUwlYU6be1/6R/6MLU54WVidwwX5OTn0L
9xNSQkt2Z6yQlzRYufBsAw/gnDUUKjN6+tTNzlPpqbrbXemelxXCn+UaReL/qS6Blg+GMrbmemoW
+EJ9w2wnjCl6nm0+NfkRwk7vxNwzGTRaGR92r8/aga7JyU8ccyAJU4EnhGwxPIcH4KOykXYAPNDs
xosegCOHBpb1yY2LzR/dSD0gPzfntMB2b9KTYFNQDkHnZbK9x4932Q5LGUafzFlL7BeRSbV4FXOi
yEMSnBAaursUAPMvrcEQgkaGaNV3BdCBVn8cBQVKh2Jz935bFmDL2OC3mKSqP00IEDzWiAkdKlVb
xWSZ1Mj2+HN0Z+Zfm5SFYlyCz+8Fz3ZXzdYzmPMf9nzafx4jO2LBrMmNBXRcai/4F2M+772riJ24
1Q/0FMYGG88nv4AYqAKrbHoYsZvr/QDooTTRYsJkRpB2aZPuahjGCTKvI0hBkwOTVAT6SaAsv6A9
rc4weeKRlpL4tJypxLGrjYXN5eU0Bh4kjs4XFIyiUVRdzBgYjaDmAabuNG3gnDAGjGtXJpOFULra
wiOw6mFTBxReILmnBnBjD7dlvZQQzNceIHT9+p9zltN898ZnMBr90N7s+sWZOD7/48EK3vNueK9+
zrNwIa7RcVUlSUXC1IHvulIW3o8LmcdsIBU27Z7+Q7pfrsRp1oIInK52XyU3q7OAb4O54Zy4rthS
L0uFwRKWuQ6nCF2wFLn5S/jXw05VOdOVqq8S+rCFzfPfNospmu2YPX3+Hn02xU4khc57wZK6ZKFe
6ZPftYLBcPFmR5Ov3L/I5YVFMHULO18A3wOuGkxC7ILy97+fu01eMxaS6p1kUDgm+uevgdM3qhIW
5/ymC3RXc3bd1EUOwyDLDGix7OnF5P+cYn4hmP/o3bExBfG8HZ9VzQUrs6Ru8U1cTZkE49LjujZt
5ReQv3OkKZ8WBOJi7SoPv0c6Zz4UcNK1DzGmyskt2/h0jjy1uaNvTun827i4q/ZypDbkJIezQgcT
1Num+lECTvz1xGIP34IOFLseNFyCp323mnZ3uuCxTRlOiYa6yeiRvrPIVEM3GdAImQnEqsfrIPH7
QJKQQG2NDos1evcfMeXsIt7vTmvXGl4KYdocx9FbvI1ZsCf7cs2GJJKKufOR21m4+K2BDDvQYiXu
+QeLyJ3wfE9eCi1ZXLb75hDLLFVDfSj0rwFC0Zt0wQWKGSce84eK0d/bKNG6dVlN18komKN/hFXs
rDkm4ba0mHfiAgJ1FOXznepkE3VJZg6yn3CkWtUp10MdGBVPAr8Ga2MMqKSnQ7hWW26ZyhbcsyZk
/2J60fPwEfgr5WBqmboFsib33zo/RVeO+fpkbXloUocU+maF5Np1+IRHHl36p8iW0CsqViu/A5CH
cQJPOI2qhMXdCyu1MdbHoXIck561SB2fCllGNbGy84myMwaOZzSqnDa+leFOMgJef8WuumvjD8fx
RC5zp0y1yWGk73E2gx1GMfKThmvvZphHHrYg1RMguZ/NKNmoUH0zvkEfJY0NyWWglr49HB7f9alb
6nVbftAp9JHqyNOyseWbcDVN7uVxYx/0sCGOIQW13a24MQVnwhQtREqvFBhMej+Pq8MoNxq7r6GJ
j3Cng0AaDc5yc8iXWYHDOYYqYuO0mswgFaftay1fRtPIjIo1K114cSlvopAoSDvJbMuL0M2lgpGd
UId1mMBU0gRkheHALJ5I0VBlhW1PKtag7OcasdHjMTh8G5rf8RIa4PzrsMlimQTE58hHNWgqhHaA
6HL8j4bKtGGUndKbdnCn3pYdL5IcrLmlvIB+WsSYgWmor3EYlLegUpGmyBaRUvkHIGe6jq35nXf8
7RK5DIjMT7PG/s4wRBTmPSyX4RdDGMhPKEngySBOyTQJagGfVfwBAah2yYp5bPkeOPCuxvCjzLFZ
lZKOo5LMVVZNxAyaOVvu6tBbc9LPMaEr/YxdhFDtmNTK7HbqJkyfUeeGgbDB6R8O/fu/itr9JJxJ
CdWEL05EayHTyK8xWn47fzt3DFNdp/IJcFDW+XN1HNF0fXEjg+/TjkVvKDKBdkACW3hYvEms6Gue
X4V6dMwZdne3M/zdwGYgQCUjTWnzar5s1oaNfGdHyJCvJjJh8hlLBK5hGgohwkN6r+uLkI+Du8yy
ErhYnREXVjYqhsYGX0aGuDlcefGQ4UTLpyd7mSa7swAtNp0PA4tZlt+yl50AvnVhB7gnn1jUE3jh
oyhPTPFTAuW2U6YFvqO8UPINFnl8jurlEXrpAYTIy+Jc7Hrs5Tq9fBrvRajH9dKFPFkOmnpRLW3l
dtv+5gR+rPmUBNvH3KqWkzZpKfjBv9v2567VsQMzmoPTcPOcLSSN0kiOA/YGaVB0EPOJErkd2gY9
3JOvzrdtK+UObrB5ZCSliVFTqq0SCv18DA+cDGJLzrcXjbZDPP52sYuKIMWbwToJ86t2imLCHSd/
2g7ngUbDyKeS5S2GvDaQ+9TttU555GxjnSJ7dl5baqAL8DrHKEyiUixydxtE27xs+/BhwSm1s8mr
TGNQ0fV9JcCl3GIo9ssX5iIbeCPM+t/ahcQnDEONnah/chpG0CRMt/9i0uDN52YBNnZGIj2MgvP8
b4HlzOkgHJ4ngVQyS6QSsrSl6NzeFhwwFuEv/Te9uDFNwSjG9s28xsDGtXW4L9k7+7vT3OGF5BAc
DFDYe1TXd7SeEnT5SWShdzjBj2vjrfxu/6Z5nAT624E9+/8DIeWsWrdxadm9AkIkXuorczQLs4SP
9gyicSBGmYFJszJGWewCFVBavbfvbF3r1zukSLTYSbEDqq+FpWn9cxNbBVw5ZExYCnd+HRr/EyW5
CElSJ6hUjtIJ1gqUsNKCSu1Uj1T0JnOlajU/Nt3xqWuFebAcrtTQkOULItFAVC34K5B8qoQr6c2u
CWlz9j6WZdweJZzSf5fWbsApp+Mn3Q9lGrDg45CDH0l8d6API9/ehu7+VSOkr9lCCVo9TspNDknv
nMz822/E5bgUGjBdvPuERLDUGjEvmFD+8Wn0Z9tnwlzWCXsVFX5I3eYeT7baHDRWs8k0ZUIlwSUZ
k87YiryPgU6Vx8KPvH7YE2E3hbs8UgsXjjOvTc4iX+NOVRCC/cEfcyy97/YusQm6KUbT++Og4NHj
V1fOINdlT4TFG9JofG4vNKZLrTwPu7aBcS4wHvF9g7JQ30WlvxfGVop7UvZlsCs8PVtsWg3U8cdt
NIZ9ZWZoWmS/JrEoSwxRIaOU4lCf6KCiobEcUiEBut2RWeKYSo3ZA+LDrGRMfBCBv+ibxy79wYW9
aQjfbDxVfDtyd8wsWLbRMcPaB1pEssCiegzZmP0xixVXoFNwFWKw6ol4Kmmi08Ds1m10ndA1UOoO
N7V5xIXvuAmGStha0zcEU5A7CPDH7b1pAyAmNF25jGnzjg1q287maRoW6ujCf5wt+wp5CkkBYjpl
o4gy85M25jjWWdL9KjH7R/A1gwvCgKxmUUqhJaOTJ62vgoUZ6hWCTajK+whGolFfRHQwJrq9L0LU
MGfq/GAJp8qIrYrYemF57d+eXNz4N9Sfnd3Y/YylX/TwGRdJrPEXZJwFfjuPcLWVvc4CsQfda8pD
RcsKzfkGZ1M0yzGP1VRZ0n0EXYk+gz/QIsXNjH7NjJ91JsVWBAVnhUcIWikLIIHw1vPiZVwxzGLp
aqmroZWgJKBBWYMNHA+MlU6h36+nYc3xjf3qsbCD2IN21TmTsTXUfqH5gZut47vl5iUB+EexIjF9
h5cqd5I6E7k6CysWZKupa/sS0g0pTJUqolBa/KrkXzMYB9yiW5zOF0ruxopu+7v5Iaq3o6bzyVDW
38V0HXi6ixi8i25BxOTgSI12HXKgv52PzDP1xzAnduVWeZHZMxWgmqsBkhZfMWPiN7NWZeKSRIoe
UOyoassOhH08OV/3FurPfnpDopOlvFxyyJ9/Tdj7tQWI4Xqyc0xhuRwC5avDQsGXjB3U7OgrCYNw
iLp1sfXjme84WPJWf4tUY1KH3jx/O4cQG5P/0dv+9j4h5iyglgmIAyRvRqqfBg9emCG+tiDZdLhf
P56RcTp67jNJr7akJKZMrwhFKUk7YXo2P5YsQBFKkgJ3r7lcCtENK9gJSc+hNvDQ1DINCekVfz6x
8IsUe0Z73IFEsxJa+osJtQ/5ffUSTkPSscjU0CYVwq5WN25yskR9icPVqxAyEGQzV6YXy0Pyhz46
LVLNPDHLIWXV5UYGUZ7PZzcfUs+u/VYEmmFnF3ZbmsLEmxEDZya4hzgY4LSVK8cHElWYgE0kJBJ0
oZiC6pNgHRSjM9UP7DkgmB/tbSiTPS3QxFAhHKpr/VbhItVnqYvyd7Ux1Yg45gwfmU0MydOIk4k9
xm67CEgios+5luKUtJ+5Rkpek7WRwVTYwfndl2qSuir8/UZw5t8W5Yn/j1Jid3kcZINgmQ9fsEwU
+2djUEweLCg9Xe9RXw+mk9cnK7KaeOr0OY+XuM5t77Out2I8yiuwhzNw3kCrp/bKXBqhpZvv7P9Z
zYOrDuNlKNTfiyuNxnzT3OA9rqK1GmTHSFVvX84YwKCm9v+MWHjP8eFDbaXEDOiTvyZtq1LwPB8a
4Dy87x5LVOxG6Vc5rPY+x6nDuSp2fbS342Yn4mxWFaaXTLD7wBy9xU1H/gYvjpEx48qnTyX7a63h
JNsBYwlqx2jxijn5lVrh7dkUH3KhTuWC+17HnnrcVq8LBSj2qorldkHe4E3suX1bS+csAnl28znH
6+tiO0TVnWQVCVfDIw7+vMpbtGBtXreuH7JQbGUN5kV2K8IVLtw2pxL9s8Sm5JsU1gvkk8/HmHDM
CIn/rojMk9gk+SBZL9YDGgNsN0MtBJmLVUYIBd7SMQrJEFpbHxOsYBRFzP0R/RX0vyKbFO951I4p
jxdnnFuQGxaesEus2M+v0j8QiSNkXokYE80UMTXeKdhiIin9e2rrHdN+6Y9JTlalLJU8TKYV6Cfi
WU3RhyqvEZeY+cO6kgIhFZZlrOST4iNyYI9bfIJcST7wx2Wwsp4oSb0JE3H3RMjd9Cc88gP5kNKb
OGUYuybM1S5anJWIDlFcCL3gobU4HlpxpXqIJ7LUjtnd8Nja4HnraNawe8QIIdq3JVcCYj/5FJPd
FLaqLHerNB/L3iSq3WMAfyJXhPzz8VW+NSFECG/F+Hb9/Be1z9a2ocdhM7B+Tb+dnCX1WzNG9LSd
t0zpRPHwFlmTrVg9QaMQNK5XlGe4SgvHurgdxMtXWDqY4BPEygEw6ffTtccNJ0OhOPHAbEC2+kgc
UBpFDXSvTz8XlxalGg+QyodwYD5IMXsCv+roo8Zn02wEIMg8BGpn6L0ysYbrUZdS2pKTGH5cD2Sx
bObtQE/3X++5ny9PbSVUR1XtF0eTt0R7lk+UM3QNFTEt9v4e5jFEjc9vPD3aoVoSfdaxzVmDAVHv
xB2Ix0URXlqf1fjBuXLurpMfqH0au1x5JCKDxkOtCJc5WSlqfKGytIG7e8I0g1+za96Kgd4iJXSM
Tq7hO0h3fpfwkWZ1h60v8+fqhC8Ld/qpaz4ki8wNTzV1YvLutYoVvmfrSVHOghfbblLdwVE1jiUs
5f0vp9vmyckMvnLR0m7ch+tN/oNo8SpDeTCkqfDqwllSC/wyl4wFCl6A/O5vDjFXMF//EV/VrNql
RM0G5JNCMFS8d18XBz6leIj2ZQRhEbMvoNwDsq4SWRFcj6p6fUumNSJfhnC/gmCwtGk1RDUlnoRj
dJIWD0WY91MIi5Ko1t5R7jg077z90fCMf3NqE1Dmha6wYUNAdSjlyPpLDTllNe8KEhMBVEH4JuH4
zNnaB1FT3J8/Z7qv7cnarZ2ctxDF/yrxANrTrZ2VMGjuHdACcMstciAIpKMEn1EHoXKFlvDWt9xD
tbZ7Nwe3wGonhrweWsHQHB5kicJ1zTOM3yh92B7cKS92i/cRwRXljtT0nhdDrl+VM/yAnW7tC6tX
d67mskIqX3aYMvgI7ENX9mmCs8SEpytqjSLTewH/H/uQ/qKiaS68eJe1Gos+m16pH6L9Aj87S0LH
ebzjFC7tsAADtkkcNU9cNNelLmqxpoXWBz5E8SCt35CWUPDXlFQ/0fvLo/HegVI9woU5egRAhu4j
Pu1q1Y8a9ZIcrW6DEUcYMCNnh/yTF9FYDNW8YhkJchSSmpBSh+jvzzBdyOmtkOg1P26ERXal0vQm
mlGgUXGsRA4c2WskmN4Br86Pjt4CVkLXOneuWkucUwuv78QXOd5e4vsjIqXIxsMMPi/j9uuUu7pG
4qaPeyN424r7UinWd0813AbMmvGIPs1Y6JCFr58pc4n02tPVOvzL1z5TuYxLixwd9GOtywMbzFEl
35ktbS0IzLiwcgYetG9o00ygPWjtjlwVs7XqcDo5TfztwGqT3HRJ2Jp8i3NcP+NmQRJb+aIH63EK
ezpQD1bMvmPaeFMCgz9pr5zfjCmOa1aCHM1etfbhM1bQfs1Nbyv2ULM4CikhoNuzqABGnNdyoIBs
YZrd6jNrp5zT4hl91DbSyFnyoIZou+g4+aBgDm5klrxzZ8zGV7RkNSzUQFkwu8C9kdLFJKvHVNo8
nbk5WPF3c7iHMFdqyYG6Cr8qJQ4FURDHgGagN1u4+2+fYSZsIGZkLzTUM3fcjX742TRqlrevDiZW
CDcKYjYNxoJtypVFwkZv2n7scXXP2jF4QOCqYz+0oOJbDBUBDchhG2x1iD/wzMhqpTkYDcNQIc8K
rfrRMcbSJY1OyEc4oGbAh+/Omrt2L1rUCj00GCxgnnBspRCnEwhSACRKGSsKlA1BFK2eMLxxMhYb
e4pmbT/wzEFJXxKU9mXIUeyMY2WhUgqws10QxSAyPE0/kOXFS8FjSBCxFuC0zykM2e6fdM+NU+J4
cBD56p1dFJaR7UbalVpXDT/f69jXIQMMugJ3hOZI3fZsRAFq+iEC3tS0ZOP1HuZqvVe79Rp8bbED
Xg6zz4OTVfumAhghr70BZ2r+7l5b0aPzLJIxO64TTH31WAq9J9xI1kmCwh3Zjl99xHlZnXUF3GWK
LdJ0oZfWAvxgch4087jZd/fO98YsS/0QfhePhXgU6VVlj4fwalSyjo0Qo79sxPbd5CdxY+PbBnr+
7Rl6xTyvlbae7C3jRFa3lopx4qbTG4pzoU7uFUGPGeBb+BBqOdPdHI+wCzZ1QGwNVlbvut3nX2xT
H5LGQgH7Ujgsbx7KgiBn1LiJkD7CWXW27LOVNHPcnnNweQNOQ5l+MxTCSQ/Ukss83PuSOszSdkge
KJEgcorDB/SvSq3a6cbaYtE7xGFfPvVcOu8hXLRlo5fBW13mHIEH/EUxQl8BARTYIFDv9viDuidY
SO0oHhvV3jvffRJlyotY3ghn6yWzizfM6Hkkv4l8i5DWcsWnvl0RKVG/DEsJPJR1YZlDnpvHRtrT
UrC+9NTfTyuVInj2LvGKdbx+xrsCpeHATCdFU3S1qiRFt78LI8eg2ob/9/6iXfkoYUubQplGlvaf
vygxJX6ydX987o22b+eJxmaU7T+NoxPeZ7RRtK2dT1o+12y2miXsy7oXyvwb+PYlwjPRjHsECm+f
yEN7hf9RvvEELZwln2D2pFLE8ICQ/mxJCMuX6lGGw0sgeJV3Zn0ctPSqn0nAaNIEiW8MHozeKTaE
QoNVFg/nL5qf2EkYYObNc8CTuTj8o3W7rKP7U/WhVmBgDT5kqNM10xmOIQ6U3EoGOftFzhj8KRBh
/LLn/Wcbv0akslUIS7PUIm8nxBv8/L7bdvXpXVPNbHTaZWgUG4q/lm/j+yzXqEjCN2Lm+Jtl0PkI
84gRGCsxWeFTe17gAndQ9o53efHld2+Zms7Ud/WwKQblRY1gCES7tON5oT5rA3fMGjSboDIUkqQb
UXZawCQvacte1sdEDQdhEfqSMEnJIciKCsy8O8GWhs9tX+3agAdJ7SCMsgXFqfOSy7IKYhsNx650
D0diIBi2AoOp51IVkNMafuEljXkjQvyzY3WHKW6CXn+6i/W/HxYUdDP5wJsNUQd4uZjQT0VC7W7/
ntMKXicx1Wm5KD36xFYkbX3wxZRjhv4BRJ3bI8PyaiThznsJ7H0VCJIjlG5nNhCiNaVpdUp4Fzea
MkRw1lejcwHVMplb29iRCc5fpaSA5jNdpsLbZ3l6S2pU6XF2Cuem13wWIkm31dZJ30QNPLVzCvJu
knE05BtbaEZbe1FbNPafha/LS6Neh7j19Lw1sa2//lldQPKhH6vUKSyLsPy3HdbDGn6cOnDE5J7+
C86TJlgNGXy4uVxZ/+S5/rPZQL2764lOpYuiifnxfyt6koyBXRlpHzFMKcM3HsFaAAyyQGCvQiWx
Bsk4eLsg3X+iuC5riuxYLWKV9CPLvya0/jTJW+pajRjumCe1qkwxG32K/gpx+ZLy9WggwC7HfvBz
3tw94bkTKkZe3kb33x57ZgjB7VGY2nBdLSCURa4Gs538zAhxj0h4x/8ulVCI7fLxF94JestF9Zur
aQUtUucQNt0li1REfh6+MT9eLzSxFH+fx0rX9IychYtBZl4ipr27PHlFVao2QGX9Dx5fx09o7vov
wnIwL7Wn5dOO4u3PsRXLpmUMzRz/dty9Hi0msqOLX0hClX8d9shRmN3IWBlpSwwZDW9YYSryjfe5
H/zu74FLrB5QFS2eteKBa7bD87ZJRfokYMvK6V80QtjD6Fjl9o8I8OhlEC8mftIkxleHRH4UTVyy
CxpLDY8SJyqXJ5soEX9BQHKhUOsQFUkhWlnA+PY+wlpkfzsrH16Ofrvve4gpEWK3RMD6yiFOQtQ2
5XTE2ZVEwot+MowEVEi59GnfPJokY6FH8NK9nHxHZGxG2ekcKW2Vzx6Cp+Z5SYq9ph26MFvW1KvR
r03U6G9W56p6KMYRlq7uL4ideGyemavdHLs8SEslOANCdbOp2z4zDQT5uNXI5w/GUl+bmpGDkhBo
n38ex2ebkb0WkqL7CCpOxuDBGMhPss+YwkFa2MKeI8N8+KoSRyRf1Mdcm516NhfjeAfmw2w4+MmZ
chasPF6kTvDEkeVtRnW/kmBtrqlkPfAMwhGyLZIBT94FgqKDp0WSD/eeq0qK6Za9NVxEBjg0F5aV
am5p9f+83BAkJAlErqMwqvxUzMkPi7NaRT4djKRWP6PEYudZOkuIJ3ktZpn7G6HP00/MeD5rGUm8
tCvvtL+Gbge83HAJEgn1dtSijRUsh9Fo+QSC28YFZioqvWfsLDAZTjOwGXN4HhWuYqZrZWBVeUYi
3lJIZ8l0ZGfoPz20pXfyqlCnmAgq5eTO3Hknz+6KvMTVu5/NmrKEMNHuF4IkTAiXRfOY2qHi1AFm
mGteVvde/+ngagY877fFqVFl+FG1KY7s/pF65Xb6NsiQzD1m2jMR87TFKhv2l1I9THxak234f5jq
ZX+g6DZLJkTU18FiWKlKohlQaLAVD5p2Lrh7EU6wEgyWFCtd4fAc4ojqSXLkQhFvkXuDYF9mvrxW
kTh+gUvFHiv9BnFQ+RX5w8h6ihCBuR4FWgiHZ7iw6fM0rTV+0Uy+MeZhUTRPWrR5t/R/1+ENAogO
OTyQy7TDBpmIeRVNoVkyMfn7HH+ys2PhmzU87ojKJ7JblvphMZMReJ4fYNjKhqpKE7UGonLmySSm
m0wG1kREYS7j+rmp9q+hgu8UoGn5Z1JPXw4i8CsKR2FJVq1RMQmzlIA7d7QU2w0nvlkOCFnx/NnM
0lBTNrCKRmZrZOGeDGDt7rkDEXSMICfTsxvZFWM9oa8NNZQR9w6y+c9R9FdlpkMnT8RurfiotWFZ
S8czRY1dBmucMTYSPt1wkvwXca8yS7jiR4cNu6hkF9v+ZeD+ZbHzvZoTDq6aVFwz/BDNbrg8bAqS
P0r8kHNF7zf03gHZJTE5BKL0Vd3f9SQ3p8ojcOW4anI6Cq5NrZB/WFqELH6o0UF3ki3Us4HVZkyO
jr9sCOusEdEkUWvTZ/keH6b02GzutDutvAGHuqVusHJ6N78AHHa9Q9dFdQdOYCg78erqPOzQwoBe
0hMS48qBHV/Ke38Nnm7Qf4iKCNoIwKpAt2rIOdV0CIDfNLP/kwxKzxba5YqJuz+SbMrnh17K4kIa
GmRvGkZsRfDhwTucwFb/bAHjfgvGcwc6zlv74o/QscesocJnGAwIV8kN3IwvJCzujEd7J617w0Qw
r5zVfGYNMXcSybGtCUOWNawa3nQDOyUjeNfmae9Y69Kms1ROEqSZANKSYx70rkU8kRT8hsZegw8h
RuOgJCF+MkL2TRsT9Sgwq7nrqcGedfQsxChKU9HYprJUYKgFOdywyN5pYLrOi4+GUbUm6WRFRVCm
YKxVE1PXJMrQUB6tlJM8vouqzmPopv4U2alcN1mbvKXi43u9PdVe1dwmT5zzzNKBwBJ53+niN9Y6
IBC3iYjcojhK+5oGhzP7XJa9p+dnDauayFqMhretA2pkTUMxa8HvDJg7QiNEnD43CjmKBNWvNAlA
m8Amhm+5ZtFax4hlfXxWFSoxcJCn4nr1lJRADeApFot+YVjHvKnNwRW7pr4CQ92X/oGuTpJsyaoW
ry0USynI4msu1G3Yl9ib0lP5bSW7axeJkhMfN4JHAPjFAdTkSDDrYL9YoqkNnxY7/3uxgLTvl+dN
gu2LwHCOrzGmG0yvs5aJdfwOm2uTu4ifsmEfDwO1B6hUYIBGgDn83O7Hzyj6mKAAHBaIuM2GkYk3
FZqotdCvclIE/L+7GyRV/T/YhYWShmYQWOfAmf1N3bkp0N50B2tGYqRWf3aSs5HSfwbSKbv7oAVZ
XgdW9F/6mlxA3DnHRgqNhd//3qtKhm+Z3OjUg6G6uCk+wu00yNZh1yI1EWhEl7TWYVzoO47I7cuI
K+FkTV6AzGllqu8LgijUYfCkATRi92lYHNd+05+2ynPb36HX3ePvMNCjQx6IpfK16V7ND1Vt9YVm
4y5cSrOWzHs2EiQikgocy4P+R364BZKF9l6BgIL23YQXorsyWr3P1FbXeGgbiv30CmiW9C52WqtB
EipEPaFvTSVrXpOYhuAzGSqT6ErIr+PBMBjk148SDLHpKDlSrThjjh/LN8X0PWeH50Tgq9iQpXiy
cjFrs5ocf8lh+I5pfZw+U8bXK3mq0guyBbnxdFOnjzGh1LVFewu/ZQ2QekFwpky1OAL3kigZH7pS
x12qydCKMiqmbV4bmYj3qaBlx6pO7rqxPXJweRD7ggEeNTeX5c/apFKg0VDQQfc21XU4Z0xrB8z/
1Bq3DjGQKN0g9QixJiCTDHyA7d6vT8Yr0T4FS9kPEEpb5SbUOfam3+I3uwTUmF1+gslMzTpYeWVH
gFmbUunaA5GbntcbDVcsa+epwWC5e2sR/PW58wUt5YkL6g9y2iNih3aP+1C7geNsOyLmJ0pJobq4
rofnC78dGKAaaMu5kf8ldhfD3d5jzh/SkAF8oun8hZBvvXCS0g5f8x9PBHwL7Jq0BOfriLDD2GYI
vRoPl3iIOZcd1JW30vAzPEq1ca9ZtqDuaTTx0+lVek5j5f+Geg7sRhxnC0rWGvp/oDbTzjhmIkag
qhzzmttJvmL6Yf1jopHv164CgrIIHlWklhqele+tU3qpC7KJ15vTIR6mXuR91cESNxBjh35H6rDW
+rpNxd6YpyEeuYCLyOTmLIRkhdQR9ZhQHynW0ixn1ZG2KD7uqnpQNkuMZMPI2VC5Sqp95MYi94c+
SuvL3JTd/MgcE+gtM1LmO5p3TTaP8Q773orupVn4H8MD60C6ViC3FraWE5kfw9DrRwLsMbYnAwbS
E8ArFXfn74BCMnGzZNqTOmGyIYg7yncNbMqlzivhEc1gwO+UP01PI5spMV37NB+DhNQgKCiYjqkl
4S2QGOz12JEqyZHE09TUqiIoBK2NMvcuBvR6CFLoTOWeUkB+gpwOga6bbPtylBHWc71je5VILCb7
pJaF9w1sGtqPWU7VGO4MkiIpQVjigsn7P6Gv6RS9I+20kF7tms1+VVQJAIbtn4fGpconEqzSo0dQ
SU3/gqeEoHj1rsqSB/Qv+KN7StEfLTKmwxND18TVeent/Rr5xTThBNMqp2wykkSlDVIyq2MQfziV
lzlGEJkiRkFypTFcpm5ZkgeDBotTRulCNSLmzKJZNBjXVpPJOkGdsNhKJjFCGlbC2HvzaOXv/IJz
d+b4oUZRrp5IMsJUb2o/IRTil/hBjrKYD8zRXp5+OY+b//PBwwqHJk3OTCBonNPQ5BvCubmqgD1f
1VLb3RRVv4ImtSnM/2NmOX0ruXvSErV66pDUCZkXdMng75wgoamRlJipVre+dK97vitSyiSK0UOO
2SAtQb9imE7xF3weTpOtIwQmlbik79yvIc3EwdLwl4HC1DurZfk2y3c0G8juJQG5SKJZ6+l/yyl9
ROQ/BXBQb8YuGKW1WqPkcuZvgvBuYSsGwDqVThmt8wSskh2W4GIXkpX0CaZFBiiP3bn3IULhLmw2
U4xir5lqVwh/hHuYHfveicB8BtwqEyAjdcZGSahFm557P/ADPMPkqqxpxLnbITMewkfmnScLwQ1c
xnG/d5yo8o6WlFLiVm6HTk6+RgH7HbdVy7bFyEM2Mz8Cspt0do2jxpYAdMTuIjqevwmmDHoYj87w
efIAxb0P1DUJ0C9n6DPOSyJcvI7jhAhiObCj8Y2ZZH0+pztu2xFl+z/dCx9PNE8MQ8IyJwi1YRgd
w+YbTAPmRVxKhU5N1XikI4thgsPeSqATYUFYVhyBl8oKklDUTYgvgv+in0j6B/ZS6G/DwqVxCIIU
qO9Gj7v6UJCm6/8iTWyYd1ph2GXBZ7LLXOvKLAUq0TYNFHbGT8abl4vThWy37RELU1zi56Tczk21
zb1l838UpxIblPFKbYFEv3VcdusroVJC72oxr3E1ynqXGsCizf5hEt9ufSrtZM5MLlmm+pRMnOWZ
4tTV0HM+WeerOwSo+nJR0H05H4K0UAUy8fBXrtTi4Rxbg/naBrMqfjWaZc40ET5JEAvtG5KS1Y6Q
KML8WTRsoZ5eMX6twakeSAe03GAaxui53BXQCjb8qfPUQSgjG4enLYKhUCOSoVams+xry8GyYW8e
5rfYZQ/4l1t2hJfAdHRJr+z2deOBllJMFMKaTVP6fqHeDIJbcJOIXcQ9/n6O2jMaedHc2BVR6m54
szMWjA+K+Nn7s3nsw33uYv96copmpmIPjo3hMMyAc5y9aWzY41lIQKPx98GWvNLjm72mrxvAH+HJ
qzWzIWVmRBj7IwypkbTcrbw786rMl6iyAn6zgHDMQDqF9BZYhIb1koO2xDQpOoh9yZf59R4dN73T
+JtkzRB0VRzztBvF3ILxVQWiCAdM1WteiddBlL2aseX6U8EDiLDBidUh4EFF7jcRqp82Q6Ku6QQ9
/O1AQZv4PZ1cr5xyP+eNcZ3T2CrmcBQRW9JZdqGWR4oo2Q+VxBDLPBSBNqjYEMWXtmtte5I0GQHG
frkSKsA8oeQ8E3rstX3a+YX0aXKWOqNW+TjfnuBuo+mznPv4fWS4O0h30xM738rg3JyOAmYP2B2q
deVJZ3dhSxJPEC9w80kpLjPPzcpz0XgL2E065kVguqW0kq5yihT6GlCdjJL7m2nU/bg287dZaXvE
0fVu1O9qBeEsupyFPyOixxoDkJgFgALxrHW0nC+aKIE1NSnZIBSojSAW91VogMg6wl4hfZvc9bpI
Mz8Q9mgmzzMtY+bL75Dc3sl09eYpZa+ucq/A34GHHEFp/x8qWK1ojons0FPMqaYMCSP/cP8nxSlX
sP186txKaifwfNMGPMVPIcQo0TQl1KUn1NirCRYMz2EX44TTCx5p7fXhsYYYFZRSFOSIwGi567s0
TOJH6hBMvI4JbHyuTzdUnpM+y+1sPl57kLeD8fAaksO2iVDpQD7tz3xcz1/bxyFMvb0yX+jXnwCy
3gYeav23a2Teye5+qo2v1AqMaYYJFp4s5EreVVfFB4cq1zT1VAwfoSQcyxoOB6wKFvE81Lo5fkB4
McVfbIyHhvXXy+EFC+TgYpwvItscTadEqHPYTEQiWKfNrDpq4sJKleYlMtAeTXHILSx7vPj1M0fs
DkBWBM8oVWBbVVrJFXHA6qR3P+fy3Srk0h47g7KgpZU3K1kwOrxp6nq14TK65wZtg/p/2HpXoXCm
rR1nrTlrx7iQ/jK8/5IvhQ+o/58ddweWgilQlzo+pAuWQJduDsCVxJvIMGXGpeZrfKv6D8gDgKiX
I6vRVeSf8wUQBO2PibcFIkS4X5hdUbp1JAFI1wT3AYyAMxyWDcg/C+14Nm3vQPGmSUTIoe9xqpP+
mB9aVntev3ietaQ6r+adkVAVp52IMHDGbPSNEorkiXYw5SXpGXWZrYvXIrujyz4ROugif3X5ey1y
ifsWNpJEOKX6b4XgaFrafunNbAGU+/MXuaUixzUXR/y+rNGfCdlBsV73xVPcgJAl4MpbD3sm+TQI
G5cMXnuZIkAAY/2/mAQtsqh8vdeQXApfdGPD9R/RnhH2GwkTI7aXgpcDM74bXR0181VUjjybZpCF
x/AchXShLhestKcMwlT1U999YSclOICdKErUG6xZoDPIdrKGdAyd/WFMpndMg/hmxu5w1Ag0qScH
BiNmYXj3UUXL8GI5gy62WrJct2ITQ6eUXIVF9+HFqWhUdoCAlLMfBpTN7gW692mffg13LAF6NCJN
4e3UVNd/GZ9yRz32A2Xn36NXnq0cIUZNemEtH9oegOZypIfMlDjcdN4lojOzFqJ6z/+0ABKtb1sB
8VWbHi8BgvLFYN+ghBf7ZxXbIdZt99/mvhTCZ3g8CZW72LMsS0K2Opo4rQHbWH1iLr95OuQBOC33
TebWQpkPKXHxD5i0+T1mPKAh8wbNbJIJDT0liTPrkU/OFiSxRyOpsbM7DDFjCHSVZHP3lJ3kIugp
cPQKks/HctBPxSS6JsLZZH/xpGKYifeHK1FSFyRedj1uky3Ur7U0g6xr/f2eAyRZTd9LcSkZYvYu
AVunux+ME0gd7y99jofBAorXVmAQ4zYhZkPNq0m7rGTpHh4pc7BUpsAKndjNRNlL2CSBAyciZu2s
RFovCIMximrnPKXO8i77CHKychAuRMqGtru74eM3AB/sLmKI5bLrSd1Mq/BZkpeoKu7OWWKZ0g6R
Jul+ZjJrMF9uYEwUc3A0yrhuNK5rSNiFfu3RK3/mD6k7E53YHaqoS41kG3TdA0MwsIHgv4SbDqwo
pYM1z4X6F2bgiJZ53IjG+Cv1wkp2VmQSf8I61DiHgnrVRlbUF1mR3+RuB2XJUTsmXymVWMd/s12b
dZMDSmHcg4SmkzGWLuiPe5FEi3cRunesZGmPlpGzcW94CLb6qyAmSW3G5YuKPDdl0vqSpi1z92sV
yCXMfgkH5FJE7pbhJch5xZwyKWLg/v0aTeelKtK2m0iuf/HXibNqtO1l4clwcFaMon9nmUpEF3C1
x5HzPuQrbHqgBdt/Q5rvyVxgUOTohg3gaK3RRa39RSXb2GoQol8SHMDE1XoE5G2CXxF9wiehHRiS
3kdMSFvCminG5tFKL3fTsxEryWeMX7FnmvcsKBj4TkJ3ZQFD+jw49DMVljfbnNP4YNG/fWzPWoO7
d69+n7BE0Mykem6eFcjPVJ+UfBv4ElJOdhnmkwDxb5GVJcTmWiVDhY8AcxjQyR8oKlXRA6HjQ7zp
r+D8we5iaEM82V4GDl55xsnbuRolUIckICrY3VwphSKzbo8XNan3oM3ikYXnaaShIchSxVBGjHd5
0gmpPlXCgMdmcs9+s0aZYK4RctHYG3WsQG5/kFUV2Bwgeae8C3YvscfMyib7rVXSW+H5dqRl4tyM
3WKzDlIUghXlsHPuKpEFECBAjkv/NWKqecvw6kduT43IyPgXzLh6irrv/URonBpyt374f3KM1HXw
xkLfJdljEdINQ1Ob7fRhIz9oAQaqTIEaoftHUn3m4J4H6rm4dPeiFsA9VUfOV/SJJAIfLOjpO3XQ
bmnAAv9bPO8e64JQQLOwQ7kHfl6mOWbOAkWOL3XfTFbhVxes+eb6EYXG+0pT3XxirvPdbJodzbcF
FtqjOlID+aIM9JklXih2CFC7PLeaaC5Ijvh8gEtIVJOS6xLVjx9IT8C8rzh5zpWOo7xF30Xul0hm
idMkL857Epf3nySnUpxDxz/67+dVWOXEf+k38xv53Y74yW5+goi9dq1NSc/hqcFjdD3R3loLr254
+Qu+sHj68EwZrc2FSSXXzuD+E1/wm7C3YHQpQ37zFtoa3/BYNVycmWdEB+/NDP3Zsv/Rlb2v8z+y
UTt0oGAXG9pMxZjXdE7ZTcVkJ/mm+15xgPQToa6rQMFOhOmZ25Ig2UwiMBWw2jxIflawfODsHjs9
dWxk2iznCy9YeZBhiI6ySlfi2pZAJy1+0Cfo6wuhzqUF64rwoY8SDZcDN/taHOUPpsEqtjMNPCuh
dAwleI2R8BqS23IzNjCDjcJ46Nla7HHOACv2Ioy+DS+t4UOimROkw0/7WBKmSBw0Oyced8j7sYIo
o/XDPR+G8ka4mXz9NxyQngfEde3V/A==
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
