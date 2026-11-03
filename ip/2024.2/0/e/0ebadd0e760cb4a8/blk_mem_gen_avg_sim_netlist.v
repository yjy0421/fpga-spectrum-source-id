// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Sep 25 10:13:22 2026
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 40704)
`pragma protect data_block
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
IB0XryQu
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
