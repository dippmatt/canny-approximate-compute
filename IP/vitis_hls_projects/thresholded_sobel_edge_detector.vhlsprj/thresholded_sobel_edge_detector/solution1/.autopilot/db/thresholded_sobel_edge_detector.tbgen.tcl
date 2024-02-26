set moduleName thresholded_sobel_edge_detector
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
set C_modelName {thresholded_sobel_edge_detector}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem1 int 64 regular {axi_master 0}  }
	{ gmem2 int 64 regular {axi_master 1}  }
	{ img_inp int 64 regular {axi_slave 0}  }
	{ img_out int 64 regular {axi_slave 0}  }
	{ rows int 32 regular {axi_slave 0}  }
	{ cols int 32 regular {axi_slave 0}  }
	{ thresh int 16 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_inp","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "img_inp","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_out","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "img_out","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "img_inp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "img_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "rows", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rows","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "cols", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cols","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "thresh", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "thresh","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"thresholded_sobel_edge_detector","role":"start","value":"0","valid_bit":"0"},{"name":"thresholded_sobel_edge_detector","role":"continue","value":"0","valid_bit":"4"},{"name":"thresholded_sobel_edge_detector","role":"auto_start","value":"0","valid_bit":"7"},{"name":"img_inp","role":"data","value":"16"},{"name":"img_out","role":"data","value":"28"},{"name":"rows","role":"data","value":"40"},{"name":"cols","role":"data","value":"48"},{"name":"thresh","role":"data","value":"56"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"thresholded_sobel_edge_detector","role":"start","value":"0","valid_bit":"0"},{"name":"thresholded_sobel_edge_detector","role":"done","value":"0","valid_bit":"1"},{"name":"thresholded_sobel_edge_detector","role":"idle","value":"0","valid_bit":"2"},{"name":"thresholded_sobel_edge_detector","role":"ready","value":"0","valid_bit":"3"},{"name":"thresholded_sobel_edge_detector","role":"auto_start","value":"0","valid_bit":"7"}] },
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "31", "35", "48", "49", "50", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99"],
		"CDFG" : "thresholded_sobel_edge_detector",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "929383", "EstimateLatencyMax" : "929383",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "Block_ZN2xf2cv3MatILi9ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc27_U0"},
			{"ID" : "5", "Name" : "Array2xfMat_64_9_720_1280_1_U0"}],
		"OutputProcess" : [
			{"ID" : "50", "Name" : "xfMat2Array_64_0_720_1280_1_1_U0"}],
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "Array2xfMat_64_9_720_1280_1_U0", "Port" : "gmem1"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "xfMat2Array_64_0_720_1280_1_1_U0", "Port" : "gmem2"}]},
			{"Name" : "img_inp", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "thresh", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem2_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_ZN2xf2cv3MatILi9ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc27_U0", "Parent" : "0",
		"CDFG" : "Block_ZN2xf2cv3MatILi9ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc27",
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
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_inp", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "thresh", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat_in_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_in_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_in_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_in_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_gray_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "76", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_gray_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_gray_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "77", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_gray_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_grad_x_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "78", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_grad_x_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_grad_x_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "79", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_grad_x_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_grad_sum_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "80", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_grad_sum_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_grad_sum_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "81", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_grad_sum_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_out_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "82", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_out_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_out_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "83", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mat_out_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_inp_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_inp_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "85", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "thresh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "86", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "thresh_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "Array2xfMat_64_9_720_1280_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "921616",
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
			{"Name" : "mat_in_478", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Axi2Mat_fu_80", "Port" : "mat_in_478"}]},
			{"Name" : "srcPtr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "srcPtr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dstMat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dstMat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dstMat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dstMat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80", "Parent" : "5", "Child" : ["7", "8", "9", "10", "12", "13", "14", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "Axi2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "921615",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "7", "Name" : "Axi2Mat_entry3_U0"},
			{"ID" : "9", "Name" : "last_blk_pxl_width_U0"},
			{"ID" : "13", "Name" : "Axi2AxiStream_U0"}],
		"OutputProcess" : [
			{"ID" : "14", "Name" : "AxiStream2MatStream_U0"}],
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "Axi2AxiStream_U0", "Port" : "gmem1"}]},
			{"Name" : "mat_in_478", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "AxiStream2MatStream_U0", "Port" : "mat_in_478"}]},
			{"Name" : "din", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.Axi2Mat_entry3_U0", "Parent" : "6",
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.Axi2Mat_entry13_U0", "Parent" : "6",
		"CDFG" : "Axi2Mat_entry13",
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
		"StartFifo" : "start_for_Axi2Mat_entry13_U0_U",
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.last_blk_pxl_width_U0", "Parent" : "6",
		"CDFG" : "last_blk_pxl_width",
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.addrbound_U0", "Parent" : "6", "Child" : ["11"],
		"CDFG" : "addrbound",
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
		"StartFifo" : "start_for_addrbound_U0_U",
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
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.addrbound_U0.mul_26s_26s_26_1_1_U32", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.Axi2Mat_Block_split26_proc_U0", "Parent" : "6",
		"CDFG" : "Axi2Mat_Block_split26_proc",
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.Axi2AxiStream_U0", "Parent" : "6",
		"CDFG" : "Axi2AxiStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "345610",
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
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.AxiStream2MatStream_U0", "Parent" : "6", "Child" : ["15"],
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
		"StartSource" : "9",
		"StartFifo" : "start_for_AxiStream2MatStream_U0_U",
		"Port" : [
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_in_478", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mat_in_478_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "24", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_bound_per_npc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_bound_per_npc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last_blk_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "22", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "last_blk_width_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.AxiStream2MatStream_U0.mul_32s_32s_32_2_1_U44", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.din_c1_U", "Parent" : "6"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.rows_c2_U", "Parent" : "6"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.cols_c3_U", "Parent" : "6"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.din_c_U", "Parent" : "6"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.rows_c_U", "Parent" : "6"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.cols_c_U", "Parent" : "6"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.last_blk_width_c_U", "Parent" : "6"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.p_channel_U", "Parent" : "6"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.rows_c14_U", "Parent" : "6"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.cols_c15_U", "Parent" : "6"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.axibound_V_U", "Parent" : "6"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.ldata_U", "Parent" : "6"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.start_for_Axi2Mat_entry13_U0_U", "Parent" : "6"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.start_for_addrbound_U0_U", "Parent" : "6"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_64_9_720_1280_1_U0.grp_Axi2Mat_fu_80.start_for_AxiStream2MatStream_U0_U", "Parent" : "6"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rgb2gray_9_0_720_1280_1_U0", "Parent" : "0", "Child" : ["32", "33", "34"],
		"CDFG" : "rgb2gray_9_0_720_1280_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "927361", "EstimateLatencyMax" : "927361",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "5",
		"StartFifo" : "start_for_rgb2gray_9_0_720_1280_1_U0_U",
		"Port" : [
			{"Name" : "mat_in_478", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mat_in_478_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_gray_479", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "img_gray_479_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rgb2gray_9_0_720_1280_1_U0.mul_mul_8ns_15ns_22_4_1_U78", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rgb2gray_9_0_720_1280_1_U0.mac_muladd_8ns_13ns_22ns_22_4_1_U79", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rgb2gray_9_0_720_1280_1_U0.mac_muladd_8ns_16ns_22ns_23_4_1_U80", "Parent" : "31"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sobel_0_3_0_0_720_1280_1_false_U0", "Parent" : "0", "Child" : ["36"],
		"CDFG" : "Sobel_0_3_0_0_720_1280_1_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "929364", "EstimateLatencyMax" : "929364",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_Sobel_0_3_0_0_720_1280_1_false_U0_U",
		"Port" : [
			{"Name" : "img_gray_479", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44", "Port" : "img_gray_479"}]},
			{"Name" : "mat_grad_x_480", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44", "Port" : "mat_grad_x_480"}]},
			{"Name" : "mat_grad_y_481", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44", "Port" : "mat_grad_y_481"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "76", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "77", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_0_3_0_0_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44", "Parent" : "35", "Child" : ["37", "38", "39", "40", "43", "44", "45", "46", "47"],
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
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_0_3_0_0_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44.buf_V_0_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_0_3_0_0_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44.buf_V_1_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_0_3_0_0_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44.buf_V_2_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_0_3_0_0_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44.grp_xFSobel3x3_1_1_0_0_s_fu_370", "Parent" : "36", "Child" : ["41", "42"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Sobel_0_3_0_0_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44.grp_xFSobel3x3_1_1_0_0_s_fu_370.grp_xFGradientX3x3_0_0_s_fu_72", "Parent" : "40",
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
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Sobel_0_3_0_0_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44.grp_xFSobel3x3_1_1_0_0_s_fu_370.grp_xFGradientY3x3_0_0_s_fu_88", "Parent" : "40",
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
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_0_3_0_0_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44.grp_xFGradientX3x3_0_0_s_fu_387", "Parent" : "36",
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
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_0_3_0_0_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44.grp_xFGradientY3x3_0_0_s_fu_403", "Parent" : "36",
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
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_0_3_0_0_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44.mux_32_8_1_1_U108", "Parent" : "36"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_0_3_0_0_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44.mux_32_8_1_1_U109", "Parent" : "36"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_0_3_0_0_720_1280_1_false_U0.grp_xFSobelFilter3x3_0_0_720_1280_1_0_0_1_1_1_1280_false_s_fu_44.mux_32_8_1_1_U110", "Parent" : "36"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_0_0_720_1280_1_U0", "Parent" : "0",
		"CDFG" : "add_0_0_720_1280_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "924481", "EstimateLatencyMax" : "924481",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_add_0_0_720_1280_1_U0_U",
		"Port" : [
			{"Name" : "mat_grad_x_480", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mat_grad_x_480_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_grad_y_481", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "35", "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mat_grad_y_481_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_grad_sum_482", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mat_grad_sum_482_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src1_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "78", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src1_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src1_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "79", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src1_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Threshold_0_0_720_1280_1_U0", "Parent" : "0",
		"CDFG" : "Threshold_0_0_720_1280_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "924481", "EstimateLatencyMax" : "924481",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_Threshold_0_0_720_1280_1_U0_U",
		"Port" : [
			{"Name" : "mat_grad_sum_482", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mat_grad_sum_482_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mat_out_483", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mat_out_483_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "80", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "81", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "86", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "thresh_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0", "Parent" : "0", "Child" : ["51"],
		"CDFG" : "xfMat2Array_64_0_720_1280_1_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "921608",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_xfMat2Array_64_0_720_1280_1_1_U0_U",
		"Port" : [
			{"Name" : "mat_out_483", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_Mat2Axi_fu_58", "Port" : "mat_out_483"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_Mat2Axi_fu_58", "Port" : "gmem2"}]},
			{"Name" : "srcMat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "82", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "srcMat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcMat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "83", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "srcMat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dstPtr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "85", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstPtr_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58", "Parent" : "50", "Child" : ["52", "53", "55", "56", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73"],
		"CDFG" : "Mat2Axi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "921607",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "52", "Name" : "Mat2Axi_entry22_U0"}],
		"OutputProcess" : [
			{"ID" : "63", "Name" : "AxiStream2Axi_U0"}],
		"Port" : [
			{"Name" : "mat_out_483", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "Mat2AxiStream_U0", "Port" : "mat_out_483"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "AxiStream2Axi_U0", "Port" : "gmem2"}]},
			{"Name" : "dout", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.Mat2Axi_entry22_U0", "Parent" : "51",
		"CDFG" : "Mat2Axi_entry22",
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
			{"Name" : "dout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "64", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "67", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.addrbound_1_U0", "Parent" : "51", "Child" : ["54"],
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
		"StartSource" : "52",
		"StartFifo" : "start_for_addrbound_1_U0_U",
		"Port" : [
			{"Name" : "return_r", "Type" : "Vld", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "67", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.addrbound_1_U0.mul_21s_21s_21_1_1_U141", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.Mat2Axi_Block_split35_proc_U0", "Parent" : "51",
		"CDFG" : "Mat2Axi_Block_split35_proc",
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
			{"Name" : "axibound_V_1", "Type" : "None", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.Mat2AxiStream_U0", "Parent" : "51", "Child" : ["57", "58", "60", "61", "62"],
		"CDFG" : "Mat2AxiStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "921606",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "52",
		"StartFifo" : "start_for_Mat2AxiStream_U0_U",
		"InputProcess" : [
			{"ID" : "57", "Name" : "last_blk_pxl_width19_U0"}],
		"OutputProcess" : [
			{"ID" : "58", "Name" : "MatStream2AxiStream_U0"}],
		"Port" : [
			{"Name" : "mat_out_483", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "MatStream2AxiStream_U0", "Port" : "mat_out_483"}]},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "MatStream2AxiStream_U0", "Port" : "ldata1"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "last_blk_pxl_width19_U0", "Port" : "rows"}]},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "last_blk_pxl_width19_U0", "Port" : "cols"}]}]},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.Mat2AxiStream_U0.last_blk_pxl_width19_U0", "Parent" : "56",
		"CDFG" : "last_blk_pxl_width19",
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
			{"Name" : "return_r", "Type" : "Vld", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.Mat2AxiStream_U0.MatStream2AxiStream_U0", "Parent" : "56", "Child" : ["59"],
		"CDFG" : "MatStream2AxiStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "921605",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mat_out_483", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mat_out_483_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_bound_per_npc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_bound_per_npc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last_blk_width", "Type" : "None", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.Mat2AxiStream_U0.MatStream2AxiStream_U0.mul_32ns_32ns_64_2_1_U152", "Parent" : "58"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.Mat2AxiStream_U0.p_channel_U", "Parent" : "56"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.Mat2AxiStream_U0.rows_c_i_U", "Parent" : "56"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.Mat2AxiStream_U0.cols_c_i_U", "Parent" : "56"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.AxiStream2Axi_U0", "Parent" : "51",
		"CDFG" : "AxiStream2Axi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "115208",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "dout", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "64", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dout_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "addrbound_V_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.dout_c_U", "Parent" : "51"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.rows_c_U", "Parent" : "51"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.rows_c12_U", "Parent" : "51"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.cols_c_U", "Parent" : "51"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.cols_c13_U", "Parent" : "51"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.p_channel_U", "Parent" : "51"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.axibound_V_U", "Parent" : "51"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.ldata_U", "Parent" : "51"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.start_for_addrbound_1_U0_U", "Parent" : "51"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_64_0_720_1280_1_1_U0.grp_Mat2Axi_fu_58.start_for_Mat2AxiStream_U0_U", "Parent" : "51"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_in_rows_c_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_in_cols_c_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_gray_rows_c_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_gray_cols_c_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_grad_x_rows_c_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_grad_x_cols_c_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_grad_sum_rows_c_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_grad_sum_cols_c_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_out_rows_c_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_out_cols_c_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_inp_c_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_out_c_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.thresh_c_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_in_data_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_in_rows_c15_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_in_cols_c16_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_gray_data_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_grad_x_data_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_grad_y_data_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_grad_sum_data_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_out_data_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Sobel_0_3_0_0_720_1280_1_false_U0_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_add_0_0_720_1280_1_U0_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Threshold_0_0_720_1280_1_U0_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xfMat2Array_64_0_720_1280_1_1_U0_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_rgb2gray_9_0_720_1280_1_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	thresholded_sobel_edge_detector {
		gmem1 {Type I LastRead 9 FirstWrite -1}
		gmem2 {Type O LastRead 3 FirstWrite 4}
		img_inp {Type I LastRead 0 FirstWrite -1}
		img_out {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		thresh {Type I LastRead 0 FirstWrite -1}}
	Block_ZN2xf2cv3MatILi9ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc27 {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		img_inp {Type I LastRead 0 FirstWrite -1}
		img_out {Type I LastRead 0 FirstWrite -1}
		thresh {Type I LastRead 0 FirstWrite -1}
		mat_in_rows_out {Type O LastRead -1 FirstWrite 0}
		mat_in_cols_out {Type O LastRead -1 FirstWrite 0}
		img_gray_rows_out {Type O LastRead -1 FirstWrite 0}
		img_gray_cols_out {Type O LastRead -1 FirstWrite 0}
		mat_grad_x_rows_out {Type O LastRead -1 FirstWrite 0}
		mat_grad_x_cols_out {Type O LastRead -1 FirstWrite 0}
		mat_grad_sum_rows_out {Type O LastRead -1 FirstWrite 0}
		mat_grad_sum_cols_out {Type O LastRead -1 FirstWrite 0}
		mat_out_rows_out {Type O LastRead -1 FirstWrite 0}
		mat_out_cols_out {Type O LastRead -1 FirstWrite 0}
		img_inp_out {Type O LastRead -1 FirstWrite 0}
		img_out_out {Type O LastRead -1 FirstWrite 0}
		thresh_out {Type O LastRead -1 FirstWrite 0}}
	Array2xfMat_64_9_720_1280_1_s {
		gmem1 {Type I LastRead 9 FirstWrite -1}
		mat_in_478 {Type O LastRead -1 FirstWrite 7}
		srcPtr {Type I LastRead 0 FirstWrite -1}
		dstMat_rows {Type I LastRead 0 FirstWrite -1}
		dstMat_cols {Type I LastRead 0 FirstWrite -1}
		dstMat_rows_out {Type O LastRead -1 FirstWrite 0}
		dstMat_cols_out {Type O LastRead -1 FirstWrite 0}}
	Axi2Mat {
		gmem1 {Type I LastRead 9 FirstWrite -1}
		mat_in_478 {Type O LastRead -1 FirstWrite 7}
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
	Axi2Mat_entry13 {
		din {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		din_out {Type O LastRead -1 FirstWrite 0}
		rows_out {Type O LastRead -1 FirstWrite 0}
		cols_out {Type O LastRead -1 FirstWrite 0}}
	last_blk_pxl_width {
		ret_out {Type O LastRead -1 FirstWrite 0}}
	addrbound {
		return_r {Type O LastRead -1 FirstWrite 2}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		rows_out {Type O LastRead -1 FirstWrite 0}
		cols_out {Type O LastRead -1 FirstWrite 0}}
	Axi2Mat_Block_split26_proc {
		axibound_V_2 {Type I LastRead 0 FirstWrite -1}}
	Axi2AxiStream {
		gmem1 {Type I LastRead 9 FirstWrite -1}
		ldata1 {Type O LastRead -1 FirstWrite 10}
		din {Type I LastRead 0 FirstWrite -1}
		addrbound_V_read {Type I LastRead 0 FirstWrite -1}}
	AxiStream2MatStream {
		ldata1 {Type I LastRead 5 FirstWrite -1}
		mat_in_478 {Type O LastRead -1 FirstWrite 7}
		rows {Type I LastRead 0 FirstWrite -1}
		cols_bound_per_npc {Type I LastRead 0 FirstWrite -1}
		last_blk_width {Type I LastRead 0 FirstWrite -1}}
	rgb2gray_9_0_720_1280_1_s {
		mat_in_478 {Type I LastRead 3 FirstWrite -1}
		img_gray_479 {Type O LastRead -1 FirstWrite 8}
		p_src_rows {Type I LastRead 0 FirstWrite -1}
		p_src_cols {Type I LastRead 0 FirstWrite -1}}
	Sobel_0_3_0_0_720_1280_1_false_s {
		img_gray_479 {Type I LastRead 5 FirstWrite -1}
		mat_grad_x_480 {Type O LastRead -1 FirstWrite 9}
		mat_grad_y_481 {Type O LastRead -1 FirstWrite 9}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}}
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
		b2 {Type I LastRead 0 FirstWrite -1}}
	add_0_0_720_1280_1_s {
		mat_grad_x_480 {Type I LastRead 3 FirstWrite -1}
		mat_grad_y_481 {Type I LastRead 3 FirstWrite -1}
		mat_grad_sum_482 {Type O LastRead -1 FirstWrite 4}
		p_src1_rows {Type I LastRead 0 FirstWrite -1}
		p_src1_cols {Type I LastRead 0 FirstWrite -1}}
	Threshold_0_0_720_1280_1_s {
		mat_grad_sum_482 {Type I LastRead 3 FirstWrite -1}
		mat_out_483 {Type O LastRead -1 FirstWrite 4}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		thresh {Type I LastRead 0 FirstWrite -1}}
	xfMat2Array_64_0_720_1280_1_1_s {
		mat_out_483 {Type I LastRead 4 FirstWrite -1}
		gmem2 {Type O LastRead 3 FirstWrite 4}
		srcMat_rows {Type I LastRead 0 FirstWrite -1}
		srcMat_cols {Type I LastRead 0 FirstWrite -1}
		dstPtr {Type I LastRead 0 FirstWrite -1}}
	Mat2Axi {
		mat_out_483 {Type I LastRead 4 FirstWrite -1}
		gmem2 {Type O LastRead 3 FirstWrite 4}
		dout {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	Mat2Axi_entry22 {
		dout {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		dout_out {Type O LastRead -1 FirstWrite 0}
		rows_out {Type O LastRead -1 FirstWrite 0}
		rows_out1 {Type O LastRead -1 FirstWrite 0}
		cols_out {Type O LastRead -1 FirstWrite 0}
		cols_out2 {Type O LastRead -1 FirstWrite 0}}
	addrbound_1 {
		return_r {Type O LastRead -1 FirstWrite 2}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	Mat2Axi_Block_split35_proc {
		axibound_V_1 {Type I LastRead 0 FirstWrite -1}}
	Mat2AxiStream {
		mat_out_483 {Type I LastRead 4 FirstWrite -1}
		ldata1 {Type O LastRead -1 FirstWrite 5}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	last_blk_pxl_width19 {
		return_r {Type O LastRead -1 FirstWrite 0}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		rows_out {Type O LastRead -1 FirstWrite 0}
		cols_out {Type O LastRead -1 FirstWrite 0}}
	MatStream2AxiStream {
		mat_out_483 {Type I LastRead 4 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "929383", "Max" : "929383"}
	, {"Name" : "Interval", "Min" : "929365", "Max" : "929365"}
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
