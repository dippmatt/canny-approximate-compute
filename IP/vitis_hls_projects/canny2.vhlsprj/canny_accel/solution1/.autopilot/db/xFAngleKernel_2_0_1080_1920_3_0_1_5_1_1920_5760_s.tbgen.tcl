set moduleName xFAngleKernel_2_0_1080_1920_3_0_1_5_1_1920_5760_s
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
set C_modelName {xFAngleKernel<2, 0, 1080, 1920, 3, 0, 1, 5, 1, 1920, 5760>}
set C_modelType { void 0 }
set C_modelArgList {
	{ gradx2_mat_44 int 16 regular {fifo 0 volatile }  }
	{ grady2_mat_47 int 16 regular {fifo 0 volatile }  }
	{ phase_mat_49 int 8 regular {fifo 1 volatile }  }
	{ imgheight int 11 regular {fifo 0}  }
	{ imgwidth int 11 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gradx2_mat_44", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "grady2_mat_47", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "phase_mat_49", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgheight", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "imgwidth", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} ]}
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
	{ gradx2_mat_44_dout sc_in sc_lv 16 signal 0 } 
	{ gradx2_mat_44_empty_n sc_in sc_logic 1 signal 0 } 
	{ gradx2_mat_44_read sc_out sc_logic 1 signal 0 } 
	{ grady2_mat_47_dout sc_in sc_lv 16 signal 1 } 
	{ grady2_mat_47_empty_n sc_in sc_logic 1 signal 1 } 
	{ grady2_mat_47_read sc_out sc_logic 1 signal 1 } 
	{ phase_mat_49_din sc_out sc_lv 8 signal 2 } 
	{ phase_mat_49_full_n sc_in sc_logic 1 signal 2 } 
	{ phase_mat_49_write sc_out sc_logic 1 signal 2 } 
	{ imgheight_dout sc_in sc_lv 11 signal 3 } 
	{ imgheight_empty_n sc_in sc_logic 1 signal 3 } 
	{ imgheight_read sc_out sc_logic 1 signal 3 } 
	{ imgwidth_dout sc_in sc_lv 11 signal 4 } 
	{ imgwidth_empty_n sc_in sc_logic 1 signal 4 } 
	{ imgwidth_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gradx2_mat_44_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradx2_mat_44", "role": "dout" }} , 
 	{ "name": "gradx2_mat_44_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx2_mat_44", "role": "empty_n" }} , 
 	{ "name": "gradx2_mat_44_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx2_mat_44", "role": "read" }} , 
 	{ "name": "grady2_mat_47_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grady2_mat_47", "role": "dout" }} , 
 	{ "name": "grady2_mat_47_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady2_mat_47", "role": "empty_n" }} , 
 	{ "name": "grady2_mat_47_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady2_mat_47", "role": "read" }} , 
 	{ "name": "phase_mat_49_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "phase_mat_49", "role": "din" }} , 
 	{ "name": "phase_mat_49_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase_mat_49", "role": "full_n" }} , 
 	{ "name": "phase_mat_49_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase_mat_49", "role": "write" }} , 
 	{ "name": "imgheight_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgheight", "role": "dout" }} , 
 	{ "name": "imgheight_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight", "role": "empty_n" }} , 
 	{ "name": "imgheight_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight", "role": "read" }} , 
 	{ "name": "imgwidth_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgwidth", "role": "dout" }} , 
 	{ "name": "imgwidth_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth", "role": "empty_n" }} , 
 	{ "name": "imgwidth_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xFAngleKernel_2_0_1080_1920_3_0_1_5_1_1920_5760_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2081161", "EstimateLatencyMax" : "2081161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gradx2_mat_44", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gradx2_mat_44_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady2_mat_47", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "grady2_mat_47_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "phase_mat_49", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5760", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "phase_mat_49_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17s_15ns_32_2_1_U137", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFAngleKernel_2_0_1080_1920_3_0_1_5_1_1920_5760_s {
		gradx2_mat_44 {Type I LastRead 3 FirstWrite -1}
		grady2_mat_47 {Type I LastRead 3 FirstWrite -1}
		phase_mat_49 {Type O LastRead -1 FirstWrite 7}
		imgheight {Type I LastRead 0 FirstWrite -1}
		imgwidth {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2081161", "Max" : "2081161"}
	, {"Name" : "Interval", "Min" : "2081161", "Max" : "2081161"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	gradx2_mat_44 { ap_fifo {  { gradx2_mat_44_dout fifo_data 0 16 }  { gradx2_mat_44_empty_n fifo_status 0 1 }  { gradx2_mat_44_read fifo_update 1 1 } } }
	grady2_mat_47 { ap_fifo {  { grady2_mat_47_dout fifo_data 0 16 }  { grady2_mat_47_empty_n fifo_status 0 1 }  { grady2_mat_47_read fifo_update 1 1 } } }
	phase_mat_49 { ap_fifo {  { phase_mat_49_din fifo_data 1 8 }  { phase_mat_49_full_n fifo_status 0 1 }  { phase_mat_49_write fifo_update 1 1 } } }
	imgheight { ap_fifo {  { imgheight_dout fifo_data 0 11 }  { imgheight_empty_n fifo_status 0 1 }  { imgheight_read fifo_update 1 1 } } }
	imgwidth { ap_fifo {  { imgwidth_dout fifo_data 0 11 }  { imgwidth_empty_n fifo_status 0 1 }  { imgwidth_read fifo_update 1 1 } } }
}
