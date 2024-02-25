set moduleName canny_accel
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {canny_accel}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem1 int 64 regular {axi_master 0}  }
	{ gmem2 int 64 regular {axi_master 1}  }
	{ img_inp int 64 regular {axi_slave 0}  }
	{ img_out int 64 regular {axi_slave 0}  }
	{ rows int 32 regular {axi_slave 0}  }
	{ cols int 32 regular {axi_slave 0}  }
	{ low_threshold int 32 regular {axi_slave 0}  }
	{ high_threshold int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_inp","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "img_inp","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_out","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "img_out","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "img_inp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "img_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "rows", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rows","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "cols", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cols","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "low_threshold", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "low_threshold","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "high_threshold", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "high_threshold","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":64}, "offset_end" : {"in":71}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"canny_accel","role":"start","value":"0","valid_bit":"0"},{"name":"canny_accel","role":"continue","value":"0","valid_bit":"4"},{"name":"canny_accel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"img_inp","role":"data","value":"16"},{"name":"img_out","role":"data","value":"28"},{"name":"rows","role":"data","value":"40"},{"name":"cols","role":"data","value":"48"},{"name":"low_threshold","role":"data","value":"56"},{"name":"high_threshold","role":"data","value":"64"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"canny_accel","role":"start","value":"0","valid_bit":"0"},{"name":"canny_accel","role":"done","value":"0","valid_bit":"1"},{"name":"canny_accel","role":"idle","value":"0","valid_bit":"2"},{"name":"canny_accel","role":"ready","value":"0","valid_bit":"3"},{"name":"canny_accel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "31", "113", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154"],
		"CDFG" : "canny_accel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4161754", "EstimateLatencyMax" : "4163674",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "Block_ZN2xf2cv3MatILi0ELi1080ELi1920ELi1ELi2EEC2Eii_exit11_proc40_U0"},
			{"ID" : "5", "Name" : "Array2xfMat_64_0_1080_1920_1_U0"}],
		"OutputProcess" : [
			{"ID" : "113", "Name" : "xfMat2Array_64_8_1080_1920_32_1_U0"}],
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "Array2xfMat_64_0_1080_1920_1_U0", "Port" : "gmem1"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "xfMat2Array_64_8_1080_1920_32_1_U0", "Port" : "gmem2"}]},
			{"Name" : "img_inp", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "low_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "high_threshold", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem2_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_ZN2xf2cv3MatILi0ELi1080ELi1920ELi1ELi2EEC2Eii_exit11_proc40_U0", "Parent" : "0",
		"CDFG" : "Block_ZN2xf2cv3MatILi0ELi1080ELi1920ELi1ELi2EEC2Eii_exit11_proc40",
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
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_inp", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "low_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "high_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_mat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "141", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "in_mat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_mat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "142", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "in_mat_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_mat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "143", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dst_mat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_mat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "144", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dst_mat_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_inp_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "145", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_inp_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "146", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "low_threshold_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "147", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_threshold_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_threshold_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "148", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_threshold_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "Array2xfMat_64_0_1080_1920_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "2073616",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi2Mat_fu_80", "Port" : "gmem1"}]},
			{"Name" : "in_mat_418", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "149", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi2Mat_fu_80", "Port" : "in_mat_418"}]},
			{"Name" : "srcPtr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "145", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "srcPtr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dstMat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "141", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dstMat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "142", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dstMat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "150", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dstMat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "151", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80", "Parent" : "5", "Child" : ["7", "8", "9", "10", "12", "13", "14", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "Axi2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "2073615",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "7", "Name" : "Axi2Mat_entry3_U0"},
			{"ID" : "9", "Name" : "last_blk_pxl_width_1_U0"},
			{"ID" : "13", "Name" : "Axi2AxiStream_U0"}],
		"OutputProcess" : [
			{"ID" : "14", "Name" : "AxiStream2MatStream_U0"}],
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "Axi2AxiStream_U0", "Port" : "gmem1"}]},
			{"Name" : "in_mat_418", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "AxiStream2MatStream_U0", "Port" : "in_mat_418"}]},
			{"Name" : "din", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.Axi2Mat_entry3_U0", "Parent" : "6",
		"CDFG" : "Axi2Mat_entry3",
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
			{"Name" : "din", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "din_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "din_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.Axi2Mat_entry15_U0", "Parent" : "6",
		"CDFG" : "Axi2Mat_entry15",
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
		"StartSource" : "7",
		"StartFifo" : "start_for_Axi2Mat_entry15_U0_U",
		"Port" : [
			{"Name" : "din", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "din_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "din_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "19", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "din_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.last_blk_pxl_width_1_U0", "Parent" : "6",
		"CDFG" : "last_blk_pxl_width_1",
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
			{"Name" : "ret_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "22", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.addrbound_1_U0", "Parent" : "6", "Child" : ["11"],
		"CDFG" : "addrbound_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "8",
		"StartFifo" : "start_for_addrbound_1_U0_U",
		"Port" : [
			{"Name" : "return_r", "Type" : "Vld", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "24", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.addrbound_1_U0.mul_22s_22s_22_1_1_U28", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.Axi2Mat_Block_split37_proc_U0", "Parent" : "6",
		"CDFG" : "Axi2Mat_Block_split37_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "axibound_V_2", "Type" : "None", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.Axi2AxiStream_U0", "Parent" : "6",
		"CDFG" : "Axi2AxiStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "259210",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "din", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "19", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "din_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "addrbound_V_read", "Type" : "None", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.AxiStream2MatStream_U0", "Parent" : "6", "Child" : ["15"],
		"CDFG" : "AxiStream2MatStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "2073607",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "9",
		"StartFifo" : "start_for_AxiStream2MatStream_U0_U",
		"Port" : [
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_mat_418", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_mat_418_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "24", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_bound_per_npc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_bound_per_npc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last_blk_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "22", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "last_blk_width_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.AxiStream2MatStream_U0.mul_32s_32s_32_2_1_U40", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.din_c1_U", "Parent" : "6"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.rows_c2_U", "Parent" : "6"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.cols_c3_U", "Parent" : "6"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.din_c_U", "Parent" : "6"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.rows_c_U", "Parent" : "6"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.cols_c_U", "Parent" : "6"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.last_blk_width_c_U", "Parent" : "6"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.p_channel_U", "Parent" : "6"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.rows_c15_U", "Parent" : "6"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.cols_c16_U", "Parent" : "6"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.axibound_V_U", "Parent" : "6"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.ldata_U", "Parent" : "6"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.start_for_Axi2Mat_entry15_U0_U", "Parent" : "6"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.start_for_addrbound_1_U0_U", "Parent" : "6"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_0_1080_1920_1_U0.grp_Axi2Mat_fu_80.start_for_AxiStream2MatStream_U0_U", "Parent" : "6"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "Canny_3_0_0_8_1080_1920_1_32_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4161742", "EstimateLatencyMax" : "4163662",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_Canny_3_0_0_8_1080_1920_1_32_false_U0_U",
		"Port" : [
			{"Name" : "in_mat_data", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "149", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58", "Port" : "in_mat_418"}]},
			{"Name" : "dst_mat_data", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "152", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58", "Port" : "dst_mat_419"}]},
			{"Name" : "in_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "150", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "in_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "151", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "in_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "low_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "147", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "148", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_threshold_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58", "Parent" : "31", "Child" : ["33", "34", "43", "56", "57", "58", "59", "61", "75", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112"],
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
			{"ID" : "33", "Name" : "xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_entry21_U0"}],
		"OutputProcess" : [
			{"ID" : "75", "Name" : "xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_U0"}],
		"Port" : [
			{"Name" : "in_mat_418", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0", "Port" : "in_mat_418"}]},
			{"Name" : "dst_mat_419", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_U0", "Port" : "dst_mat_419"}]},
			{"Name" : "p_lowthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_highthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_entry21_U0", "Parent" : "32",
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
			{"Name" : "p_lowthreshold_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "77", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_lowthreshold_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_highthreshold_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "78", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_highthreshold_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "82", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0", "Parent" : "32", "Child" : ["35", "36", "37", "38", "39", "40", "41", "42"],
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
		"StartSource" : "33",
		"StartFifo" : "start_for_xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0_U",
		"Port" : [
			{"Name" : "in_mat_418", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_mat_418_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gaussian_mat_41", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "83", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gaussian_mat_41_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.buf_V_0_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.buf_V_1_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.buf_V_2_U", "Parent" : "34"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.src_buf1_V_2_xfExtractPixels_1_1_0_s_fu_418", "Parent" : "34",
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
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.src_buf2_V_2_xfExtractPixels_1_1_0_s_fu_423", "Parent" : "34",
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
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.b2_V_xfExtractPixels_1_1_0_s_fu_428", "Parent" : "34",
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.mux_32_8_1_1_U85", "Parent" : "34"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0.mux_32_8_1_1_U86", "Parent" : "34"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0", "Parent" : "32", "Child" : ["44"],
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
		"StartSource" : "34",
		"StartFifo" : "start_for_xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0_U",
		"Port" : [
			{"Name" : "gaussian_mat_41", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "83", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66", "Port" : "gaussian_mat_41"}]},
			{"Name" : "gradx_mat_42", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66", "Port" : "gradx_mat_42"}]},
			{"Name" : "grady_mat_45", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66", "Port" : "grady_mat_45"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66", "Parent" : "43", "Child" : ["45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55"],
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
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.buf_V_0_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.buf_V_1_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.buf_V_2_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U95", "Parent" : "44"},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_13_1_1_U96", "Parent" : "44"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U97", "Parent" : "44"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U98", "Parent" : "44"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U99", "Parent" : "44"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U100", "Parent" : "44"},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U101", "Parent" : "44"},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_1_5_1921_3_9_false_s_fu_66.mux_32_8_1_1_U102", "Parent" : "44"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFDuplicate_rows_2_1080_1920_3_1_5_1920_U0", "Parent" : "32",
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
		"StartSource" : "43",
		"StartFifo" : "start_for_xFDuplicate_rows_2_1080_1920_3_1_5_1920_U0_U",
		"Port" : [
			{"Name" : "gradx_mat_42", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gradx_mat_42_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady_mat_45", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "grady_mat_45_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gradx1_mat_43", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gradx1_mat_43_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gradx2_mat_44", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gradx2_mat_44_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady1_mat_46", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "grady1_mat_46_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady2_mat_47", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "grady2_mat_47_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "95", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "97", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_Block_ZN2xf2cv3MatILi0ELi1080ELi1920ELi1ELi2EEC2Eii_exit15_proc_U0", "Parent" : "32",
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
		"StartSource" : "33",
		"StartFifo" : "start_for_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_Blbkb_U",
		"Port" : [
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "82", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "98", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "99", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFMagnitudeKernel_2_2_1080_1920_3_3_1_5_5_1920_2_U0", "Parent" : "32",
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
		"StartSource" : "57",
		"StartFifo" : "start_for_xFMagnitudeKernel_2_2_1080_1920_3_3_1_5_5_1920_2_U0_U",
		"Port" : [
			{"Name" : "gradx1_mat_43", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gradx1_mat_43_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady1_mat_46", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "grady1_mat_46_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "magnitude_mat_48", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "magnitude_mat_48_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "99", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "98", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFAngleKernel_2_0_1080_1920_3_0_1_5_1_1920_5760_U0", "Parent" : "32", "Child" : ["60"],
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
		"StartSource" : "56",
		"StartFifo" : "start_for_xFAngleKernel_2_0_1080_1920_3_0_1_5_1_1920_5760_U0_U",
		"Port" : [
			{"Name" : "gradx2_mat_44", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gradx2_mat_44_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady2_mat_47", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "grady2_mat_47_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "phase_mat_49", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "101", "DependentChanDepth" : "5760", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "phase_mat_49_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFAngleKernel_2_0_1080_1920_3_0_1_5_1_1920_5760_U0.mul_17s_15ns_32_2_1_U137", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0", "Parent" : "32", "Child" : ["62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
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
		"StartSource" : "33",
		"StartFifo" : "start_for_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0_U",
		"Port" : [
			{"Name" : "magnitude_mat_48", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "magnitude_mat_48_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "phase_mat_49", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "101", "DependentChanDepth" : "5760", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "phase_mat_49_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nms_mat_410", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nms_mat_410_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "low_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "77", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "78", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "95", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "97", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.angle_V_0_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.angle_V_1_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.buf_V_0_U", "Parent" : "61"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.buf_V_1_U", "Parent" : "61"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.buf_V_2_U", "Parent" : "61"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.grp_xFFindmax3x3_3_0_12_s_fu_538", "Parent" : "61",
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
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.l00_buf_V_2_xfExtractPixels_1_5_3_s_fu_564", "Parent" : "61",
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.l10_buf_V_2_xfExtractPixels_1_5_3_s_fu_569", "Parent" : "61",
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
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.l20_buf_V_2_xfExtractPixels_1_5_3_s_fu_574", "Parent" : "61",
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
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.angle_buf_V_2_xfExtractPixels_1_1_0_s_fu_579", "Parent" : "61",
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
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.mux_32_16_1_1_U157", "Parent" : "61"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.mux_32_16_1_1_U158", "Parent" : "61"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0.mux_32_16_1_1_U159", "Parent" : "61"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_U0", "Parent" : "32", "Child" : ["76"],
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
		"StartSource" : "61",
		"StartFifo" : "start_for_xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_U0_U",
		"Port" : [
			{"Name" : "nms_mat_410", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nms_mat_410_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_read_r_fu_527", "Port" : "nms_mat_410"}]},
			{"Name" : "dst_mat_419", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_mat_419_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_read_r_fu_527", "SubBlockPort" : ["nms_mat_410_blk_n"]}]},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_U0.grp_read_r_fu_527", "Parent" : "75",
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
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.p_lowthreshold_c_U", "Parent" : "32"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.p_highthreshold_c_U", "Parent" : "32"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_height_c_U", "Parent" : "32"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_height_c19_U", "Parent" : "32"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_width_c_U", "Parent" : "32"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_width_c20_U", "Parent" : "32"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.gaussian_mat_data_U", "Parent" : "32"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_height_c21_U", "Parent" : "32"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_width_c22_U", "Parent" : "32"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.gradx_mat_data_U", "Parent" : "32"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.grady_mat_data_U", "Parent" : "32"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_height_c23_U", "Parent" : "32"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_width_c24_U", "Parent" : "32"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.gradx1_mat_data_U", "Parent" : "32"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.gradx2_mat_data_U", "Parent" : "32"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.grady1_mat_data_U", "Parent" : "32"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.grady2_mat_data_U", "Parent" : "32"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_height_c25_U", "Parent" : "32"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_height_c26_U", "Parent" : "32"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_width_c27_U", "Parent" : "32"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_width_c28_U", "Parent" : "32"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.imgwidth_c_U", "Parent" : "32"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.height_c_U", "Parent" : "32"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.magnitude_mat_data_U", "Parent" : "32"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.phase_mat_data_U", "Parent" : "32"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.nms_mat_data_U", "Parent" : "32"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_height_c29_U", "Parent" : "32"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.img_width_c30_U", "Parent" : "32"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.start_for_xFAverageGaussianMask3x3_0_0_1080_1920_0_1_1_1920_U0_U", "Parent" : "32"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.start_for_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_Blbkb_U", "Parent" : "32"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.start_for_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_5_1_0_1920_5760_2_U0_U", "Parent" : "32"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.start_for_xFSobel_0_2_1080_1920_0_3_1_1_5_3_false_U0_U", "Parent" : "32"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.start_for_xFDuplicate_rows_2_1080_1920_3_1_5_1920_U0_U", "Parent" : "32"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.start_for_xFAngleKernel_2_0_1080_1920_3_0_1_5_1_1920_5760_U0_U", "Parent" : "32"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.start_for_xFMagnitudeKernel_2_2_1080_1920_3_3_1_5_5_1920_2_U0_U", "Parent" : "32"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Canny_3_0_0_8_1080_1920_1_32_false_U0.grp_xFCannyKernel_0_8_0_1080_1920_0_12_1_32_1_20_1920_2_5760_3_false_s_fu_58.start_for_xFPackNMS_8_8_1080_1920_12_12_1_32_0_20_U0_U", "Parent" : "32"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0", "Parent" : "0", "Child" : ["114"],
		"CDFG" : "xfMat2Array_64_8_1080_1920_32_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "64817",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_xfMat2Array_64_8_1080_1920_32_1_U0_U",
		"Port" : [
			{"Name" : "dst_mat_419", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "152", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_Mat2Axi_fu_60", "Port" : "dst_mat_419"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_Mat2Axi_fu_60", "Port" : "gmem2"}]},
			{"Name" : "srcMat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "143", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "srcMat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcMat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "144", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "srcMat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dstPtr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "146", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstPtr_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60", "Parent" : "113", "Child" : ["115", "116", "118", "119", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140"],
		"CDFG" : "Mat2Axi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "64816",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "115", "Name" : "Mat2Axi_entry35_U0"}],
		"OutputProcess" : [
			{"ID" : "130", "Name" : "AxiStream2Axi_U0"}],
		"Port" : [
			{"Name" : "dst_mat_419", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "Mat2AxiStream_U0", "Port" : "dst_mat_419"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "AxiStream2Axi_U0", "Port" : "gmem2"}]},
			{"Name" : "dout", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.Mat2Axi_entry35_U0", "Parent" : "114",
		"CDFG" : "Mat2Axi_entry35",
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
			{"Name" : "dout", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "dout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "131", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "120", "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "120", "DependentChan" : "135", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.addrbound_U0", "Parent" : "114", "Child" : ["117"],
		"CDFG" : "addrbound",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "115",
		"StartFifo" : "start_for_addrbound_U0_U",
		"Port" : [
			{"Name" : "return_r", "Type" : "Vld", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "136", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.addrbound_U0.mul_mul_22s_11ns_22_4_1_U233", "Parent" : "116"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.Mat2Axi_Block_split24_proc_U0", "Parent" : "114",
		"CDFG" : "Mat2Axi_Block_split24_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "axibound_V_1", "Type" : "None", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "136", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.Mat2AxiStream_U0", "Parent" : "114", "Child" : ["120", "121", "122", "124", "125", "126", "127", "128", "129"],
		"CDFG" : "Mat2AxiStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "64809",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "115",
		"StartFifo" : "start_for_Mat2AxiStream_U0_U",
		"InputProcess" : [
			{"ID" : "120", "Name" : "cols_npc_aligned31_U0"}],
		"OutputProcess" : [
			{"ID" : "122", "Name" : "MatStream2AxiStream_U0"}],
		"Port" : [
			{"Name" : "dst_mat_419", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "MatStream2AxiStream_U0", "Port" : "dst_mat_419"}]},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "MatStream2AxiStream_U0", "Port" : "ldata1"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "cols_npc_aligned31_U0", "Port" : "rows"}]},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "135", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "cols_npc_aligned31_U0", "Port" : "cols"}]}]},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.Mat2AxiStream_U0.cols_npc_aligned31_U0", "Parent" : "119",
		"CDFG" : "cols_npc_aligned31",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "135", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "121", "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "122", "DependentChan" : "125", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "121", "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.Mat2AxiStream_U0.last_blk_pxl_width_U0", "Parent" : "119",
		"CDFG" : "last_blk_pxl_width",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "120",
		"StartFifo" : "start_for_last_blk_pxl_width_U0_U",
		"Port" : [
			{"Name" : "return_r", "Type" : "Vld", "Direction" : "O", "DependentProc" : "122", "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "120", "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_bound_per_npc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "120", "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_bound_per_npc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_bound_per_npc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "122", "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_bound_per_npc_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.Mat2AxiStream_U0.MatStream2AxiStream_U0", "Parent" : "119", "Child" : ["123"],
		"CDFG" : "MatStream2AxiStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "64806",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dst_mat_419", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dst_mat_419_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "130", "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "120", "DependentChan" : "125", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_bound_per_npc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_bound_per_npc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last_blk_width", "Type" : "None", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "123", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.Mat2AxiStream_U0.MatStream2AxiStream_U0.mul_32ns_7ns_39_2_1_U248", "Parent" : "122"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.Mat2AxiStream_U0.cols_c_i_U", "Parent" : "119"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.Mat2AxiStream_U0.rows_c_i_U", "Parent" : "119"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.Mat2AxiStream_U0.p_c_i_U", "Parent" : "119"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.Mat2AxiStream_U0.p_channel_U", "Parent" : "119"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.Mat2AxiStream_U0.p_c11_i_U", "Parent" : "119"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.Mat2AxiStream_U0.start_for_last_blk_pxl_width_U0_U", "Parent" : "119"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.AxiStream2Axi_U0", "Parent" : "114",
		"CDFG" : "AxiStream2Axi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "64808",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "122", "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "dout", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "131", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dout_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "addrbound_V_read", "Type" : "None", "Direction" : "I", "DependentProc" : "118", "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.dout_c_U", "Parent" : "114"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.rows_c_U", "Parent" : "114"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.rows_c11_U", "Parent" : "114"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.cols_c_U", "Parent" : "114"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.cols_c12_U", "Parent" : "114"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.p_channel_U", "Parent" : "114"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.axibound_V_U", "Parent" : "114"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.ldata_U", "Parent" : "114"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.start_for_addrbound_U0_U", "Parent" : "114"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_8_1080_1920_32_1_U0.grp_Mat2Axi_fu_60.start_for_Mat2AxiStream_U0_U", "Parent" : "114"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_mat_rows_c_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_mat_cols_c_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_mat_rows_c_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_mat_cols_c_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_inp_c_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_out_c_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_threshold_c_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_threshold_c_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_mat_data_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_mat_rows_c20_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_mat_cols_c21_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_mat_data_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Canny_3_0_0_8_1080_1920_1_32_false_U0_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xfMat2Array_64_8_1080_1920_32_1_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	canny_accel {
		gmem1 {Type I LastRead 9 FirstWrite -1}
		gmem2 {Type O LastRead 3 FirstWrite 4}
		img_inp {Type I LastRead 0 FirstWrite -1}
		img_out {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		low_threshold {Type I LastRead 0 FirstWrite -1}
		high_threshold {Type I LastRead 0 FirstWrite -1}}
	Block_ZN2xf2cv3MatILi0ELi1080ELi1920ELi1ELi2EEC2Eii_exit11_proc40 {
		cols {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		img_inp {Type I LastRead 0 FirstWrite -1}
		img_out {Type I LastRead 0 FirstWrite -1}
		low_threshold {Type I LastRead 0 FirstWrite -1}
		high_threshold {Type I LastRead 0 FirstWrite -1}
		in_mat_rows_out {Type O LastRead -1 FirstWrite 0}
		in_mat_cols_out {Type O LastRead -1 FirstWrite 0}
		dst_mat_rows_out {Type O LastRead -1 FirstWrite 0}
		dst_mat_cols_out {Type O LastRead -1 FirstWrite 0}
		img_inp_out {Type O LastRead -1 FirstWrite 0}
		img_out_out {Type O LastRead -1 FirstWrite 0}
		low_threshold_out {Type O LastRead -1 FirstWrite 0}
		high_threshold_out {Type O LastRead -1 FirstWrite 0}}
	Array2xfMat_64_0_1080_1920_1_s {
		gmem1 {Type I LastRead 9 FirstWrite -1}
		in_mat_418 {Type O LastRead -1 FirstWrite 7}
		srcPtr {Type I LastRead 0 FirstWrite -1}
		dstMat_rows {Type I LastRead 0 FirstWrite -1}
		dstMat_cols {Type I LastRead 0 FirstWrite -1}
		dstMat_rows_out {Type O LastRead -1 FirstWrite 0}
		dstMat_cols_out {Type O LastRead -1 FirstWrite 0}}
	Axi2Mat {
		gmem1 {Type I LastRead 9 FirstWrite -1}
		in_mat_418 {Type O LastRead -1 FirstWrite 7}
		din {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	Axi2Mat_entry3 {
		din {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		din_out {Type O LastRead -1 FirstWrite 0}
		rows_out {Type O LastRead -1 FirstWrite 0}
		cols_out {Type O LastRead -1 FirstWrite 0}}
	Axi2Mat_entry15 {
		din {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		din_out {Type O LastRead -1 FirstWrite 0}
		rows_out {Type O LastRead -1 FirstWrite 0}
		cols_out {Type O LastRead -1 FirstWrite 0}}
	last_blk_pxl_width_1 {
		ret_out {Type O LastRead -1 FirstWrite 0}}
	addrbound_1 {
		return_r {Type O LastRead -1 FirstWrite 2}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		rows_out {Type O LastRead -1 FirstWrite 0}
		cols_out {Type O LastRead -1 FirstWrite 0}}
	Axi2Mat_Block_split37_proc {
		axibound_V_2 {Type I LastRead 0 FirstWrite -1}}
	Axi2AxiStream {
		gmem1 {Type I LastRead 9 FirstWrite -1}
		ldata1 {Type O LastRead -1 FirstWrite 10}
		din {Type I LastRead 0 FirstWrite -1}
		addrbound_V_read {Type I LastRead 0 FirstWrite -1}}
	AxiStream2MatStream {
		ldata1 {Type I LastRead 5 FirstWrite -1}
		in_mat_418 {Type O LastRead -1 FirstWrite 7}
		rows {Type I LastRead 0 FirstWrite -1}
		cols_bound_per_npc {Type I LastRead 0 FirstWrite -1}
		last_blk_width {Type I LastRead 0 FirstWrite -1}}
	Canny_3_0_0_8_1080_1920_1_32_false_s {
		in_mat_data {Type I LastRead 5 FirstWrite -1}
		dst_mat_data {Type O LastRead -1 FirstWrite 35}
		in_mat_rows {Type I LastRead 0 FirstWrite -1}
		in_mat_cols {Type I LastRead 0 FirstWrite -1}
		low_threshold {Type I LastRead 0 FirstWrite -1}
		high_threshold {Type I LastRead 0 FirstWrite -1}}
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
		nms_mat_410 {Type I LastRead 0 FirstWrite -1}}
	xfMat2Array_64_8_1080_1920_32_1_s {
		dst_mat_419 {Type I LastRead 4 FirstWrite -1}
		gmem2 {Type O LastRead 3 FirstWrite 4}
		srcMat_rows {Type I LastRead 0 FirstWrite -1}
		srcMat_cols {Type I LastRead 0 FirstWrite -1}
		dstPtr {Type I LastRead 0 FirstWrite -1}}
	Mat2Axi {
		dst_mat_419 {Type I LastRead 4 FirstWrite -1}
		gmem2 {Type O LastRead 3 FirstWrite 4}
		dout {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	Mat2Axi_entry35 {
		dout {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		dout_out {Type O LastRead -1 FirstWrite 0}
		rows_out {Type O LastRead -1 FirstWrite 0}
		rows_out1 {Type O LastRead -1 FirstWrite 0}
		cols_out {Type O LastRead -1 FirstWrite 0}
		cols_out2 {Type O LastRead -1 FirstWrite 0}}
	addrbound {
		return_r {Type O LastRead -1 FirstWrite 3}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	Mat2Axi_Block_split24_proc {
		axibound_V_1 {Type I LastRead 0 FirstWrite -1}}
	Mat2AxiStream {
		dst_mat_419 {Type I LastRead 4 FirstWrite -1}
		ldata1 {Type O LastRead -1 FirstWrite 5}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	cols_npc_aligned31 {
		cols {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols_out {Type O LastRead -1 FirstWrite 1}
		rows_out {Type O LastRead -1 FirstWrite 1}
		ret_out {Type O LastRead -1 FirstWrite 1}}
	last_blk_pxl_width {
		return_r {Type O LastRead -1 FirstWrite 0}
		cols {Type I LastRead 0 FirstWrite -1}
		cols_bound_per_npc {Type I LastRead 0 FirstWrite -1}
		cols_bound_per_npc_out {Type O LastRead -1 FirstWrite 0}}
	MatStream2AxiStream {
		dst_mat_419 {Type I LastRead 4 FirstWrite -1}
		ldata1 {Type O LastRead -1 FirstWrite 5}
		rows {Type I LastRead 0 FirstWrite -1}
		cols_bound_per_npc {Type I LastRead 0 FirstWrite -1}
		last_blk_width {Type I LastRead 2 FirstWrite -1}}
	AxiStream2Axi {
		ldata1 {Type I LastRead 3 FirstWrite -1}
		gmem2 {Type O LastRead 3 FirstWrite 4}
		dout {Type I LastRead 0 FirstWrite -1}
		addrbound_V_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4161754", "Max" : "4163674"}
	, {"Name" : "Interval", "Min" : "4161743", "Max" : "4163663"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN LEN 1 8 }  { m_axi_gmem1_AWSIZE SIZE 1 3 }  { m_axi_gmem1_AWBURST BURST 1 2 }  { m_axi_gmem1_AWLOCK LOCK 1 2 }  { m_axi_gmem1_AWCACHE CACHE 1 4 }  { m_axi_gmem1_AWPROT PROT 1 3 }  { m_axi_gmem1_AWQOS QOS 1 4 }  { m_axi_gmem1_AWREGION REGION 1 4 }  { m_axi_gmem1_AWUSER USER 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA DATA 1 64 }  { m_axi_gmem1_WSTRB STRB 1 8 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER USER 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN LEN 1 8 }  { m_axi_gmem1_ARSIZE SIZE 1 3 }  { m_axi_gmem1_ARBURST BURST 1 2 }  { m_axi_gmem1_ARLOCK LOCK 1 2 }  { m_axi_gmem1_ARCACHE CACHE 1 4 }  { m_axi_gmem1_ARPROT PROT 1 3 }  { m_axi_gmem1_ARQOS QOS 1 4 }  { m_axi_gmem1_ARREGION REGION 1 4 }  { m_axi_gmem1_ARUSER USER 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA DATA 0 64 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER USER 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER USER 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN LEN 1 8 }  { m_axi_gmem2_AWSIZE SIZE 1 3 }  { m_axi_gmem2_AWBURST BURST 1 2 }  { m_axi_gmem2_AWLOCK LOCK 1 2 }  { m_axi_gmem2_AWCACHE CACHE 1 4 }  { m_axi_gmem2_AWPROT PROT 1 3 }  { m_axi_gmem2_AWQOS QOS 1 4 }  { m_axi_gmem2_AWREGION REGION 1 4 }  { m_axi_gmem2_AWUSER USER 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA DATA 1 64 }  { m_axi_gmem2_WSTRB STRB 1 8 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER USER 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN LEN 1 8 }  { m_axi_gmem2_ARSIZE SIZE 1 3 }  { m_axi_gmem2_ARBURST BURST 1 2 }  { m_axi_gmem2_ARLOCK LOCK 1 2 }  { m_axi_gmem2_ARCACHE CACHE 1 4 }  { m_axi_gmem2_ARPROT PROT 1 3 }  { m_axi_gmem2_ARQOS QOS 1 4 }  { m_axi_gmem2_ARREGION REGION 1 4 }  { m_axi_gmem2_ARUSER USER 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA DATA 0 64 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER USER 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmem1 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ gmem2 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem1 1 }
	{ gmem2 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem1 1 }
	{ gmem2 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
