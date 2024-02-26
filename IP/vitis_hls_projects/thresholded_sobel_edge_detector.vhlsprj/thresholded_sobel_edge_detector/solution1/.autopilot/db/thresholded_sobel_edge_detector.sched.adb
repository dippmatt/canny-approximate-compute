<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>thresholded_sobel_edge_detector</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>7</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>gmem1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>gmem2</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>791759919</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>img_inp</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>img_inp</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>827076462</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>img_out</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>img_out</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>84</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>rows</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>rows</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>791759919</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_6">
				<Value>
					<Obj>
						<type>1</type>
						<id>6</id>
						<name>cols</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>cols</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>791759919</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_7">
				<Value>
					<Obj>
						<type>1</type>
						<id>7</id>
						<name>thresh</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>thresh</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>57</coreId>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>34</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>8</id>
						<name>thresh_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>thresh</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>741357618</coreId>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>106</item>
					<item>107</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name>cols_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>cols</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>741357618</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>109</item>
					<item>110</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>rows_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>rows</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>741357618</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>111</item>
					<item>112</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>img_out_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>img_out</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1871005744</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>114</item>
					<item>115</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>img_inp_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>img_inp</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>116</item>
					<item>117</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>mat_in_cols_c16</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>2885681280</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>119</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>14</id>
						<name>mat_in_rows_c15</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>68</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>120</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>thresh_c</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>37</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>37</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>68</coreId>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>121</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>img_out_c</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>34</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>34</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1870708048</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>122</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>9</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>17</id>
						<name>img_inp_c</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>33</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>33</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>66</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>123</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>10</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>18</id>
						<name>mat_out_cols_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>148</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>124</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>11</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>19</id>
						<name>mat_out_rows_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1872117376</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>125</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>12</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>20</id>
						<name>mat_grad_sum_cols_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>126</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>13</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>21</id>
						<name>mat_grad_sum_rows_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>127</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>14</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_22">
				<Value>
					<Obj>
						<type>0</type>
						<id>22</id>
						<name>mat_grad_x_cols_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>132</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>128</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>15</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_23">
				<Value>
					<Obj>
						<type>0</type>
						<id>23</id>
						<name>mat_grad_x_rows_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>609</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>129</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>16</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_24">
				<Value>
					<Obj>
						<type>0</type>
						<id>24</id>
						<name>img_gray_cols_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>609</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>130</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>17</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_25">
				<Value>
					<Obj>
						<type>0</type>
						<id>25</id>
						<name>img_gray_rows_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>49</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>131</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>18</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_26">
				<Value>
					<Obj>
						<type>0</type>
						<id>26</id>
						<name>mat_in_cols_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>132</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>132</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>19</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_27">
				<Value>
					<Obj>
						<type>0</type>
						<id>27</id>
						<name>mat_in_rows_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>36</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>133</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>20</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_28">
				<Value>
					<Obj>
						<type>0</type>
						<id>48</id>
						<name>mat_in_data</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>46</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>46</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>mat_in.data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>132</coreId>
					</Obj>
					<bitwidth>24</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>134</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>21</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_29">
				<Value>
					<Obj>
						<type>0</type>
						<id>51</id>
						<name>img_gray_data</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>47</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>47</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>img_gray.data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>49</coreId>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>135</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>22</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_30">
				<Value>
					<Obj>
						<type>0</type>
						<id>54</id>
						<name>mat_grad_x_data</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>48</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>48</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>mat_grad_x.data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>132</coreId>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>136</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>23</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_31">
				<Value>
					<Obj>
						<type>0</type>
						<id>57</id>
						<name>mat_grad_y_data</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>49</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>49</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>mat_grad_y.data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>137</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>24</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_32">
				<Value>
					<Obj>
						<type>0</type>
						<id>60</id>
						<name>mat_grad_sum_data</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>50</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>50</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>mat_grad_sum.data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>49</coreId>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>138</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>25</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_33">
				<Value>
					<Obj>
						<type>0</type>
						<id>63</id>
						<name>mat_out_data</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>51</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>51</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>mat_out.data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>49</coreId>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>139</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>26</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_34">
				<Value>
					<Obj>
						<type>0</type>
						<id>92</id>
						<name>_ln33</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>33</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>33</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>49</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>19</count>
					<item_version>0</item_version>
					<item>141</item>
					<item>142</item>
					<item>143</item>
					<item>144</item>
					<item>145</item>
					<item>146</item>
					<item>147</item>
					<item>148</item>
					<item>149</item>
					<item>150</item>
					<item>151</item>
					<item>152</item>
					<item>153</item>
					<item>154</item>
					<item>155</item>
					<item>156</item>
					<item>157</item>
					<item>158</item>
					<item>159</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>3.63</m_delay>
				<m_topoIndex>27</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_35">
				<Value>
					<Obj>
						<type>0</type>
						<id>97</id>
						<name>_ln56</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>56</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>56</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>132</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>10</count>
					<item_version>0</item_version>
					<item>161</item>
					<item>162</item>
					<item>163</item>
					<item>164</item>
					<item>165</item>
					<item>166</item>
					<item>167</item>
					<item>168</item>
					<item>1081</item>
					<item>1082</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>28</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_36">
				<Value>
					<Obj>
						<type>0</type>
						<id>98</id>
						<name>_ln59</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>59</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>59</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>150</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>170</item>
					<item>171</item>
					<item>172</item>
					<item>173</item>
					<item>174</item>
					<item>1080</item>
					<item>1083</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>29</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_37">
				<Value>
					<Obj>
						<type>0</type>
						<id>99</id>
						<name>_ln62</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>62</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>62</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>49</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>8</count>
					<item_version>0</item_version>
					<item>176</item>
					<item>177</item>
					<item>178</item>
					<item>179</item>
					<item>180</item>
					<item>181</item>
					<item>1079</item>
					<item>1084</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>30</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_38">
				<Value>
					<Obj>
						<type>0</type>
						<id>100</id>
						<name>_ln65</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>65</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>65</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>737</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>8</count>
					<item_version>0</item_version>
					<item>183</item>
					<item>184</item>
					<item>185</item>
					<item>186</item>
					<item>187</item>
					<item>188</item>
					<item>1078</item>
					<item>1085</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>31</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_39">
				<Value>
					<Obj>
						<type>0</type>
						<id>101</id>
						<name>_ln68</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>68</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>68</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>737</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>8</count>
					<item_version>0</item_version>
					<item>190</item>
					<item>191</item>
					<item>192</item>
					<item>193</item>
					<item>194</item>
					<item>195</item>
					<item>1077</item>
					<item>1086</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>32</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_40">
				<Value>
					<Obj>
						<type>0</type>
						<id>102</id>
						<name>_ln71</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>737</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>8</count>
					<item_version>0</item_version>
					<item>197</item>
					<item>198</item>
					<item>199</item>
					<item>200</item>
					<item>201</item>
					<item>202</item>
					<item>1076</item>
					<item>1087</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>33</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_41">
				<Value>
					<Obj>
						<type>0</type>
						<id>103</id>
						<name>_ln72</name>
						<fileName>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</fileName>
						<fileDirectory>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</fileDirectory>
						<lineNumber>72</lineNumber>
						<contextFuncName>thresholded_sobel_edge_detector</contextFuncName>
						<contextNormFuncName>thresholded_sobel_edge_detector</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/soc/Documents/canny-approximate-compute_git_new_ip/IP/vitis_hls_projects/thresholded_sobel_edge_detector.vhlsprj</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../src/thresholded_sobel_edge_detector/thresholded_sobel_edge_detector.cpp</first>
											<second>thresholded_sobel_edge_detector</second>
										</first>
										<second>72</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>12</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>34</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>8</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_42">
				<Value>
					<Obj>
						<type>2</type>
						<id>118</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>49</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_43">
				<Value>
					<Obj>
						<type>2</type>
						<id>140</id>
						<name>Block_ZN2xf2cv3MatILi9ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc27</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>49</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Block__ZN2xf2cv3MatILi9ELi720ELi1280ELi1ELi2EEC2Eii.exit1_proc27&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_44">
				<Value>
					<Obj>
						<type>2</type>
						<id>160</id>
						<name>Array2xfMat_64_9_720_1280_1_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Array2xfMat&lt;64, 9, 720, 1280, 1&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_45">
				<Value>
					<Obj>
						<type>2</type>
						<id>169</id>
						<name>rgb2gray_9_0_720_1280_1_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>68</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:rgb2gray&lt;9, 0, 720, 1280, 1&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_46">
				<Value>
					<Obj>
						<type>2</type>
						<id>175</id>
						<name>Sobel_0_3_0_0_720_1280_1_false_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>4294967295</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Sobel&lt;0, 3, 0, 0, 720, 1280, 1, false&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_47">
				<Value>
					<Obj>
						<type>2</type>
						<id>182</id>
						<name>add_0_0_720_1280_1_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:add&lt;0, 0, 720, 1280, 1&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_48">
				<Value>
					<Obj>
						<type>2</type>
						<id>189</id>
						<name>Threshold_0_0_720_1280_1_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1871153312</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Threshold&lt;0, 0, 720, 1280, 1&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_49">
				<Value>
					<Obj>
						<type>2</type>
						<id>196</id>
						<name>xfMat2Array_64_0_720_1280_1_1_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1871455600</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:xfMat2Array&lt;64, 0, 720, 1280, 1, 1&gt;&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_50">
				<Obj>
					<type>3</type>
					<id>104</id>
					<name>thresholded_sobel_edge_detector</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<control></control>
					<opType></opType>
					<implIndex></implIndex>
					<coreName></coreName>
					<coreId>1869011536</coreId>
				</Obj>
				<node_objs>
					<count>34</count>
					<item_version>0</item_version>
					<item>8</item>
					<item>9</item>
					<item>10</item>
					<item>11</item>
					<item>12</item>
					<item>13</item>
					<item>14</item>
					<item>15</item>
					<item>16</item>
					<item>17</item>
					<item>18</item>
					<item>19</item>
					<item>20</item>
					<item>21</item>
					<item>22</item>
					<item>23</item>
					<item>24</item>
					<item>25</item>
					<item>26</item>
					<item>27</item>
					<item>48</item>
					<item>51</item>
					<item>54</item>
					<item>57</item>
					<item>60</item>
					<item>63</item>
					<item>92</item>
					<item>97</item>
					<item>98</item>
					<item>99</item>
					<item>100</item>
					<item>101</item>
					<item>102</item>
					<item>103</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>94</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_51">
				<id>107</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>110</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>9</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>112</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>115</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>117</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>12</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>119</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>120</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>14</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>121</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>15</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>122</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>123</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>17</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>124</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>18</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>125</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>19</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>126</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>127</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>21</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>128</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>22</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>129</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>23</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>130</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>24</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>131</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>25</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>132</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>26</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>133</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>27</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>134</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>48</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>135</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>51</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>136</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>54</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>137</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>138</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>139</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>141</id>
				<edge_type>1</edge_type>
				<source_obj>140</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>142</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>143</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>144</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>145</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>146</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>147</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>148</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>149</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>150</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>151</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>152</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>153</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>154</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>155</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_92">
				<id>156</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_93">
				<id>157</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_94">
				<id>158</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_95">
				<id>159</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>92</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_96">
				<id>161</id>
				<edge_type>1</edge_type>
				<source_obj>160</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_97">
				<id>162</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_98">
				<id>163</id>
				<edge_type>1</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_99">
				<id>164</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_100">
				<id>165</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_101">
				<id>166</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_102">
				<id>167</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_103">
				<id>168</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_104">
				<id>170</id>
				<edge_type>1</edge_type>
				<source_obj>169</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_105">
				<id>171</id>
				<edge_type>1</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_106">
				<id>172</id>
				<edge_type>1</edge_type>
				<source_obj>51</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_107">
				<id>173</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_108">
				<id>174</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_109">
				<id>176</id>
				<edge_type>1</edge_type>
				<source_obj>175</source_obj>
				<sink_obj>99</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_110">
				<id>177</id>
				<edge_type>1</edge_type>
				<source_obj>51</source_obj>
				<sink_obj>99</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_111">
				<id>178</id>
				<edge_type>1</edge_type>
				<source_obj>54</source_obj>
				<sink_obj>99</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_112">
				<id>179</id>
				<edge_type>1</edge_type>
				<source_obj>57</source_obj>
				<sink_obj>99</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_113">
				<id>180</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>99</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_114">
				<id>181</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>99</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_115">
				<id>183</id>
				<edge_type>1</edge_type>
				<source_obj>182</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_116">
				<id>184</id>
				<edge_type>1</edge_type>
				<source_obj>54</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_117">
				<id>185</id>
				<edge_type>1</edge_type>
				<source_obj>57</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_118">
				<id>186</id>
				<edge_type>1</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_119">
				<id>187</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_120">
				<id>188</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_121">
				<id>190</id>
				<edge_type>1</edge_type>
				<source_obj>189</source_obj>
				<sink_obj>101</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_122">
				<id>191</id>
				<edge_type>1</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>101</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_123">
				<id>192</id>
				<edge_type>1</edge_type>
				<source_obj>63</source_obj>
				<sink_obj>101</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_124">
				<id>193</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>101</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_125">
				<id>194</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>101</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_126">
				<id>195</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>101</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_127">
				<id>197</id>
				<edge_type>1</edge_type>
				<source_obj>196</source_obj>
				<sink_obj>102</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_128">
				<id>198</id>
				<edge_type>1</edge_type>
				<source_obj>63</source_obj>
				<sink_obj>102</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_129">
				<id>199</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>102</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_130">
				<id>200</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>102</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_131">
				<id>201</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>102</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_132">
				<id>202</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>102</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_133">
				<id>1076</id>
				<edge_type>4</edge_type>
				<source_obj>101</source_obj>
				<sink_obj>102</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_134">
				<id>1077</id>
				<edge_type>4</edge_type>
				<source_obj>100</source_obj>
				<sink_obj>101</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_135">
				<id>1078</id>
				<edge_type>4</edge_type>
				<source_obj>99</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_136">
				<id>1079</id>
				<edge_type>4</edge_type>
				<source_obj>98</source_obj>
				<sink_obj>99</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_137">
				<id>1080</id>
				<edge_type>4</edge_type>
				<source_obj>97</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_138">
				<id>1081</id>
				<edge_type>4</edge_type>
				<source_obj>92</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_139">
				<id>1082</id>
				<edge_type>4</edge_type>
				<source_obj>92</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_140">
				<id>1083</id>
				<edge_type>4</edge_type>
				<source_obj>97</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_141">
				<id>1084</id>
				<edge_type>4</edge_type>
				<source_obj>98</source_obj>
				<sink_obj>99</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_142">
				<id>1085</id>
				<edge_type>4</edge_type>
				<source_obj>99</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_143">
				<id>1086</id>
				<edge_type>4</edge_type>
				<source_obj>100</source_obj>
				<sink_obj>101</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_144">
				<id>1087</id>
				<edge_type>4</edge_type>
				<source_obj>101</source_obj>
				<sink_obj>102</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_145">
			<mId>1</mId>
			<mTag>thresholded_sobel_edge_detector</mTag>
			<mNormTag>thresholded_sobel_edge_detector</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>104</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>929383</mMinLatency>
			<mMaxLatency>929383</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_146">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>7</count>
					<item_version>0</item_version>
					<item class_id="25" tracking_level="1" version="0" object_id="_147">
						<name>gmem1</name>
						<dir>0</dir>
						<type>1</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_148">
						<name>gmem2</name>
						<dir>1</dir>
						<type>1</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_149">
						<name>img_inp</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_150">
						<name>img_out</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_151">
						<name>rows</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_152">
						<name>cols</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_153">
						<name>thresh</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
				</port_list>
				<process_list class_id="27" tracking_level="0" version="0">
					<count>7</count>
					<item_version>0</item_version>
					<item class_id="28" tracking_level="1" version="0" object_id="_154">
						<type>0</type>
						<name>Block_ZN2xf2cv3MatILi9ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc27_U0</name>
						<ssdmobj_id>92</ssdmobj_id>
						<pins class_id="29" tracking_level="0" version="0">
							<count>5</count>
							<item_version>0</item_version>
							<item class_id="30" tracking_level="1" version="0" object_id="_155">
								<port class_id_reference="25" object_id="_156">
									<name>rows</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_151"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id="31" tracking_level="1" version="0" object_id="_157">
									<type>0</type>
									<name>Block_ZN2xf2cv3MatILi9ELi720ELi1280ELi1ELi2EEC2Eii_exit1_proc27_U0</name>
									<ssdmobj_id>92</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="30" object_id="_158">
								<port class_id_reference="25" object_id="_159">
									<name>cols</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_152"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_157"></inst>
							</item>
							<item class_id_reference="30" object_id="_160">
								<port class_id_reference="25" object_id="_161">
									<name>img_inp</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_149"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_157"></inst>
							</item>
							<item class_id_reference="30" object_id="_162">
								<port class_id_reference="25" object_id="_163">
									<name>img_out</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_150"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_157"></inst>
							</item>
							<item class_id_reference="30" object_id="_164">
								<port class_id_reference="25" object_id="_165">
									<name>thresh</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_153"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_157"></inst>
							</item>
						</pins>
						<in_source_fork>1</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_166">
						<type>0</type>
						<name>Array2xfMat_64_9_720_1280_1_U0</name>
						<ssdmobj_id>97</ssdmobj_id>
						<pins>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_167">
								<port class_id_reference="25" object_id="_168">
									<name>gmem1</name>
									<dir>0</dir>
									<type>1</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_147"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_169">
									<type>0</type>
									<name>Array2xfMat_64_9_720_1280_1_U0</name>
									<ssdmobj_id>97</ssdmobj_id>
								</inst>
							</item>
						</pins>
						<in_source_fork>1</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>1</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_170">
						<type>0</type>
						<name>rgb2gray_9_0_720_1280_1_U0</name>
						<ssdmobj_id>98</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_171">
						<type>0</type>
						<name>Sobel_0_3_0_0_720_1280_1_false_U0</name>
						<ssdmobj_id>99</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_172">
						<type>0</type>
						<name>add_0_0_720_1280_1_U0</name>
						<ssdmobj_id>100</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_173">
						<type>0</type>
						<name>Threshold_0_0_720_1280_1_U0</name>
						<ssdmobj_id>101</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_174">
						<type>0</type>
						<name>xfMat2Array_64_0_720_1280_1_1_U0</name>
						<ssdmobj_id>102</ssdmobj_id>
						<pins>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_175">
								<port class_id_reference="25" object_id="_176">
									<name>gmem2</name>
									<dir>1</dir>
									<type>1</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_148"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_177">
									<type>0</type>
									<name>xfMat2Array_64_0_720_1280_1_1_U0</name>
									<ssdmobj_id>102</ssdmobj_id>
								</inst>
							</item>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>1</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
				</process_list>
				<channel_list class_id="32" tracking_level="0" version="0">
					<count>21</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_178">
						<type>1</type>
						<name>mat_in_rows_c</name>
						<ssdmobj_id>27</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_179">
							<port class_id_reference="25" object_id="_180">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_157"></inst>
						</source>
						<sink class_id_reference="30" object_id="_181">
							<port class_id_reference="25" object_id="_182">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_169"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_183">
						<type>1</type>
						<name>mat_in_cols_c</name>
						<ssdmobj_id>26</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_184">
							<port class_id_reference="25" object_id="_185">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_157"></inst>
						</source>
						<sink class_id_reference="30" object_id="_186">
							<port class_id_reference="25" object_id="_187">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_169"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_188">
						<type>1</type>
						<name>img_gray_rows_c</name>
						<ssdmobj_id>25</ssdmobj_id>
						<ctype>0</ctype>
						<depth>4</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>4</suggested_depth>
						<source class_id_reference="30" object_id="_189">
							<port class_id_reference="25" object_id="_190">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_157"></inst>
						</source>
						<sink class_id_reference="30" object_id="_191">
							<port class_id_reference="25" object_id="_192">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id="_193">
								<type>0</type>
								<name>Sobel_0_3_0_0_720_1280_1_false_U0</name>
								<ssdmobj_id>99</ssdmobj_id>
							</inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_194">
						<type>1</type>
						<name>img_gray_cols_c</name>
						<ssdmobj_id>24</ssdmobj_id>
						<ctype>0</ctype>
						<depth>4</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>4</suggested_depth>
						<source class_id_reference="30" object_id="_195">
							<port class_id_reference="25" object_id="_196">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_157"></inst>
						</source>
						<sink class_id_reference="30" object_id="_197">
							<port class_id_reference="25" object_id="_198">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_193"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_199">
						<type>1</type>
						<name>mat_grad_x_rows_c</name>
						<ssdmobj_id>23</ssdmobj_id>
						<ctype>0</ctype>
						<depth>5</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>5</suggested_depth>
						<source class_id_reference="30" object_id="_200">
							<port class_id_reference="25" object_id="_201">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_157"></inst>
						</source>
						<sink class_id_reference="30" object_id="_202">
							<port class_id_reference="25" object_id="_203">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id="_204">
								<type>0</type>
								<name>add_0_0_720_1280_1_U0</name>
								<ssdmobj_id>100</ssdmobj_id>
							</inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_205">
						<type>1</type>
						<name>mat_grad_x_cols_c</name>
						<ssdmobj_id>22</ssdmobj_id>
						<ctype>0</ctype>
						<depth>5</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>5</suggested_depth>
						<source class_id_reference="30" object_id="_206">
							<port class_id_reference="25" object_id="_207">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_157"></inst>
						</source>
						<sink class_id_reference="30" object_id="_208">
							<port class_id_reference="25" object_id="_209">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_204"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_210">
						<type>1</type>
						<name>mat_grad_sum_rows_c</name>
						<ssdmobj_id>21</ssdmobj_id>
						<ctype>0</ctype>
						<depth>6</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>6</suggested_depth>
						<source class_id_reference="30" object_id="_211">
							<port class_id_reference="25" object_id="_212">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_157"></inst>
						</source>
						<sink class_id_reference="30" object_id="_213">
							<port class_id_reference="25" object_id="_214">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id="_215">
								<type>0</type>
								<name>Threshold_0_0_720_1280_1_U0</name>
								<ssdmobj_id>101</ssdmobj_id>
							</inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_216">
						<type>1</type>
						<name>mat_grad_sum_cols_c</name>
						<ssdmobj_id>20</ssdmobj_id>
						<ctype>0</ctype>
						<depth>6</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>6</suggested_depth>
						<source class_id_reference="30" object_id="_217">
							<port class_id_reference="25" object_id="_218">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_157"></inst>
						</source>
						<sink class_id_reference="30" object_id="_219">
							<port class_id_reference="25" object_id="_220">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_215"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_221">
						<type>1</type>
						<name>mat_out_rows_c</name>
						<ssdmobj_id>19</ssdmobj_id>
						<ctype>0</ctype>
						<depth>7</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>7</suggested_depth>
						<source class_id_reference="30" object_id="_222">
							<port class_id_reference="25" object_id="_223">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_157"></inst>
						</source>
						<sink class_id_reference="30" object_id="_224">
							<port class_id_reference="25" object_id="_225">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_177"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_226">
						<type>1</type>
						<name>mat_out_cols_c</name>
						<ssdmobj_id>18</ssdmobj_id>
						<ctype>0</ctype>
						<depth>7</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>7</suggested_depth>
						<source class_id_reference="30" object_id="_227">
							<port class_id_reference="25" object_id="_228">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_157"></inst>
						</source>
						<sink class_id_reference="30" object_id="_229">
							<port class_id_reference="25" object_id="_230">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_177"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_231">
						<type>1</type>
						<name>img_inp_c</name>
						<ssdmobj_id>17</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_232">
							<port class_id_reference="25" object_id="_233">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_157"></inst>
						</source>
						<sink class_id_reference="30" object_id="_234">
							<port class_id_reference="25" object_id="_235">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_169"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_236">
						<type>1</type>
						<name>img_out_c</name>
						<ssdmobj_id>16</ssdmobj_id>
						<ctype>0</ctype>
						<depth>7</depth>
						<bitwidth>64</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>7</suggested_depth>
						<source class_id_reference="30" object_id="_237">
							<port class_id_reference="25" object_id="_238">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_157"></inst>
						</source>
						<sink class_id_reference="30" object_id="_239">
							<port class_id_reference="25" object_id="_240">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_177"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_241">
						<type>1</type>
						<name>thresh_c</name>
						<ssdmobj_id>15</ssdmobj_id>
						<ctype>0</ctype>
						<depth>6</depth>
						<bitwidth>16</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>6</suggested_depth>
						<source class_id_reference="30" object_id="_242">
							<port class_id_reference="25" object_id="_243">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_157"></inst>
						</source>
						<sink class_id_reference="30" object_id="_244">
							<port class_id_reference="25" object_id="_245">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_215"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_246">
						<type>1</type>
						<name>mat_in_data</name>
						<ssdmobj_id>48</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>24</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_247">
							<port class_id_reference="25" object_id="_248">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_169"></inst>
						</source>
						<sink class_id_reference="30" object_id="_249">
							<port class_id_reference="25" object_id="_250">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id="_251">
								<type>0</type>
								<name>rgb2gray_9_0_720_1280_1_U0</name>
								<ssdmobj_id>98</ssdmobj_id>
							</inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_252">
						<type>1</type>
						<name>mat_in_rows_c15</name>
						<ssdmobj_id>14</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_253">
							<port class_id_reference="25" object_id="_254">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_169"></inst>
						</source>
						<sink class_id_reference="30" object_id="_255">
							<port class_id_reference="25" object_id="_256">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_251"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_257">
						<type>1</type>
						<name>mat_in_cols_c16</name>
						<ssdmobj_id>13</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_258">
							<port class_id_reference="25" object_id="_259">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_169"></inst>
						</source>
						<sink class_id_reference="30" object_id="_260">
							<port class_id_reference="25" object_id="_261">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_251"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_262">
						<type>1</type>
						<name>img_gray_data</name>
						<ssdmobj_id>51</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>8</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_263">
							<port class_id_reference="25" object_id="_264">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_251"></inst>
						</source>
						<sink class_id_reference="30" object_id="_265">
							<port class_id_reference="25" object_id="_266">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_193"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_267">
						<type>1</type>
						<name>mat_grad_x_data</name>
						<ssdmobj_id>54</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>8</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_268">
							<port class_id_reference="25" object_id="_269">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_193"></inst>
						</source>
						<sink class_id_reference="30" object_id="_270">
							<port class_id_reference="25" object_id="_271">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_204"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_272">
						<type>1</type>
						<name>mat_grad_y_data</name>
						<ssdmobj_id>57</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>8</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_273">
							<port class_id_reference="25" object_id="_274">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_193"></inst>
						</source>
						<sink class_id_reference="30" object_id="_275">
							<port class_id_reference="25" object_id="_276">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_204"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_277">
						<type>1</type>
						<name>mat_grad_sum_data</name>
						<ssdmobj_id>60</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>8</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_278">
							<port class_id_reference="25" object_id="_279">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_204"></inst>
						</source>
						<sink class_id_reference="30" object_id="_280">
							<port class_id_reference="25" object_id="_281">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_215"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_282">
						<type>1</type>
						<name>mat_out_data</name>
						<ssdmobj_id>63</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>8</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_283">
							<port class_id_reference="25" object_id="_284">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_215"></inst>
						</source>
						<sink class_id_reference="30" object_id="_285">
							<port class_id_reference="25" object_id="_286">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_177"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="36" tracking_level="0" version="0">
		<count>34</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>8</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>9</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>11</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>14</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>15</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>17</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>18</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>19</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>20</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>21</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>22</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>23</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>24</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>25</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>26</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>27</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>48</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>51</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>54</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>57</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>60</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>63</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>92</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>97</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>98</first>
			<second>
				<first>3</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>99</first>
			<second>
				<first>5</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>100</first>
			<second>
				<first>7</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>101</first>
			<second>
				<first>9</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>102</first>
			<second>
				<first>11</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>103</first>
			<second>
				<first>12</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="39" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="40" tracking_level="0" version="0">
			<first>104</first>
			<second class_id="41" tracking_level="0" version="0">
				<first>0</first>
				<second>12</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="42" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="1" version="0" object_id="_287">
			<region_name>thresholded_sobel_edge_detector</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>104</item>
			</basic_blocks>
			<nodes>
				<count>96</count>
				<item_version>0</item_version>
				<item>8</item>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
				<item>23</item>
				<item>24</item>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
				<item>29</item>
				<item>30</item>
				<item>31</item>
				<item>32</item>
				<item>33</item>
				<item>34</item>
				<item>35</item>
				<item>36</item>
				<item>37</item>
				<item>38</item>
				<item>39</item>
				<item>40</item>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
				<item>58</item>
				<item>59</item>
				<item>60</item>
				<item>61</item>
				<item>62</item>
				<item>63</item>
				<item>64</item>
				<item>65</item>
				<item>66</item>
				<item>67</item>
				<item>68</item>
				<item>69</item>
				<item>70</item>
				<item>71</item>
				<item>72</item>
				<item>73</item>
				<item>74</item>
				<item>75</item>
				<item>76</item>
				<item>77</item>
				<item>78</item>
				<item>79</item>
				<item>80</item>
				<item>81</item>
				<item>82</item>
				<item>83</item>
				<item>84</item>
				<item>85</item>
				<item>86</item>
				<item>87</item>
				<item>88</item>
				<item>89</item>
				<item>90</item>
				<item>91</item>
				<item>92</item>
				<item>93</item>
				<item>94</item>
				<item>95</item>
				<item>96</item>
				<item>97</item>
				<item>98</item>
				<item>99</item>
				<item>100</item>
				<item>101</item>
				<item>102</item>
				<item>103</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="44" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core>
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

