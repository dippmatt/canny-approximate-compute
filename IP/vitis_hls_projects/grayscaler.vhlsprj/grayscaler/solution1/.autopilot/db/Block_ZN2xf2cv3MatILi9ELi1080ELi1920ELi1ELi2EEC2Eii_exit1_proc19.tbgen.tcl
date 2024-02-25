set moduleName Block_ZN2xf2cv3MatILi9ELi1080ELi1920ELi1ELi2EEC2Eii_exit1_proc19
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
set C_modelName {Block__ZN2xf2cv3MatILi9ELi1080ELi1920ELi1ELi2EEC2Eii.exit1_proc19}
set C_modelType { void 0 }
set C_modelArgList {
	{ rows int 32 regular  }
	{ cols int 32 regular  }
	{ img_inp int 64 regular  }
	{ img_out int 64 regular  }
	{ in_mat_rows_out int 32 regular {fifo 1}  }
	{ in_mat_cols_out int 32 regular {fifo 1}  }
	{ dst_mat_rows_out int 32 regular {fifo 1}  }
	{ dst_mat_cols_out int 32 regular {fifo 1}  }
	{ img_inp_out int 64 regular {fifo 1}  }
	{ img_out_out int 64 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "img_inp", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "img_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "in_mat_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_mat_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_mat_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_mat_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_inp_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_out_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
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
	{ in_mat_rows_out_din sc_out sc_lv 32 signal 4 } 
	{ in_mat_rows_out_full_n sc_in sc_logic 1 signal 4 } 
	{ in_mat_rows_out_write sc_out sc_logic 1 signal 4 } 
	{ in_mat_cols_out_din sc_out sc_lv 32 signal 5 } 
	{ in_mat_cols_out_full_n sc_in sc_logic 1 signal 5 } 
	{ in_mat_cols_out_write sc_out sc_logic 1 signal 5 } 
	{ dst_mat_rows_out_din sc_out sc_lv 32 signal 6 } 
	{ dst_mat_rows_out_full_n sc_in sc_logic 1 signal 6 } 
	{ dst_mat_rows_out_write sc_out sc_logic 1 signal 6 } 
	{ dst_mat_cols_out_din sc_out sc_lv 32 signal 7 } 
	{ dst_mat_cols_out_full_n sc_in sc_logic 1 signal 7 } 
	{ dst_mat_cols_out_write sc_out sc_logic 1 signal 7 } 
	{ img_inp_out_din sc_out sc_lv 64 signal 8 } 
	{ img_inp_out_full_n sc_in sc_logic 1 signal 8 } 
	{ img_inp_out_write sc_out sc_logic 1 signal 8 } 
	{ img_out_out_din sc_out sc_lv 64 signal 9 } 
	{ img_out_out_full_n sc_in sc_logic 1 signal 9 } 
	{ img_out_out_write sc_out sc_logic 1 signal 9 } 
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
 	{ "name": "in_mat_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_mat_rows_out", "role": "din" }} , 
 	{ "name": "in_mat_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_rows_out", "role": "full_n" }} , 
 	{ "name": "in_mat_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_rows_out", "role": "write" }} , 
 	{ "name": "in_mat_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_mat_cols_out", "role": "din" }} , 
 	{ "name": "in_mat_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_cols_out", "role": "full_n" }} , 
 	{ "name": "in_mat_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_cols_out", "role": "write" }} , 
 	{ "name": "dst_mat_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dst_mat_rows_out", "role": "din" }} , 
 	{ "name": "dst_mat_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_rows_out", "role": "full_n" }} , 
 	{ "name": "dst_mat_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_rows_out", "role": "write" }} , 
 	{ "name": "dst_mat_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dst_mat_cols_out", "role": "din" }} , 
 	{ "name": "dst_mat_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_cols_out", "role": "full_n" }} , 
 	{ "name": "dst_mat_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_cols_out", "role": "write" }} , 
 	{ "name": "img_inp_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "img_inp_out", "role": "din" }} , 
 	{ "name": "img_inp_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_inp_out", "role": "full_n" }} , 
 	{ "name": "img_inp_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_inp_out", "role": "write" }} , 
 	{ "name": "img_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "img_out_out", "role": "din" }} , 
 	{ "name": "img_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_out", "role": "full_n" }} , 
 	{ "name": "img_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_ZN2xf2cv3MatILi9ELi1080ELi1920ELi1ELi2EEC2Eii_exit1_proc19",
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
			{"Name" : "in_mat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "in_mat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_mat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "in_mat_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_mat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dst_mat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_mat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dst_mat_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_inp_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_inp_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_out_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Block_ZN2xf2cv3MatILi9ELi1080ELi1920ELi1ELi2EEC2Eii_exit1_proc19 {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		img_inp {Type I LastRead 0 FirstWrite -1}
		img_out {Type I LastRead 0 FirstWrite -1}
		in_mat_rows_out {Type O LastRead -1 FirstWrite 0}
		in_mat_cols_out {Type O LastRead -1 FirstWrite 0}
		dst_mat_rows_out {Type O LastRead -1 FirstWrite 0}
		dst_mat_cols_out {Type O LastRead -1 FirstWrite 0}
		img_inp_out {Type O LastRead -1 FirstWrite 0}
		img_out_out {Type O LastRead -1 FirstWrite 0}}}

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
	in_mat_rows_out { ap_fifo {  { in_mat_rows_out_din fifo_data 1 32 }  { in_mat_rows_out_full_n fifo_status 0 1 }  { in_mat_rows_out_write fifo_update 1 1 } } }
	in_mat_cols_out { ap_fifo {  { in_mat_cols_out_din fifo_data 1 32 }  { in_mat_cols_out_full_n fifo_status 0 1 }  { in_mat_cols_out_write fifo_update 1 1 } } }
	dst_mat_rows_out { ap_fifo {  { dst_mat_rows_out_din fifo_data 1 32 }  { dst_mat_rows_out_full_n fifo_status 0 1 }  { dst_mat_rows_out_write fifo_update 1 1 } } }
	dst_mat_cols_out { ap_fifo {  { dst_mat_cols_out_din fifo_data 1 32 }  { dst_mat_cols_out_full_n fifo_status 0 1 }  { dst_mat_cols_out_write fifo_update 1 1 } } }
	img_inp_out { ap_fifo {  { img_inp_out_din fifo_data 1 64 }  { img_inp_out_full_n fifo_status 0 1 }  { img_inp_out_write fifo_update 1 1 } } }
	img_out_out { ap_fifo {  { img_out_out_din fifo_data 1 64 }  { img_out_out_full_n fifo_status 0 1 }  { img_out_out_write fifo_update 1 1 } } }
}
