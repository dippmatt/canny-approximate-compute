set moduleName xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_s
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
set C_modelName {xFSobel<0, 2, 1080, 1920, 0, 3, 1, 1, 5, 3, false>}
set C_modelType { void 0 }
set C_modelArgList {
	{ gaussian_mat_41 int 8 regular {fifo 0 volatile }  }
	{ gradx_mat_42 int 16 regular {fifo 1 volatile }  }
	{ grady_mat_45 int 16 regular {fifo 1 volatile }  }
	{ imgheight int 11 regular {fifo 0}  }
	{ imgwidth int 11 regular {fifo 0}  }
	{ imgheight_out int 11 regular {fifo 1}  }
	{ imgwidth_out int 11 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gaussian_mat_41", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "gradx_mat_42", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "grady_mat_45", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgheight", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "imgwidth", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "imgheight_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgwidth_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
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
	{ gaussian_mat_41_dout sc_in sc_lv 8 signal 0 } 
	{ gaussian_mat_41_empty_n sc_in sc_logic 1 signal 0 } 
	{ gaussian_mat_41_read sc_out sc_logic 1 signal 0 } 
	{ gradx_mat_42_din sc_out sc_lv 16 signal 1 } 
	{ gradx_mat_42_full_n sc_in sc_logic 1 signal 1 } 
	{ gradx_mat_42_write sc_out sc_logic 1 signal 1 } 
	{ grady_mat_45_din sc_out sc_lv 16 signal 2 } 
	{ grady_mat_45_full_n sc_in sc_logic 1 signal 2 } 
	{ grady_mat_45_write sc_out sc_logic 1 signal 2 } 
	{ imgheight_dout sc_in sc_lv 11 signal 3 } 
	{ imgheight_empty_n sc_in sc_logic 1 signal 3 } 
	{ imgheight_read sc_out sc_logic 1 signal 3 } 
	{ imgwidth_dout sc_in sc_lv 11 signal 4 } 
	{ imgwidth_empty_n sc_in sc_logic 1 signal 4 } 
	{ imgwidth_read sc_out sc_logic 1 signal 4 } 
	{ imgheight_out_din sc_out sc_lv 11 signal 5 } 
	{ imgheight_out_full_n sc_in sc_logic 1 signal 5 } 
	{ imgheight_out_write sc_out sc_logic 1 signal 5 } 
	{ imgwidth_out_din sc_out sc_lv 11 signal 6 } 
	{ imgwidth_out_full_n sc_in sc_logic 1 signal 6 } 
	{ imgwidth_out_write sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "gaussian_mat_41_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gaussian_mat_41", "role": "dout" }} , 
 	{ "name": "gaussian_mat_41_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gaussian_mat_41", "role": "empty_n" }} , 
 	{ "name": "gaussian_mat_41_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gaussian_mat_41", "role": "read" }} , 
 	{ "name": "gradx_mat_42_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradx_mat_42", "role": "din" }} , 
 	{ "name": "gradx_mat_42_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx_mat_42", "role": "full_n" }} , 
 	{ "name": "gradx_mat_42_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx_mat_42", "role": "write" }} , 
 	{ "name": "grady_mat_45_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grady_mat_45", "role": "din" }} , 
 	{ "name": "grady_mat_45_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady_mat_45", "role": "full_n" }} , 
 	{ "name": "grady_mat_45_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady_mat_45", "role": "write" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2091024", "EstimateLatencyMax" : "2091024",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gaussian_mat_41", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66", "Port" : "gaussian_mat_41"}]},
			{"Name" : "gradx_mat_42", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66", "Port" : "gradx_mat_42"}]},
			{"Name" : "grady_mat_45", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66", "Port" : "grady_mat_45"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2091023", "EstimateLatencyMax" : "2091023",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gaussian_mat_41", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gaussian_mat_41_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gradx_mat_42", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gradx_mat_42_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady_mat_45", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "grady_mat_45_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.buf_V_0_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.buf_V_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.buf_V_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U95", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_13_1_1_U96", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U97", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U98", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U99", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U100", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U101", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U102", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_s {
		gaussian_mat_41 {Type I LastRead 8 FirstWrite -1}
		gradx_mat_42 {Type O LastRead -1 FirstWrite 13}
		grady_mat_45 {Type O LastRead -1 FirstWrite 13}
		imgheight {Type I LastRead 0 FirstWrite -1}
		imgwidth {Type I LastRead 0 FirstWrite -1}
		imgheight_out {Type O LastRead -1 FirstWrite 0}
		imgwidth_out {Type O LastRead -1 FirstWrite 0}}
	xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s {
		gaussian_mat_41 {Type I LastRead 8 FirstWrite -1}
		gradx_mat_42 {Type O LastRead -1 FirstWrite 13}
		grady_mat_45 {Type O LastRead -1 FirstWrite 13}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2091024", "Max" : "2091024"}
	, {"Name" : "Interval", "Min" : "2091024", "Max" : "2091024"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gaussian_mat_41 { ap_fifo {  { gaussian_mat_41_dout fifo_data 0 8 }  { gaussian_mat_41_empty_n fifo_status 0 1 }  { gaussian_mat_41_read fifo_update 1 1 } } }
	gradx_mat_42 { ap_fifo {  { gradx_mat_42_din fifo_data 1 16 }  { gradx_mat_42_full_n fifo_status 0 1 }  { gradx_mat_42_write fifo_update 1 1 } } }
	grady_mat_45 { ap_fifo {  { grady_mat_45_din fifo_data 1 16 }  { grady_mat_45_full_n fifo_status 0 1 }  { grady_mat_45_write fifo_update 1 1 } } }
	imgheight { ap_fifo {  { imgheight_dout fifo_data 0 11 }  { imgheight_empty_n fifo_status 0 1 }  { imgheight_read fifo_update 1 1 } } }
	imgwidth { ap_fifo {  { imgwidth_dout fifo_data 0 11 }  { imgwidth_empty_n fifo_status 0 1 }  { imgwidth_read fifo_update 1 1 } } }
	imgheight_out { ap_fifo {  { imgheight_out_din fifo_data 1 11 }  { imgheight_out_full_n fifo_status 0 1 }  { imgheight_out_write fifo_update 1 1 } } }
	imgwidth_out { ap_fifo {  { imgwidth_out_din fifo_data 1 11 }  { imgwidth_out_full_n fifo_status 0 1 }  { imgwidth_out_write fifo_update 1 1 } } }
}
