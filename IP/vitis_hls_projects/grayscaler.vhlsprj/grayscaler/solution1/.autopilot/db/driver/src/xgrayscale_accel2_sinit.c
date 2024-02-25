// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xgrayscale_accel2.h"

extern XGrayscale_accel2_Config XGrayscale_accel2_ConfigTable[];

XGrayscale_accel2_Config *XGrayscale_accel2_LookupConfig(u16 DeviceId) {
	XGrayscale_accel2_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGRAYSCALE_ACCEL2_NUM_INSTANCES; Index++) {
		if (XGrayscale_accel2_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGrayscale_accel2_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGrayscale_accel2_Initialize(XGrayscale_accel2 *InstancePtr, u16 DeviceId) {
	XGrayscale_accel2_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGrayscale_accel2_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGrayscale_accel2_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

