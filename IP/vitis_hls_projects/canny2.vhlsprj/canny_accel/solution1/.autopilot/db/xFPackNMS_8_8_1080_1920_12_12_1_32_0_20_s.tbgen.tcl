set moduleName xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_s
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
set C_modelName {xFPackNMS<8, 8, 1080, 1920, 12, 12, 1, 32, 0, 20>}
set C_modelType { void 0 }
set C_modelArgList {
	{ nms_mat_410 int 2 regular {fifo 0 volatile }  }
	{ dst_mat_419 int 64 regular {fifo 1 volatile }  }
	{ imgheight int 11 regular {fifo 0}  }
	{ imgwidth int 11 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nms_mat_410", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "dst_mat_419", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgheight", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "imgwidth", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nms_mat_410_dout sc_in sc_lv 2 signal 0 } 
	{ nms_mat_410_empty_n sc_in sc_logic 1 signal 0 } 
	{ nms_mat_410_read sc_out sc_logic 1 signal 0 } 
	{ dst_mat_419_din sc_out sc_lv 64 signal 1 } 
	{ dst_mat_419_full_n sc_in sc_logic 1 signal 1 } 
	{ dst_mat_419_write sc_out sc_logic 1 signal 1 } 
	{ imgheight_dout sc_in sc_lv 11 signal 2 } 
	{ imgheight_empty_n sc_in sc_logic 1 signal 2 } 
	{ imgheight_read sc_out sc_logic 1 signal 2 } 
	{ imgwidth_dout sc_in sc_lv 11 signal 3 } 
	{ imgwidth_empty_n sc_in sc_logic 1 signal 3 } 
	{ imgwidth_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nms_mat_410_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "nms_mat_410", "role": "dout" }} , 
 	{ "name": "nms_mat_410_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nms_mat_410", "role": "empty_n" }} , 
 	{ "name": "nms_mat_410_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nms_mat_410", "role": "read" }} , 
 	{ "name": "dst_mat_419_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dst_mat_419", "role": "din" }} , 
 	{ "name": "dst_mat_419_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_419", "role": "full_n" }} , 
 	{ "name": "dst_mat_419_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_419", "role": "write" }} , 
 	{ "name": "imgheight_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgheight", "role": "dout" }} , 
 	{ "name": "imgheight_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight", "role": "empty_n" }} , 
 	{ "name": "imgheight_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight", "role": "read" }} , 
 	{ "name": "imgwidth_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgwidth", "role": "dout" }} , 
 	{ "name": "imgwidth_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth", "role": "empty_n" }} , 
 	{ "name": "imgwidth_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_s",
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
			{"Name" : "nms_mat_410", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nms_mat_410_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_r_fu_527", "Port" : "nms_mat_410"}]},
			{"Name" : "dst_mat_419", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_mat_419_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_read_r_fu_527", "SubBlockPort" : ["nms_mat_410_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_read_r_fu_527", "Parent" : "0",
		"CDFG" : "read_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "nms_mat_410", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "nms_mat_410_blk_n", "Type" : "RtlPort"}]}]}]}


set ArgLastReadFirstWriteLatency {
	xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_s {
		nms_mat_410 {Type I LastRead 0 FirstWrite -1}
		dst_mat_419 {Type O LastRead -1 FirstWrite 35}
		imgheight {Type I LastRead 0 FirstWrite -1}
		imgwidth {Type I LastRead 0 FirstWrite -1}}
	read_r {
		nms_mat_410 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2077921", "Max" : "2077921"}
	, {"Name" : "Interval", "Min" : "2077921", "Max" : "2077921"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nms_mat_410 { ap_fifo {  { nms_mat_410_dout fifo_data 0 2 }  { nms_mat_410_empty_n fifo_status 0 1 }  { nms_mat_410_read fifo_update 1 1 } } }
	dst_mat_419 { ap_fifo {  { dst_mat_419_din fifo_data 1 64 }  { dst_mat_419_full_n fifo_status 0 1 }  { dst_mat_419_write fifo_update 1 1 } } }
	imgheight { ap_fifo {  { imgheight_dout fifo_data 0 11 }  { imgheight_empty_n fifo_status 0 1 }  { imgheight_read fifo_update 1 1 } } }
	imgwidth { ap_fifo {  { imgwidth_dout fifo_data 0 11 }  { imgwidth_empty_n fifo_status 0 1 }  { imgwidth_read fifo_update 1 1 } } }
}
