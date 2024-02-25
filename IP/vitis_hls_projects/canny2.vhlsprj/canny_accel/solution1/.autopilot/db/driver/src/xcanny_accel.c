// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcanny_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCanny_accel_CfgInitialize(XCanny_accel *InstancePtr, XCanny_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCanny_accel_Start(XCanny_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCanny_accel_IsDone(XCanny_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCanny_accel_IsIdle(XCanny_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCanny_accel_IsReady(XCanny_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCanny_accel_EnableAutoRestart(XCanny_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCanny_accel_DisableAutoRestart(XCanny_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XCanny_accel_Set_img_inp(XCanny_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_IMG_INP_DATA, (u32)(Data));
    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_IMG_INP_DATA + 4, (u32)(Data >> 32));
}

u64 XCanny_accel_Get_img_inp(XCanny_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_IMG_INP_DATA);
    Data += (u64)XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_IMG_INP_DATA + 4) << 32;
    return Data;
}

void XCanny_accel_Set_img_out(XCanny_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_IMG_OUT_DATA, (u32)(Data));
    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_IMG_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XCanny_accel_Get_img_out(XCanny_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_IMG_OUT_DATA);
    Data += (u64)XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_IMG_OUT_DATA + 4) << 32;
    return Data;
}

void XCanny_accel_Set_rows(XCanny_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_ROWS_DATA, Data);
}

u32 XCanny_accel_Get_rows(XCanny_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_ROWS_DATA);
    return Data;
}

void XCanny_accel_Set_cols(XCanny_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_COLS_DATA, Data);
}

u32 XCanny_accel_Get_cols(XCanny_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_COLS_DATA);
    return Data;
}

void XCanny_accel_Set_low_threshold(XCanny_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_LOW_THRESHOLD_DATA, Data);
}

u32 XCanny_accel_Get_low_threshold(XCanny_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_LOW_THRESHOLD_DATA);
    return Data;
}

void XCanny_accel_Set_high_threshold(XCanny_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_HIGH_THRESHOLD_DATA, Data);
}

u32 XCanny_accel_Get_high_threshold(XCanny_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_HIGH_THRESHOLD_DATA);
    return Data;
}

void XCanny_accel_InterruptGlobalEnable(XCanny_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XCanny_accel_InterruptGlobalDisable(XCanny_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XCanny_accel_InterruptEnable(XCanny_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_IER);
    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XCanny_accel_InterruptDisable(XCanny_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_IER);
    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCanny_accel_InterruptClear(XCanny_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_accel_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XCanny_accel_InterruptGetEnabled(XCanny_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_IER);
}

u32 XCanny_accel_InterruptGetStatus(XCanny_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCanny_accel_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_ACCEL_CONTROL_ADDR_ISR);
}

