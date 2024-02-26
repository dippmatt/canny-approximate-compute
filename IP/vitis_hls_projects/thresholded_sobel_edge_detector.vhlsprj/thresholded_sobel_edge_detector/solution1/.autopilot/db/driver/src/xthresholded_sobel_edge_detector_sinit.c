// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xthresholded_sobel_edge_detector.h"

extern XThresholded_sobel_edge_detector_Config XThresholded_sobel_edge_detector_ConfigTable[];

XThresholded_sobel_edge_detector_Config *XThresholded_sobel_edge_detector_LookupConfig(u16 DeviceId) {
	XThresholded_sobel_edge_detector_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTHRESHOLDED_SOBEL_EDGE_DETECTOR_NUM_INSTANCES; Index++) {
		if (XThresholded_sobel_edge_detector_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XThresholded_sobel_edge_detector_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XThresholded_sobel_edge_detector_Initialize(XThresholded_sobel_edge_detector *InstancePtr, u16 DeviceId) {
	XThresholded_sobel_edge_detector_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XThresholded_sobel_edge_detector_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XThresholded_sobel_edge_detector_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

