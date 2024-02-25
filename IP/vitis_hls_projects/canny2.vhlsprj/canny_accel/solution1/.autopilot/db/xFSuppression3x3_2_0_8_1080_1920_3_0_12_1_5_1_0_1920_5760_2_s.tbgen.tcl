set moduleName xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_s
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
set C_modelName {xFSuppression3x3<2, 0, 8, 1080, 1920, 3, 0, 12, 1, 5, 1, 0, 1920, 5760, 2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ magnitude_mat_48 int 16 regular {fifo 0 volatile }  }
	{ phase_mat_49 int 8 regular {fifo 0 volatile }  }
	{ nms_mat_410 int 2 regular {fifo 1 volatile }  }
	{ low_threshold int 8 regular {fifo 0}  }
	{ high_threshold int 8 regular {fifo 0}  }
	{ imgheight int 11 regular {fifo 0}  }
	{ imgwidth int 11 regular {fifo 0}  }
	{ imgheight_out int 11 regular {fifo 1}  }
	{ imgwidth_out int 11 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "magnitude_mat_48", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "phase_mat_49", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "nms_mat_410", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "low_threshold", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "high_threshold", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imgheight", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "imgwidth", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "imgheight_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgwidth_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
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
	{ magnitude_mat_48_dout sc_in sc_lv 16 signal 0 } 
	{ magnitude_mat_48_empty_n sc_in sc_logic 1 signal 0 } 
	{ magnitude_mat_48_read sc_out sc_logic 1 signal 0 } 
	{ phase_mat_49_dout sc_in sc_lv 8 signal 1 } 
	{ phase_mat_49_empty_n sc_in sc_logic 1 signal 1 } 
	{ phase_mat_49_read sc_out sc_logic 1 signal 1 } 
	{ nms_mat_410_din sc_out sc_lv 2 signal 2 } 
	{ nms_mat_410_full_n sc_in sc_logic 1 signal 2 } 
	{ nms_mat_410_write sc_out sc_logic 1 signal 2 } 
	{ low_threshold_dout sc_in sc_lv 8 signal 3 } 
	{ low_threshold_empty_n sc_in sc_logic 1 signal 3 } 
	{ low_threshold_read sc_out sc_logic 1 signal 3 } 
	{ high_threshold_dout sc_in sc_lv 8 signal 4 } 
	{ high_threshold_empty_n sc_in sc_logic 1 signal 4 } 
	{ high_threshold_read sc_out sc_logic 1 signal 4 } 
	{ imgheight_dout sc_in sc_lv 11 signal 5 } 
	{ imgheight_empty_n sc_in sc_logic 1 signal 5 } 
	{ imgheight_read sc_out sc_logic 1 signal 5 } 
	{ imgwidth_dout sc_in sc_lv 11 signal 6 } 
	{ imgwidth_empty_n sc_in sc_logic 1 signal 6 } 
	{ imgwidth_read sc_out sc_logic 1 signal 6 } 
	{ imgheight_out_din sc_out sc_lv 11 signal 7 } 
	{ imgheight_out_full_n sc_in sc_logic 1 signal 7 } 
	{ imgheight_out_write sc_out sc_logic 1 signal 7 } 
	{ imgwidth_out_din sc_out sc_lv 11 signal 8 } 
	{ imgwidth_out_full_n sc_in sc_logic 1 signal 8 } 
	{ imgwidth_out_write sc_out sc_logic 1 signal 8 } 
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
 	{ "name": "magnitude_mat_48_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "magnitude_mat_48", "role": "dout" }} , 
 	{ "name": "magnitude_mat_48_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude_mat_48", "role": "empty_n" }} , 
 	{ "name": "magnitude_mat_48_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude_mat_48", "role": "read" }} , 
 	{ "name": "phase_mat_49_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "phase_mat_49", "role": "dout" }} , 
 	{ "name": "phase_mat_49_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase_mat_49", "role": "empty_n" }} , 
 	{ "name": "phase_mat_49_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase_mat_49", "role": "read" }} , 
 	{ "name": "nms_mat_410_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "nms_mat_410", "role": "din" }} , 
 	{ "name": "nms_mat_410_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nms_mat_410", "role": "full_n" }} , 
 	{ "name": "nms_mat_410_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nms_mat_410", "role": "write" }} , 
 	{ "name": "low_threshold_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_threshold", "role": "dout" }} , 
 	{ "name": "low_threshold_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_threshold", "role": "empty_n" }} , 
 	{ "name": "low_threshold_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_threshold", "role": "read" }} , 
 	{ "name": "high_threshold_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_threshold", "role": "dout" }} , 
 	{ "name": "high_threshold_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_threshold", "role": "empty_n" }} , 
 	{ "name": "high_threshold_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_threshold", "role": "read" }} , 
 	{ "name": "imgheight_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgheight", "role": "dout" }} , 
 	{ "name": "imgheight_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight", "role": "empty_n" }} , 
 	{ "name": "imgheight_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight", "role": "read" }} , 
 	{ "name": "imgwidth_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgwidth", "role": "dout" }} , 
 	{ "name": "imgwidth_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth", "role": "empty_n" }} , 
 	{ "name": "imgwidth_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth", "role": "read" }} , 
 	{ "name": "imgheight_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgheight_out", "role": "din" }} , 
 	{ "name": "imgheight_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight_out", "role": "full_n" }} , 
 	{ "name": "imgheight_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight_out", "role": "write" }} , 
 	{ "name": "imgwidth_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgwidth_out", "role": "din" }} , 
 	{ "name": "imgwidth_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth_out", "role": "full_n" }} , 
 	{ "name": "imgwidth_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1923", "EstimateLatencyMax" : "2086323",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "magnitude_mat_48", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "magnitude_mat_48_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "phase_mat_49", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5760", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "phase_mat_49_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nms_mat_410", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nms_mat_410_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "low_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.angle_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.angle_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFFindmax3x3_3_0_12_s_fu_538", "Parent" : "0",
		"CDFG" : "xFFindmax3x3_3_0_12_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_i00", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_i01", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_i02", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_i10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_i11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_i12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_i20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_i21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_i22", "Type" : "None", "Direction" : "I"},
			{"Name" : "angle", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_low_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_high_threshold", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l00_buf_V_2_xfExtractPixels_1_5_3_s_fu_564", "Parent" : "0",
		"CDFG" : "xfExtractPixels_1_5_3_s",
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
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l10_buf_V_2_xfExtractPixels_1_5_3_s_fu_569", "Parent" : "0",
		"CDFG" : "xfExtractPixels_1_5_3_s",
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
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l20_buf_V_2_xfExtractPixels_1_5_3_s_fu_574", "Parent" : "0",
		"CDFG" : "xfExtractPixels_1_5_3_s",
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
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.angle_buf_V_2_xfExtractPixels_1_1_0_s_fu_579", "Parent" : "0",
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
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U157", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U158", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U159", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_s {
		magnitude_mat_48 {Type I LastRead 5 FirstWrite -1}
		phase_mat_49 {Type I LastRead 5 FirstWrite -1}
		nms_mat_410 {Type O LastRead -1 FirstWrite 10}
		low_threshold {Type I LastRead 0 FirstWrite -1}
		high_threshold {Type I LastRead 0 FirstWrite -1}
		imgheight {Type I LastRead 0 FirstWrite -1}
		imgwidth {Type I LastRead 0 FirstWrite -1}
		imgheight_out {Type O LastRead -1 FirstWrite 0}
		imgwidth_out {Type O LastRead -1 FirstWrite 0}}
	xFFindmax3x3_3_0_12_s {
		p_i00 {Type I LastRead 0 FirstWrite -1}
		p_i01 {Type I LastRead 0 FirstWrite -1}
		p_i02 {Type I LastRead 0 FirstWrite -1}
		p_i10 {Type I LastRead 0 FirstWrite -1}
		p_i11 {Type I LastRead 0 FirstWrite -1}
		p_i12 {Type I LastRead 0 FirstWrite -1}
		p_i20 {Type I LastRead 0 FirstWrite -1}
		p_i21 {Type I LastRead 0 FirstWrite -1}
		p_i22 {Type I LastRead 0 FirstWrite -1}
		angle {Type I LastRead 0 FirstWrite -1}
		p_low_threshold {Type I LastRead 0 FirstWrite -1}
		p_high_threshold {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_5_3_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_5_3_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_5_3_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1923", "Max" : "2086323"}
	, {"Name" : "Interval", "Min" : "1923", "Max" : "2086323"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	magnitude_mat_48 { ap_fifo {  { magnitude_mat_48_dout fifo_data 0 16 }  { magnitude_mat_48_empty_n fifo_status 0 1 }  { magnitude_mat_48_read fifo_update 1 1 } } }
	phase_mat_49 { ap_fifo {  { phase_mat_49_dout fifo_data 0 8 }  { phase_mat_49_empty_n fifo_status 0 1 }  { phase_mat_49_read fifo_update 1 1 } } }
	nms_mat_410 { ap_fifo {  { nms_mat_410_din fifo_data 1 2 }  { nms_mat_410_full_n fifo_status 0 1 }  { nms_mat_410_write fifo_update 1 1 } } }
	low_threshold { ap_fifo {  { low_threshold_dout fifo_data 0 8 }  { low_threshold_empty_n fifo_status 0 1 }  { low_threshold_read fifo_update 1 1 } } }
	high_threshold { ap_fifo {  { high_threshold_dout fifo_data 0 8 }  { high_threshold_empty_n fifo_status 0 1 }  { high_threshold_read fifo_update 1 1 } } }
	imgheight { ap_fifo {  { imgheight_dout fifo_data 0 11 }  { imgheight_empty_n fifo_status 0 1 }  { imgheight_read fifo_update 1 1 } } }
	imgwidth { ap_fifo {  { imgwidth_dout fifo_data 0 11 }  { imgwidth_empty_n fifo_status 0 1 }  { imgwidth_read fifo_update 1 1 } } }
	imgheight_out { ap_fifo {  { imgheight_out_din fifo_data 1 11 }  { imgheight_out_full_n fifo_status 0 1 }  { imgheight_out_write fifo_update 1 1 } } }
	imgwidth_out { ap_fifo {  { imgwidth_out_din fifo_data 1 11 }  { imgwidth_out_full_n fifo_status 0 1 }  { imgwidth_out_write fifo_update 1 1 } } }
}
