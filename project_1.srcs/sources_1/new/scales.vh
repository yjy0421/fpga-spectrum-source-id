`ifndef _SCALES_VH_
`define _SCALES_VH_

// 层 1: 456 → 50
`define SHIFT_W1        7
`define SCALE_W1        128.00000000
`define SCALE_JOINT1    16256.00000000

// 层 2: 50 → 30
`define SHIFT_W2        8
`define SCALE_W2        256.00000000
`define SCALE_JOINT2    32512.00000000

// 层 3: 30 → 2
`define SHIFT_W3        8
`define SCALE_W3        256.00000000
`define SCALE_JOINT3    32512.00000000

`endif
