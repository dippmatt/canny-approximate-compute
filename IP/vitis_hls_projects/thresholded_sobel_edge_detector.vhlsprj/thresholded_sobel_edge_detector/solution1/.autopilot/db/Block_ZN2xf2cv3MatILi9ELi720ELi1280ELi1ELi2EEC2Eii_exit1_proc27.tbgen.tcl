set moduleName Block_ZN2xf2cv3MatILi9ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc27
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Block__ZN2xf2cv3MatILi9ELi720ELi1280ELi1ELi2EEC2Eii.exit1_proc27}
set C_modelType { void 0 }
set C_modelArgList {
	{ rows int 32 regular  }
	{ cols int 32 regular  }
	{ img_inp int 64 regular  }
	{ img_out int 64 regular  }
	{ thresh int 16 regular  }
	{ mat_in_rows_out int 32 regular {fifo 1}  }
	{ mat_in_cols_out int 32 regular {fifo 1}  }
	{ img_gray_rows_out int 32 regular {fifo 1}  }
	{ img_gray_cols_out int 32 regular {fifo 1}  }
	{ mat_grad_x_rows_out int 32 regular {fifo 1}  }
	{ mat_grad_x_cols_out int 32 regular {fifo 1}  }
	{ mat_grad_sum_rows_out int 32 regular {fifo 1}  }
	{ mat_grad_sum_cols_out int 32 regular {fifo 1}  }
	{ mat_out_rows_out int 32 regular {fifo 1}  }
	{ mat_out_cols_out int 32 regular {fifo 1}  }
	{ img_inp_out int 64 regular {fifo 1}  }
	{ img_out_out int 64 regular {fifo 1}  }
	{ thresh_out int 16 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "img_inp", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "img_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "thresh", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mat_in_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mat_in_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_gray_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_gray_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mat_grad_x_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mat_grad_x_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mat_grad_sum_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mat_grad_sum_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mat_out_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mat_out_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_inp_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_out_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "thresh_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ rows sc_in sc_lv 32 signal 0 } 
	{ cols sc_in sc_lv 32 signal 1 } 
	{ img_inp sc_in sc_lv 64 signal 2 } 
	{ img_out sc_in sc_lv 64 signal 3 } 
	{ thresh sc_in sc_lv 16 signal 4 } 
	{ mat_in_rows_out_din sc_out sc_lv 32 signal 5 } 
	{ mat_in_rows_out_full_n sc_in sc_logic 1 signal 5 } 
	{ mat_in_rows_out_write sc_out sc_logic 1 signal 5 } 
	{ mat_in_cols_out_din sc_out sc_lv 32 signal 6 } 
	{ mat_in_cols_out_full_n sc_in sc_logic 1 signal 6 } 
	{ mat_in_cols_out_write sc_out sc_logic 1 signal 6 } 
	{ img_gray_rows_out_din sc_out sc_lv 32 signal 7 } 
	{ img_gray_rows_out_full_n sc_in sc_logic 1 signal 7 } 
	{ img_gray_rows_out_write sc_out sc_logic 1 signal 7 } 
	{ img_gray_cols_out_din sc_out sc_lv 32 signal 8 } 
	{ img_gray_cols_out_full_n sc_in sc_logic 1 signal 8 } 
	{ img_gray_cols_out_write sc_out sc_logic 1 signal 8 } 
	{ mat_grad_x_rows_out_din sc_out sc_lv 32 signal 9 } 
	{ mat_grad_x_rows_out_full_n sc_in sc_logic 1 signal 9 } 
	{ mat_grad_x_rows_out_write sc_out sc_logic 1 signal 9 } 
	{ mat_grad_x_cols_out_din sc_out sc_lv 32 signal 10 } 
	{ mat_grad_x_cols_out_full_n sc_in sc_logic 1 signal 10 } 
	{ mat_grad_x_cols_out_write sc_out sc_logic 1 signal 10 } 
	{ mat_grad_sum_rows_out_din sc_out sc_lv 32 signal 11 } 
	{ mat_grad_sum_rows_out_full_n sc_in sc_logic 1 signal 11 } 
	{ mat_grad_sum_rows_out_write sc_out sc_logic 1 signal 11 } 
	{ mat_grad_sum_cols_out_din sc_out sc_lv 32 signal 12 } 
	{ mat_grad_sum_cols_out_full_n sc_in sc_logic 1 signal 12 } 
	{ mat_grad_sum_cols_out_write sc_out sc_logic 1 signal 12 } 
	{ mat_out_rows_out_din sc_out sc_lv 32 signal 13 } 
	{ mat_out_rows_out_full_n sc_in sc_logic 1 signal 13 } 
	{ mat_out_rows_out_write sc_out sc_logic 1 signal 13 } 
	{ mat_out_cols_out_din sc_out sc_lv 32 signal 14 } 
	{ mat_out_cols_out_full_n sc_in sc_logic 1 signal 14 } 
	{ mat_out_cols_out_write sc_out sc_logic 1 signal 14 } 
	{ img_inp_out_din sc_out sc_lv 64 signal 15 } 
	{ img_inp_out_full_n sc_in sc_logic 1 signal 15 } 
	{ img_inp_out_write sc_out sc_logic 1 signal 15 } 
	{ img_out_out_din sc_out sc_lv 64 signal 16 } 
	{ img_out_out_full_n sc_in sc_logic 1 signal 16 } 
	{ img_out_out_write sc_out sc_logic 1 signal 16 } 
	{ thresh_out_din sc_out sc_lv 16 signal 17 } 
	{ thresh_out_full_n sc_in sc_logic 1 signal 17 } 
	{ thresh_out_write sc_out sc_logic 1 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "img_inp", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "img_inp", "role": "default" }} , 
 	{ "name": "img_out", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "img_out", "role": "default" }} , 
 	{ "name": "thresh", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "thresh", "role": "default" }} , 
 	{ "name": "mat_in_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat_in_rows_out", "role": "din" }} , 
 	{ "name": "mat_in_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_in_rows_out", "role": "full_n" }} , 
 	{ "name": "mat_in_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_in_rows_out", "role": "write" }} , 
 	{ "name": "mat_in_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat_in_cols_out", "role": "din" }} , 
 	{ "name": "mat_in_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_in_cols_out", "role": "full_n" }} , 
 	{ "name": "mat_in_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_in_cols_out", "role": "write" }} , 
 	{ "name": "img_gray_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_gray_rows_out", "role": "din" }} , 
 	{ "name": "img_gray_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_gray_rows_out", "role": "full_n" }} , 
 	{ "name": "img_gray_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_gray_rows_out", "role": "write" }} , 
 	{ "name": "img_gray_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_gray_cols_out", "role": "din" }} , 
 	{ "name": "img_gray_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_gray_cols_out", "role": "full_n" }} , 
 	{ "name": "img_gray_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_gray_cols_out", "role": "write" }} , 
 	{ "name": "mat_grad_x_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat_grad_x_rows_out", "role": "din" }} , 
 	{ "name": "mat_grad_x_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_x_rows_out", "role": "full_n" }} , 
 	{ "name": "mat_grad_x_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_x_rows_out", "role": "write" }} , 
 	{ "name": "mat_grad_x_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat_grad_x_cols_out", "role": "din" }} , 
 	{ "name": "mat_grad_x_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_x_cols_out", "role": "full_n" }} , 
 	{ "name": "mat_grad_x_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_x_cols_out", "role": "write" }} , 
 	{ "name": "mat_grad_sum_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat_grad_sum_rows_out", "role": "din" }} , 
 	{ "name": "mat_grad_sum_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_sum_rows_out", "role": "full_n" }} , 
 	{ "name": "mat_grad_sum_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_sum_rows_out", "role": "write" }} , 
 	{ "name": "mat_grad_sum_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat_grad_sum_cols_out", "role": "din" }} , 
 	{ "name": "mat_grad_sum_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_sum_cols_out", "role": "full_n" }} , 
 	{ "name": "mat_grad_sum_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_sum_cols_out", "role": "write" }} , 
 	{ "name": "mat_out_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat_out_rows_out", "role": "din" }} , 
 	{ "name": "mat_out_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_out_rows_out", "role": "full_n" }} , 
 	{ "name": "mat_out_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_out_rows_out", "role": "write" }} , 
 	{ "name": "mat_out_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat_out_cols_out", "role": "din" }} , 
 	{ "name": "mat_out_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_out_cols_out", "role": "full_n" }} , 
 	{ "name": "mat_out_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_out_cols_out", "role": "write" }} , 
 	{ "name": "img_inp_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "img_inp_out", "role": "din" }} , 
 	{ "name": "img_inp_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_inp_out", "role": "full_n" }} , 
 	{ "name": "img_inp_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_inp_out", "role": "write" }} , 
 	{ "name": "img_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "img_out_out", "role": "din" }} , 
 	{ "name": "img_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_out", "role": "full_n" }} , 
 	{ "name": "img_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_out", "role": "write" }} , 
 	{ "name": "thresh_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "thresh_out", "role": "din" }} , 
 	{ "name": "thresh_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thresh_out", "role": "full_n" }} , 
 	{ "name": "thresh_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thresh_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_ZN2xf2cv3MatILi9ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc27",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_inp", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "thresh", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat_in_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_in_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_in_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_in_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_gray_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_gray_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_gray_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_gray_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_grad_x_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_grad_x_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_grad_x_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_grad_x_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_grad_sum_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_grad_sum_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_grad_sum_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_grad_sum_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_out_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_out_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_out_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_out_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_inp_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_inp_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "thresh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "thresh_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Block_ZN2xf2cv3MatILi9ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc27 {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		img_inp {Type I LastRead 0 FirstWrite -1}
		img_out {Type I LastRead 0 FirstWrite -1}
		thresh {Type I LastRead 0 FirstWrite -1}
		mat_in_rows_out {Type O LastRead -1 FirstWrite 0}
		mat_in_cols_out {Type O LastRead -1 FirstWrite 0}
		img_gray_rows_out {Type O LastRead -1 FirstWrite 0}
		img_gray_cols_out {Type O LastRead -1 FirstWrite 0}
		mat_grad_x_rows_out {Type O LastRead -1 FirstWrite 0}
		mat_grad_x_cols_out {Type O LastRead -1 FirstWrite 0}
		mat_grad_sum_rows_out {Type O LastRead -1 FirstWrite 0}
		mat_grad_sum_cols_out {Type O LastRead -1 FirstWrite 0}
		mat_out_rows_out {Type O LastRead -1 FirstWrite 0}
		mat_out_cols_out {Type O LastRead -1 FirstWrite 0}
		img_inp_out {Type O LastRead -1 FirstWrite 0}
		img_out_out {Type O LastRead -1 FirstWrite 0}
		thresh_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
	img_inp { ap_none {  { img_inp in_data 0 64 } } }
	img_out { ap_none {  { img_out in_data 0 64 } } }
	thresh { ap_none {  { thresh in_data 0 16 } } }
	mat_in_rows_out { ap_fifo {  { mat_in_rows_out_din fifo_data 1 32 }  { mat_in_rows_out_full_n fifo_status 0 1 }  { mat_in_rows_out_write fifo_update 1 1 } } }
	mat_in_cols_out { ap_fifo {  { mat_in_cols_out_din fifo_data 1 32 }  { mat_in_cols_out_full_n fifo_status 0 1 }  { mat_in_cols_out_write fifo_update 1 1 } } }
	img_gray_rows_out { ap_fifo {  { img_gray_rows_out_din fifo_data 1 32 }  { img_gray_rows_out_full_n fifo_status 0 1 }  { img_gray_rows_out_write fifo_update 1 1 } } }
	img_gray_cols_out { ap_fifo {  { img_gray_cols_out_din fifo_data 1 32 }  { img_gray_cols_out_full_n fifo_status 0 1 }  { img_gray_cols_out_write fifo_update 1 1 } } }
	mat_grad_x_rows_out { ap_fifo {  { mat_grad_x_rows_out_din fifo_data 1 32 }  { mat_grad_x_rows_out_full_n fifo_status 0 1 }  { mat_grad_x_rows_out_write fifo_update 1 1 } } }
	mat_grad_x_cols_out { ap_fifo {  { mat_grad_x_cols_out_din fifo_data 1 32 }  { mat_grad_x_cols_out_full_n fifo_status 0 1 }  { mat_grad_x_cols_out_write fifo_update 1 1 } } }
	mat_grad_sum_rows_out { ap_fifo {  { mat_grad_sum_rows_out_din fifo_data 1 32 }  { mat_grad_sum_rows_out_full_n fifo_status 0 1 }  { mat_grad_sum_rows_out_write fifo_update 1 1 } } }
	mat_grad_sum_cols_out { ap_fifo {  { mat_grad_sum_cols_out_din fifo_data 1 32 }  { mat_grad_sum_cols_out_full_n fifo_status 0 1 }  { mat_grad_sum_cols_out_write fifo_update 1 1 } } }
	mat_out_rows_out { ap_fifo {  { mat_out_rows_out_din fifo_data 1 32 }  { mat_out_rows_out_full_n fifo_status 0 1 }  { mat_out_rows_out_write fifo_update 1 1 } } }
	mat_out_cols_out { ap_fifo {  { mat_out_cols_out_din fifo_data 1 32 }  { mat_out_cols_out_full_n fifo_status 0 1 }  { mat_out_cols_out_write fifo_update 1 1 } } }
	img_inp_out { ap_fifo {  { img_inp_out_din fifo_data 1 64 }  { img_inp_out_full_n fifo_status 0 1 }  { img_inp_out_write fifo_update 1 1 } } }
	img_out_out { ap_fifo {  { img_out_out_din fifo_data 1 64 }  { img_out_out_full_n fifo_status 0 1 }  { img_out_out_write fifo_update 1 1 } } }
	thresh_out { ap_fifo {  { thresh_out_din fifo_data 1 16 }  { thresh_out_full_n fifo_status 0 1 }  { thresh_out_write fifo_update 1 1 } } }
}
