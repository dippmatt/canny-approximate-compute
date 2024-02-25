set moduleName xFMagnitudeKernel_2_2_1080_1920_3_3_1_5_5_1920_2_s
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
set C_modelName {xFMagnitudeKernel<2, 2, 1080, 1920, 3, 3, 1, 5, 5, 1920, 2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ gradx1_mat_43 int 16 regular {fifo 0 volatile }  }
	{ grady1_mat_46 int 16 regular {fifo 0 volatile }  }
	{ magnitude_mat_48 int 16 regular {fifo 1 volatile }  }
	{ imgheight int 11 regular {fifo 0}  }
	{ imgwidth int 11 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gradx1_mat_43", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "grady1_mat_46", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "magnitude_mat_48", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
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
	{ gradx1_mat_43_dout sc_in sc_lv 16 signal 0 } 
	{ gradx1_mat_43_empty_n sc_in sc_logic 1 signal 0 } 
	{ gradx1_mat_43_read sc_out sc_logic 1 signal 0 } 
	{ grady1_mat_46_dout sc_in sc_lv 16 signal 1 } 
	{ grady1_mat_46_empty_n sc_in sc_logic 1 signal 1 } 
	{ grady1_mat_46_read sc_out sc_logic 1 signal 1 } 
	{ magnitude_mat_48_din sc_out sc_lv 16 signal 2 } 
	{ magnitude_mat_48_full_n sc_in sc_logic 1 signal 2 } 
	{ magnitude_mat_48_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "gradx1_mat_43_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradx1_mat_43", "role": "dout" }} , 
 	{ "name": "gradx1_mat_43_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx1_mat_43", "role": "empty_n" }} , 
 	{ "name": "gradx1_mat_43_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx1_mat_43", "role": "read" }} , 
 	{ "name": "grady1_mat_46_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grady1_mat_46", "role": "dout" }} , 
 	{ "name": "grady1_mat_46_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady1_mat_46", "role": "empty_n" }} , 
 	{ "name": "grady1_mat_46_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady1_mat_46", "role": "read" }} , 
 	{ "name": "magnitude_mat_48_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "magnitude_mat_48", "role": "din" }} , 
 	{ "name": "magnitude_mat_48_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude_mat_48", "role": "full_n" }} , 
 	{ "name": "magnitude_mat_48_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude_mat_48", "role": "write" }} , 
 	{ "name": "imgheight_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgheight", "role": "dout" }} , 
 	{ "name": "imgheight_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight", "role": "empty_n" }} , 
 	{ "name": "imgheight_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight", "role": "read" }} , 
 	{ "name": "imgwidth_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgwidth", "role": "dout" }} , 
 	{ "name": "imgwidth_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth", "role": "empty_n" }} , 
 	{ "name": "imgwidth_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "xFMagnitudeKernel_2_2_1080_1920_3_3_1_5_5_1920_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2077921", "EstimateLatencyMax" : "2077921",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gradx1_mat_43", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gradx1_mat_43_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady1_mat_46", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "grady1_mat_46_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "magnitude_mat_48", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "magnitude_mat_48_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	xFMagnitudeKernel_2_2_1080_1920_3_3_1_5_5_1920_2_s {
		gradx1_mat_43 {Type I LastRead 3 FirstWrite -1}
		grady1_mat_46 {Type I LastRead 3 FirstWrite -1}
		magnitude_mat_48 {Type O LastRead -1 FirstWrite 4}
		imgheight {Type I LastRead 0 FirstWrite -1}
		imgwidth {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2077921", "Max" : "2077921"}
	, {"Name" : "Interval", "Min" : "2077921", "Max" : "2077921"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	gradx1_mat_43 { ap_fifo {  { gradx1_mat_43_dout fifo_data 0 16 }  { gradx1_mat_43_empty_n fifo_status 0 1 }  { gradx1_mat_43_read fifo_update 1 1 } } }
	grady1_mat_46 { ap_fifo {  { grady1_mat_46_dout fifo_data 0 16 }  { grady1_mat_46_empty_n fifo_status 0 1 }  { grady1_mat_46_read fifo_update 1 1 } } }
	magnitude_mat_48 { ap_fifo {  { magnitude_mat_48_din fifo_data 1 16 }  { magnitude_mat_48_full_n fifo_status 0 1 }  { magnitude_mat_48_write fifo_update 1 1 } } }
	imgheight { ap_fifo {  { imgheight_dout fifo_data 0 11 }  { imgheight_empty_n fifo_status 0 1 }  { imgheight_read fifo_update 1 1 } } }
	imgwidth { ap_fifo {  { imgwidth_dout fifo_data 0 11 }  { imgwidth_empty_n fifo_status 0 1 }  { imgwidth_read fifo_update 1 1 } } }
}
