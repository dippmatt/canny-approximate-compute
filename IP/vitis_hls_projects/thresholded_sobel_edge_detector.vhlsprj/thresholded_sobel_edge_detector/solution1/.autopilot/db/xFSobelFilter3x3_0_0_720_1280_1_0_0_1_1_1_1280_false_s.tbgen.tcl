set moduleName xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s
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
set C_modelName {xFSobelFilter3x3<0, 0, 720, 1280, 1, 0, 0, 1, 1, 1, 1280, false>}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_gray_479 int 8 regular {fifo 0 volatile }  }
	{ mat_grad_x_480 int 8 regular {fifo 1 volatile }  }
	{ mat_grad_y_481 int 8 regular {fifo 1 volatile }  }
	{ img_height uint 16 regular  }
	{ img_width uint 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_gray_479", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mat_grad_x_480", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mat_grad_y_481", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "img_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_gray_479_dout sc_in sc_lv 8 signal 0 } 
	{ img_gray_479_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_gray_479_read sc_out sc_logic 1 signal 0 } 
	{ mat_grad_x_480_din sc_out sc_lv 8 signal 1 } 
	{ mat_grad_x_480_full_n sc_in sc_logic 1 signal 1 } 
	{ mat_grad_x_480_write sc_out sc_logic 1 signal 1 } 
	{ mat_grad_y_481_din sc_out sc_lv 8 signal 2 } 
	{ mat_grad_y_481_full_n sc_in sc_logic 1 signal 2 } 
	{ mat_grad_y_481_write sc_out sc_logic 1 signal 2 } 
	{ img_height sc_in sc_lv 16 signal 3 } 
	{ img_width sc_in sc_lv 16 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_gray_479_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_gray_479", "role": "dout" }} , 
 	{ "name": "img_gray_479_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_gray_479", "role": "empty_n" }} , 
 	{ "name": "img_gray_479_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_gray_479", "role": "read" }} , 
 	{ "name": "mat_grad_x_480_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mat_grad_x_480", "role": "din" }} , 
 	{ "name": "mat_grad_x_480_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_x_480", "role": "full_n" }} , 
 	{ "name": "mat_grad_x_480_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_x_480", "role": "write" }} , 
 	{ "name": "mat_grad_y_481_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mat_grad_y_481", "role": "din" }} , 
 	{ "name": "mat_grad_y_481_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_y_481", "role": "full_n" }} , 
 	{ "name": "mat_grad_y_481_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_grad_y_481", "role": "write" }} , 
 	{ "name": "img_height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_height", "role": "default" }} , 
 	{ "name": "img_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "7", "8", "9", "10", "11"],
		"CDFG" : "xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "929363", "EstimateLatencyMax" : "929363",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_gray_479", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_gray_479_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_grad_x_480", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mat_grad_x_480_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_grad_y_481", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mat_grad_y_481_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_1_1_0_0_s_fu_370", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "xFSobel3x3_1_1_0_0_s",
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
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_1_1_0_0_s_fu_370.grp_xFGradientX3x3_0_0_s_fu_72", "Parent" : "4",
		"CDFG" : "xFGradientX3x3_0_0_s",
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
			{"Name" : "t0", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2", "Type" : "None", "Direction" : "I"},
			{"Name" : "m0", "Type" : "None", "Direction" : "I"},
			{"Name" : "m2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_1_1_0_0_s_fu_370.grp_xFGradientY3x3_0_0_s_fu_88", "Parent" : "4",
		"CDFG" : "xFGradientY3x3_0_0_s",
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
			{"Name" : "t0", "Type" : "None", "Direction" : "I"},
			{"Name" : "t1", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFGradientX3x3_0_0_s_fu_387", "Parent" : "0",
		"CDFG" : "xFGradientX3x3_0_0_s",
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
			{"Name" : "t0", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2", "Type" : "None", "Direction" : "I"},
			{"Name" : "m0", "Type" : "None", "Direction" : "I"},
			{"Name" : "m2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFGradientY3x3_0_0_s_fu_403", "Parent" : "0",
		"CDFG" : "xFGradientY3x3_0_0_s",
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
			{"Name" : "t0", "Type" : "None", "Direction" : "I"},
			{"Name" : "t1", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U108", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U109", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U110", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s {
		img_gray_479 {Type I LastRead 5 FirstWrite -1}
		mat_grad_x_480 {Type O LastRead -1 FirstWrite 9}
		mat_grad_y_481 {Type O LastRead -1 FirstWrite 9}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}}
	xFSobel3x3_1_1_0_0_s {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}}
	xFGradientX3x3_0_0_s {
		t0 {Type I LastRead 0 FirstWrite -1}
		t2 {Type I LastRead 0 FirstWrite -1}
		m0 {Type I LastRead 0 FirstWrite -1}
		m2 {Type I LastRead 0 FirstWrite -1}
		b0 {Type I LastRead 0 FirstWrite -1}
		b2 {Type I LastRead 0 FirstWrite -1}}
	xFGradientY3x3_0_0_s {
		t0 {Type I LastRead 0 FirstWrite -1}
		t1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type I LastRead 0 FirstWrite -1}
		b0 {Type I LastRead 0 FirstWrite -1}
		b1 {Type I LastRead 0 FirstWrite -1}
		b2 {Type I LastRead 0 FirstWrite -1}}
	xFGradientX3x3_0_0_s {
		t0 {Type I LastRead 0 FirstWrite -1}
		t2 {Type I LastRead 0 FirstWrite -1}
		m0 {Type I LastRead 0 FirstWrite -1}
		m2 {Type I LastRead 0 FirstWrite -1}
		b0 {Type I LastRead 0 FirstWrite -1}
		b2 {Type I LastRead 0 FirstWrite -1}}
	xFGradientY3x3_0_0_s {
		t0 {Type I LastRead 0 FirstWrite -1}
		t1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type I LastRead 0 FirstWrite -1}
		b0 {Type I LastRead 0 FirstWrite -1}
		b1 {Type I LastRead 0 FirstWrite -1}
		b2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "929363", "Max" : "929363"}
	, {"Name" : "Interval", "Min" : "929363", "Max" : "929363"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	img_gray_479 { ap_fifo {  { img_gray_479_dout fifo_data 0 8 }  { img_gray_479_empty_n fifo_status 0 1 }  { img_gray_479_read fifo_update 1 1 } } }
	mat_grad_x_480 { ap_fifo {  { mat_grad_x_480_din fifo_data 1 8 }  { mat_grad_x_480_full_n fifo_status 0 1 }  { mat_grad_x_480_write fifo_update 1 1 } } }
	mat_grad_y_481 { ap_fifo {  { mat_grad_y_481_din fifo_data 1 8 }  { mat_grad_y_481_full_n fifo_status 0 1 }  { mat_grad_y_481_write fifo_update 1 1 } } }
	img_height { ap_none {  { img_height in_data 0 16 } } }
	img_width { ap_none {  { img_width in_data 0 16 } } }
}
