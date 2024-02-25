// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcanny_accel.h"

extern XCanny_accel_Config XCanny_accel_ConfigTable[];

XCanny_accel_Config *XCanny_accel_LookupConfig(u16 DeviceId) {
	XCanny_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCANNY_ACCEL_NUM_INSTANCES; Index++) {
		if (XCanny_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCanny_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCanny_accel_Initialize(XCanny_accel *InstancePtr, u16 DeviceId) {
	XCanny_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCanny_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCanny_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

