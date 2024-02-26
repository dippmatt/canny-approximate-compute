############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project thresholded_sobel_edge_detector
set_top thresholded_sobel_edge_detector
add_files ../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp -cflags "-I/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/Vitis_Libraries/vision/L1/include" -csimflags "-I/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/Vitis_Libraries/vision/L1/include"
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./thresholded_sobel_edge_detector/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
