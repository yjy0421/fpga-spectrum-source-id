vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_9
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_9 questa_lib/msim/blk_mem_gen_v8_4_9
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -mfcu  \
"../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../project_1.gen/sources_1/ip/blk_mem_gen_avg/sim/blk_mem_gen_avg.v" \
"../../../project_1.gen/sources_1/ip/blk_mem_gen_cnt/sim/blk_mem_gen_cnt.v" \
"../../../project_1.gen/sources_1/ip/blk_mem_gen_sum/sim/blk_mem_gen_sum.v" \
"../../../project_1.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv \
"../../../project_1.srcs/sources_1/new/Adc_xilinx.sv" \
"../../../project_1.srcs/sources_1/new/FrequencyDivision.sv" \
"../../../project_1.srcs/sources_1/new/TCD1304.sv" \
"../../../project_1.srcs/sources_1/new/TCD1304_data_processor.sv" \
"../../../project_1.srcs/sources_1/new/UartInputDataProcessing.sv" \
"../../../project_1.srcs/sources_1/new/Uart_8bits.sv" \
"../../../project_1.srcs/sources_1/new/Uart_data_ready.sv" \
"../../../project_1.srcs/sources_1/new/delay_beats.sv" \
"../../../project_1.srcs/sources_1/new/Main.sv" \

vlog -work xil_defaultlib \
"glbl.v"

