set moduleName AxiStream2MatStream
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
set C_modelName {AxiStream2MatStream}
set C_modelType { void 0 }
set C_modelArgList {
	{ ldata1 int 64 regular {fifo 0 volatile }  }
	{ mat_in_478 int 24 regular {fifo 1 volatile }  }
	{ rows int 32 regular {fifo 0}  }
	{ cols_bound_per_npc int 32 regular {fifo 0}  }
	{ last_blk_width int 4 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ldata1", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mat_in_478", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols_bound_per_npc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "last_blk_width", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} ]}
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
	{ ldata1_dout sc_in sc_lv 64 signal 0 } 
	{ ldata1_empty_n sc_in sc_logic 1 signal 0 } 
	{ ldata1_read sc_out sc_logic 1 signal 0 } 
	{ mat_in_478_din sc_out sc_lv 24 signal 1 } 
	{ mat_in_478_full_n sc_in sc_logic 1 signal 1 } 
	{ mat_in_478_write sc_out sc_logic 1 signal 1 } 
	{ rows_dout sc_in sc_lv 32 signal 2 } 
	{ rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ rows_read sc_out sc_logic 1 signal 2 } 
	{ cols_bound_per_npc_dout sc_in sc_lv 32 signal 3 } 
	{ cols_bound_per_npc_empty_n sc_in sc_logic 1 signal 3 } 
	{ cols_bound_per_npc_read sc_out sc_logic 1 signal 3 } 
	{ last_blk_width_dout sc_in sc_lv 4 signal 4 } 
	{ last_blk_width_empty_n sc_in sc_logic 1 signal 4 } 
	{ last_blk_width_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ldata1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ldata1", "role": "dout" }} , 
 	{ "name": "ldata1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ldata1", "role": "empty_n" }} , 
 	{ "name": "ldata1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ldata1", "role": "read" }} , 
 	{ "name": "mat_in_478_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "mat_in_478", "role": "din" }} , 
 	{ "name": "mat_in_478_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_in_478", "role": "full_n" }} , 
 	{ "name": "mat_in_478_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_in_478", "role": "write" }} , 
 	{ "name": "rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "dout" }} , 
 	{ "name": "rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows", "role": "empty_n" }} , 
 	{ "name": "rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows", "role": "read" }} , 
 	{ "name": "cols_bound_per_npc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols_bound_per_npc", "role": "dout" }} , 
 	{ "name": "cols_bound_per_npc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_bound_per_npc", "role": "empty_n" }} , 
 	{ "name": "cols_bound_per_npc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_bound_per_npc", "role": "read" }} , 
 	{ "name": "last_blk_width_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "last_blk_width", "role": "dout" }} , 
 	{ "name": "last_blk_width_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last_blk_width", "role": "empty_n" }} , 
 	{ "name": "last_blk_width_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last_blk_width", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "AxiStream2MatStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "921607",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_in_478", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mat_in_478_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_bound_per_npc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_bound_per_npc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last_blk_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "last_blk_width_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U44", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	AxiStream2MatStream {
		ldata1 {Type I LastRead 5 FirstWrite -1}
		mat_in_478 {Type O LastRead -1 FirstWrite 7}
		rows {Type I LastRead 0 FirstWrite -1}
		cols_bound_per_npc {Type I LastRead 0 FirstWrite -1}
		last_blk_width {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "921607"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "921607"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ldata1 { ap_fifo {  { ldata1_dout fifo_data 0 64 }  { ldata1_empty_n fifo_status 0 1 }  { ldata1_read fifo_update 1 1 } } }
	mat_in_478 { ap_fifo {  { mat_in_478_din fifo_data 1 24 }  { mat_in_478_full_n fifo_status 0 1 }  { mat_in_478_write fifo_update 1 1 } } }
	rows { ap_fifo {  { rows_dout fifo_data 0 32 }  { rows_empty_n fifo_status 0 1 }  { rows_read fifo_update 1 1 } } }
	cols_bound_per_npc { ap_fifo {  { cols_bound_per_npc_dout fifo_data 0 32 }  { cols_bound_per_npc_empty_n fifo_status 0 1 }  { cols_bound_per_npc_read fifo_update 1 1 } } }
	last_blk_width { ap_fifo {  { last_blk_width_dout fifo_data 0 4 }  { last_blk_width_empty_n fifo_status 0 1 }  { last_blk_width_read fifo_update 1 1 } } }
}
