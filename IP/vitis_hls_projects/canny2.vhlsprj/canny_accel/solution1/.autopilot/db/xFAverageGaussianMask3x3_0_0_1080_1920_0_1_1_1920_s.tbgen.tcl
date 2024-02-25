set moduleName xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_s
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
set C_modelName {xFAverageGaussianMask3x3<0, 0, 1080, 1920, 0, 1, 1, 1920>}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_mat_418 int 8 regular {fifo 0 volatile }  }
	{ gaussian_mat_41 int 8 regular {fifo 1 volatile }  }
	{ img_height int 11 regular {fifo 0}  }
	{ img_width int 11 regular {fifo 0}  }
	{ img_height_out int 11 regular {fifo 1}  }
	{ img_width_out int 11 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_mat_418", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "gaussian_mat_41", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_height", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "img_width", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "img_height_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_width_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
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
	{ in_mat_418_dout sc_in sc_lv 8 signal 0 } 
	{ in_mat_418_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_mat_418_read sc_out sc_logic 1 signal 0 } 
	{ gaussian_mat_41_din sc_out sc_lv 8 signal 1 } 
	{ gaussian_mat_41_full_n sc_in sc_logic 1 signal 1 } 
	{ gaussian_mat_41_write sc_out sc_logic 1 signal 1 } 
	{ img_height_dout sc_in sc_lv 11 signal 2 } 
	{ img_height_empty_n sc_in sc_logic 1 signal 2 } 
	{ img_height_read sc_out sc_logic 1 signal 2 } 
	{ img_width_dout sc_in sc_lv 11 signal 3 } 
	{ img_width_empty_n sc_in sc_logic 1 signal 3 } 
	{ img_width_read sc_out sc_logic 1 signal 3 } 
	{ img_height_out_din sc_out sc_lv 11 signal 4 } 
	{ img_height_out_full_n sc_in sc_logic 1 signal 4 } 
	{ img_height_out_write sc_out sc_logic 1 signal 4 } 
	{ img_width_out_din sc_out sc_lv 11 signal 5 } 
	{ img_width_out_full_n sc_in sc_logic 1 signal 5 } 
	{ img_width_out_write sc_out sc_logic 1 signal 5 } 
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
 	{ "name": "in_mat_418_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_mat_418", "role": "dout" }} , 
 	{ "name": "in_mat_418_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_418", "role": "empty_n" }} , 
 	{ "name": "in_mat_418_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_418", "role": "read" }} , 
 	{ "name": "gaussian_mat_41_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gaussian_mat_41", "role": "din" }} , 
 	{ "name": "gaussian_mat_41_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gaussian_mat_41", "role": "full_n" }} , 
 	{ "name": "gaussian_mat_41_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gaussian_mat_41", "role": "write" }} , 
 	{ "name": "img_height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "img_height", "role": "dout" }} , 
 	{ "name": "img_height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height", "role": "empty_n" }} , 
 	{ "name": "img_height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height", "role": "read" }} , 
 	{ "name": "img_width_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "img_width", "role": "dout" }} , 
 	{ "name": "img_width_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width", "role": "empty_n" }} , 
 	{ "name": "img_width_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width", "role": "read" }} , 
 	{ "name": "img_height_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "img_height_out", "role": "din" }} , 
 	{ "name": "img_height_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height_out", "role": "full_n" }} , 
 	{ "name": "img_height_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height_out", "role": "write" }} , 
 	{ "name": "img_width_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "img_width_out", "role": "din" }} , 
 	{ "name": "img_width_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width_out", "role": "full_n" }} , 
 	{ "name": "img_width_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1923", "EstimateLatencyMax" : "2084163",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_mat_418", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_mat_418_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gaussian_mat_41", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gaussian_mat_41_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_buf1_V_2_xfExtractPixels_1_1_0_s_fu_418", "Parent" : "0",
		"CDFG" : "xfExtractPixels_1_1_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_buf2_V_2_xfExtractPixels_1_1_0_s_fu_423", "Parent" : "0",
		"CDFG" : "xfExtractPixels_1_1_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b2_V_xfExtractPixels_1_1_0_s_fu_428", "Parent" : "0",
		"CDFG" : "xfExtractPixels_1_1_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U85", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U86", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_s {
		in_mat_418 {Type I LastRead 5 FirstWrite -1}
		gaussian_mat_41 {Type O LastRead -1 FirstWrite 9}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}
		img_height_out {Type O LastRead -1 FirstWrite 0}
		img_width_out {Type O LastRead -1 FirstWrite 0}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1923", "Max" : "2084163"}
	, {"Name" : "Interval", "Min" : "1923", "Max" : "2084163"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	in_mat_418 { ap_fifo {  { in_mat_418_dout fifo_data 0 8 }  { in_mat_418_empty_n fifo_status 0 1 }  { in_mat_418_read fifo_update 1 1 } } }
	gaussian_mat_41 { ap_fifo {  { gaussian_mat_41_din fifo_data 1 8 }  { gaussian_mat_41_full_n fifo_status 0 1 }  { gaussian_mat_41_write fifo_update 1 1 } } }
	img_height { ap_fifo {  { img_height_dout fifo_data 0 11 }  { img_height_empty_n fifo_status 0 1 }  { img_height_read fifo_update 1 1 } } }
	img_width { ap_fifo {  { img_width_dout fifo_data 0 11 }  { img_width_empty_n fifo_status 0 1 }  { img_width_read fifo_update 1 1 } } }
	img_height_out { ap_fifo {  { img_height_out_din fifo_data 1 11 }  { img_height_out_full_n fifo_status 0 1 }  { img_height_out_write fifo_update 1 1 } } }
	img_width_out { ap_fifo {  { img_width_out_din fifo_data 1 11 }  { img_width_out_full_n fifo_status 0 1 }  { img_width_out_write fifo_update 1 1 } } }
}
