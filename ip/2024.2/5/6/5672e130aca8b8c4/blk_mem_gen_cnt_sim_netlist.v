// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Sep 25 10:12:05 2026
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 40704)
`pragma protect data_block
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
/SI+W/cw
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
