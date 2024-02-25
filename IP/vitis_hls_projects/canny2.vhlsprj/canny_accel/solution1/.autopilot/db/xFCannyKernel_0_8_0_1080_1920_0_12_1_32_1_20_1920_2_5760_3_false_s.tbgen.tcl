set moduleName xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {xFCannyKernel<0, 8, 0, 1080, 1920, 0, 12, 1, 32, 1, 20, 1920, 2, 5760, 3, false>}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_mat_418 int 8 regular {fifo 0 volatile }  }
	{ dst_mat_419 int 64 regular {fifo 1 volatile }  }
	{ p_lowthreshold uint 8 regular  }
	{ p_highthreshold uint 8 regular  }
	{ img_height uint 11 regular  }
	{ img_width uint 11 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_mat_418", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dst_mat_419", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_lowthreshold", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_highthreshold", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "img_height", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "img_width", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ in_mat_418_dout sc_in sc_lv 8 signal 0 } 
	{ in_mat_418_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_mat_418_read sc_out sc_logic 1 signal 0 } 
	{ dst_mat_419_din sc_out sc_lv 64 signal 1 } 
	{ dst_mat_419_full_n sc_in sc_logic 1 signal 1 } 
	{ dst_mat_419_write sc_out sc_logic 1 signal 1 } 
	{ p_lowthreshold sc_in sc_lv 8 signal 2 } 
	{ p_highthreshold sc_in sc_lv 8 signal 3 } 
	{ img_height sc_in sc_lv 11 signal 4 } 
	{ img_width sc_in sc_lv 11 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ p_lowthreshold_ap_vld sc_in sc_logic 1 invld 2 } 
	{ p_highthreshold_ap_vld sc_in sc_logic 1 invld 3 } 
	{ img_height_ap_vld sc_in sc_logic 1 invld 4 } 
	{ img_width_ap_vld sc_in sc_logic 1 invld 5 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "in_mat_418_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_mat_418", "role": "dout" }} , 
 	{ "name": "in_mat_418_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_418", "role": "empty_n" }} , 
 	{ "name": "in_mat_418_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_418", "role": "read" }} , 
 	{ "name": "dst_mat_419_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dst_mat_419", "role": "din" }} , 
 	{ "name": "dst_mat_419_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_419", "role": "full_n" }} , 
 	{ "name": "dst_mat_419_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_419", "role": "write" }} , 
 	{ "name": "p_lowthreshold", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_lowthreshold", "role": "default" }} , 
 	{ "name": "p_highthreshold", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_highthreshold", "role": "default" }} , 
 	{ "name": "img_height", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "img_height", "role": "default" }} , 
 	{ "name": "img_width", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "img_width", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "p_lowthreshold_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_lowthreshold", "role": "ap_vld" }} , 
 	{ "name": "p_highthreshold_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_highthreshold", "role": "ap_vld" }} , 
 	{ "name": "img_height_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "img_height", "role": "ap_vld" }} , 
 	{ "name": "img_width_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "img_width", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "11", "24", "25", "26", "27", "29", "43", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80"],
		"CDFG" : "xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4161741", "EstimateLatencyMax" : "4163661",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_entry21_U0"}],
		"OutputProcess" : [
			{"ID" : "43", "Name" : "xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_U0"}],
		"Port" : [
			{"Name" : "in_mat_418", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0", "Port" : "in_mat_418"}]},
			{"Name" : "dst_mat_419", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_U0", "Port" : "dst_mat_419"}]},
			{"Name" : "p_lowthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_highthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_entry21_U0", "Parent" : "0",
		"CDFG" : "xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_entry21",
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
			{"Name" : "p_lowthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_highthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lowthreshold_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "45", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_lowthreshold_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_highthreshold_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "46", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_highthreshold_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "48", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "49", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "50", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0_U",
		"Port" : [
			{"Name" : "in_mat_418", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_mat_418_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gaussian_mat_41", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "51", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gaussian_mat_41_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "49", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "52", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "53", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.buf_V_0_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.buf_V_1_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.buf_V_2_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.src_buf1_V_2_xfExtractPixels_1_1_0_s_fu_418", "Parent" : "2",
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.src_buf2_V_2_xfExtractPixels_1_1_0_s_fu_423", "Parent" : "2",
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.b2_V_xfExtractPixels_1_1_0_s_fu_428", "Parent" : "2",
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.mux_32_8_1_1_U85", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.mux_32_8_1_1_U86", "Parent" : "2"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0", "Parent" : "0", "Child" : ["12"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0_U",
		"Port" : [
			{"Name" : "gaussian_mat_41", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "51", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66", "Port" : "gaussian_mat_41"}]},
			{"Name" : "gradx_mat_42", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "54", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66", "Port" : "gradx_mat_42"}]},
			{"Name" : "grady_mat_45", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "55", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66", "Port" : "grady_mat_45"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "52", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "53", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "56", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "57", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66", "Parent" : "11", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.buf_V_0_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.buf_V_1_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.buf_V_2_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U95", "Parent" : "12"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_13_1_1_U96", "Parent" : "12"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U97", "Parent" : "12"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U98", "Parent" : "12"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U99", "Parent" : "12"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U100", "Parent" : "12"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U101", "Parent" : "12"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U102", "Parent" : "12"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFDuplicate_rows_2_1080_1920_3_1_5_1920_U0", "Parent" : "0",
		"CDFG" : "xFDuplicate_rows_2_1080_1920_3_1_5_1920_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2076841", "EstimateLatencyMax" : "2076841",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "11",
		"StartFifo" : "start_for_xFDuplicate_rows_2_1080_1920_3_1_5_1920_U0_U",
		"Port" : [
			{"Name" : "gradx_mat_42", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "54", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gradx_mat_42_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady_mat_45", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "55", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "grady_mat_45_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gradx1_mat_43", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "58", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gradx1_mat_43_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gradx2_mat_44", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "59", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gradx2_mat_44_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady1_mat_46", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "grady1_mat_46_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady2_mat_47", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "grady2_mat_47_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "56", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "57", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "63", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "65", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_Block_ZN2xf2cv3MatILi0ELi1080ELi1920ELi1ELi2EEC2Eii_exit15_proc_U0", "Parent" : "0",
		"CDFG" : "xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_Block_ZN2xf2cv3MatILi0ELi1080ELi1920ELi1ELi2EEC2Eii_exit15_proc",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_Blbkb_U",
		"Port" : [
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "50", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "48", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "66", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "67", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFMagnitudeKernel_2_2_1080_1920_3_3_1_5_5_1920_2_U0", "Parent" : "0",
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
		"StartSource" : "25",
		"StartFifo" : "start_for_xFMagnitudeKernel_2_2_1080_1920_3_3_1_5_5_1920_2_U0_U",
		"Port" : [
			{"Name" : "gradx1_mat_43", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "58", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gradx1_mat_43_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady1_mat_46", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "grady1_mat_46_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "magnitude_mat_48", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "magnitude_mat_48_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "67", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "66", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFAngleKernel_2_0_1080_1920_3_0_1_5_1_1920_5760_U0", "Parent" : "0", "Child" : ["28"],
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
		"StartSource" : "24",
		"StartFifo" : "start_for_xFAngleKernel_2_0_1080_1920_3_0_1_5_1_1920_5760_U0_U",
		"Port" : [
			{"Name" : "gradx2_mat_44", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "59", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gradx2_mat_44_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady2_mat_47", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "grady2_mat_47_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "phase_mat_49", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "69", "DependentChanDepth" : "5760", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "phase_mat_49_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAngleKernel_2_0_1080_1920_3_0_1_5_1_1920_5760_U0.mul_17s_15ns_32_2_1_U137", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0", "Parent" : "0", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0_U",
		"Port" : [
			{"Name" : "magnitude_mat_48", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "magnitude_mat_48_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "phase_mat_49", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "69", "DependentChanDepth" : "5760", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "phase_mat_49_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nms_mat_410", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nms_mat_410_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "low_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "45", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "46", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "63", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "65", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.angle_V_0_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.angle_V_1_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.buf_V_0_U", "Parent" : "29"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.buf_V_1_U", "Parent" : "29"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.buf_V_2_U", "Parent" : "29"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.grp_xFFindmax3x3_3_0_12_s_fu_538", "Parent" : "29",
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
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.l00_buf_V_2_xfExtractPixels_1_5_3_s_fu_564", "Parent" : "29",
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
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.l10_buf_V_2_xfExtractPixels_1_5_3_s_fu_569", "Parent" : "29",
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
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.l20_buf_V_2_xfExtractPixels_1_5_3_s_fu_574", "Parent" : "29",
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.angle_buf_V_2_xfExtractPixels_1_1_0_s_fu_579", "Parent" : "29",
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
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.mux_32_16_1_1_U157", "Parent" : "29"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.mux_32_16_1_1_U158", "Parent" : "29"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.mux_32_16_1_1_U159", "Parent" : "29"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_U0", "Parent" : "0", "Child" : ["44"],
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
		"StartSource" : "29",
		"StartFifo" : "start_for_xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_U0_U",
		"Port" : [
			{"Name" : "nms_mat_410", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nms_mat_410_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_read_r_fu_527", "Port" : "nms_mat_410"}]},
			{"Name" : "dst_mat_419", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_mat_419_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_read_r_fu_527", "SubBlockPort" : ["nms_mat_410_blk_n"]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_U0.grp_read_r_fu_527", "Parent" : "43",
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
					{"Name" : "nms_mat_410_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lowthreshold_c_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_highthreshold_c_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_c_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_c19_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_c_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_c20_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gaussian_mat_data_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_c21_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_c22_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gradx_mat_data_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grady_mat_data_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_c23_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_c24_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gradx1_mat_data_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gradx2_mat_data_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grady1_mat_data_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grady2_mat_data_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_c25_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_c26_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_c27_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_c28_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgwidth_c_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.height_c_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.magnitude_mat_data_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.phase_mat_data_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nms_mat_data_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_c29_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_c30_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_Blbkb_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFDuplicate_rows_2_1080_1920_3_1_5_1920_U0_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFAngleKernel_2_0_1080_1920_3_0_1_5_1_1920_5760_U0_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFMagnitudeKernel_2_2_1080_1920_3_3_1_5_5_1920_2_U0_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s {
		in_mat_418 {Type I LastRead 5 FirstWrite -1}
		dst_mat_419 {Type O LastRead -1 FirstWrite 35}
		p_lowthreshold {Type I LastRead 0 FirstWrite -1}
		p_highthreshold {Type I LastRead 0 FirstWrite -1}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}}
	xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_entry21 {
		p_lowthreshold {Type I LastRead 0 FirstWrite -1}
		p_highthreshold {Type I LastRead 0 FirstWrite -1}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}
		p_lowthreshold_out {Type O LastRead -1 FirstWrite 0}
		p_highthreshold_out {Type O LastRead -1 FirstWrite 0}
		img_height_out {Type O LastRead -1 FirstWrite 0}
		img_height_out1 {Type O LastRead -1 FirstWrite 0}
		img_width_out {Type O LastRead -1 FirstWrite 0}
		img_width_out2 {Type O LastRead -1 FirstWrite 0}}
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
		p_read1 {Type I LastRead 0 FirstWrite -1}}
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
		img_width {Type I LastRead 0 FirstWrite -1}}
	xFDuplicate_rows_2_1080_1920_3_1_5_1920_s {
		gradx_mat_42 {Type I LastRead 3 FirstWrite -1}
		grady_mat_45 {Type I LastRead 3 FirstWrite -1}
		gradx1_mat_43 {Type O LastRead -1 FirstWrite 3}
		gradx2_mat_44 {Type O LastRead -1 FirstWrite 3}
		grady1_mat_46 {Type O LastRead -1 FirstWrite 3}
		grady2_mat_47 {Type O LastRead -1 FirstWrite 3}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}
		img_height_out {Type O LastRead -1 FirstWrite 0}
		img_height_out1 {Type O LastRead -1 FirstWrite 0}
		img_width_out {Type O LastRead -1 FirstWrite 0}
		img_width_out2 {Type O LastRead -1 FirstWrite 0}}
	xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_Block_ZN2xf2cv3MatILi0ELi1080ELi1920ELi1ELi2EEC2Eii_exit15_proc {
		img_width {Type I LastRead 0 FirstWrite -1}
		img_height {Type I LastRead 0 FirstWrite -1}
		imgwidth_out {Type O LastRead -1 FirstWrite 0}
		height_out {Type O LastRead -1 FirstWrite 0}}
	xFMagnitudeKernel_2_2_1080_1920_3_3_1_5_5_1920_2_s {
		gradx1_mat_43 {Type I LastRead 3 FirstWrite -1}
		grady1_mat_46 {Type I LastRead 3 FirstWrite -1}
		magnitude_mat_48 {Type O LastRead -1 FirstWrite 4}
		imgheight {Type I LastRead 0 FirstWrite -1}
		imgwidth {Type I LastRead 0 FirstWrite -1}}
	xFAngleKernel_2_0_1080_1920_3_0_1_5_1_1920_5760_s {
		gradx2_mat_44 {Type I LastRead 3 FirstWrite -1}
		grady2_mat_47 {Type I LastRead 3 FirstWrite -1}
		phase_mat_49 {Type O LastRead -1 FirstWrite 7}
		imgheight {Type I LastRead 0 FirstWrite -1}
		imgwidth {Type I LastRead 0 FirstWrite -1}}
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
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_s {
		nms_mat_410 {Type I LastRead 0 FirstWrite -1}
		dst_mat_419 {Type O LastRead -1 FirstWrite 35}
		imgheight {Type I LastRead 0 FirstWrite -1}
		imgwidth {Type I LastRead 0 FirstWrite -1}}
	read_r {
		nms_mat_410 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4161741", "Max" : "4163661"}
	, {"Name" : "Interval", "Min" : "2091025", "Max" : "2091025"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_mat_418 { ap_fifo {  { in_mat_418_dout fifo_data 0 8 }  { in_mat_418_empty_n fifo_status 0 1 }  { in_mat_418_read fifo_update 1 1 } } }
	dst_mat_419 { ap_fifo {  { dst_mat_419_din fifo_data 1 64 }  { dst_mat_419_full_n fifo_status 0 1 }  { dst_mat_419_write fifo_update 1 1 } } }
	p_lowthreshold { ap_none {  { p_lowthreshold in_data 0 8 }  { p_lowthreshold_ap_vld in_vld 0 1 } } }
	p_highthreshold { ap_none {  { p_highthreshold in_data 0 8 }  { p_highthreshold_ap_vld in_vld 0 1 } } }
	img_height { ap_none {  { img_height in_data 0 11 }  { img_height_ap_vld in_vld 0 1 } } }
	img_width { ap_none {  { img_width in_data 0 11 }  { img_width_ap_vld in_vld 0 1 } } }
}
