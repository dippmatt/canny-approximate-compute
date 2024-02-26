set moduleName Threshold_0_0_720_1280_1_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Threshold<0, 0, 720, 1280, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_grad_sum_482 int 8 regular {fifo 0 volatile }  }
	{ mat_out_483 int 8 regular {fifo 1 volatile }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
	{ thresh int 16 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_grad_sum_482", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mat_out_483", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "thresh", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_grad_sum_482_dout sc_in sc_lv 8 signal 0 } 
	{ mat_grad_sum_482_empty_n sc_in sc_logic 1 signal 0 } 
	{ mat_grad_sum_482_read sc_out sc_logic 1 signal 0 } 
	{ mat_out_483_din sc_out sc_lv 8 signal 1 } 
	{ mat_out_483_full_n sc_in sc_logic 1 signal 1 } 
	{ mat_out_483_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
	{ thresh_dout sc_in sc_lv 16 signal 4 } 
	{ thresh_empty_n sc_in sc_logic 1 signal 4 } 
	{ thresh_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mat_grad_sum_482_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mat_grad_sum_482", "role": "dout" }} , 
 	{ "name": "mat_grad_sum_482_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_sum_482", "role": "empty_n" }} , 
 	{ "name": "mat_grad_sum_482_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_sum_482", "role": "read" }} , 
 	{ "name": "mat_out_483_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mat_out_483", "role": "din" }} , 
 	{ "name": "mat_out_483_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_out_483", "role": "full_n" }} , 
 	{ "name": "mat_out_483_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_out_483", "role": "write" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }} , 
 	{ "name": "thresh_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "thresh", "role": "dout" }} , 
 	{ "name": "thresh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thresh", "role": "empty_n" }} , 
 	{ "name": "thresh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thresh", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Threshold_0_0_720_1280_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "924481", "EstimateLatencyMax" : "924481",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mat_grad_sum_482", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mat_grad_sum_482_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_out_483", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mat_out_483_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "thresh_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Threshold_0_0_720_1280_1_s {
		mat_grad_sum_482 {Type I LastRead 3 FirstWrite -1}
		mat_out_483 {Type O LastRead -1 FirstWrite 4}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		thresh {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "924481", "Max" : "924481"}
	, {"Name" : "Interval", "Min" : "924481", "Max" : "924481"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mat_grad_sum_482 { ap_fifo {  { mat_grad_sum_482_dout fifo_data 0 8 }  { mat_grad_sum_482_empty_n fifo_status 0 1 }  { mat_grad_sum_482_read fifo_update 1 1 } } }
	mat_out_483 { ap_fifo {  { mat_out_483_din fifo_data 1 8 }  { mat_out_483_full_n fifo_status 0 1 }  { mat_out_483_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
	thresh { ap_fifo {  { thresh_dout fifo_data 0 16 }  { thresh_empty_n fifo_status 0 1 }  { thresh_read fifo_update 1 1 } } }
}
