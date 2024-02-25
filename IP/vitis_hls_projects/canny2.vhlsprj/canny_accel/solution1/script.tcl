############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project canny_accel
set_top canny_accel
add_files ../../src/canny_2/canny.cpp -cflags "-I../../Vitis_Libraries/vision/L1/include" -csimflags "-I../../Vitis_Libraries/vision/L1/include"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./canny_accel/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
