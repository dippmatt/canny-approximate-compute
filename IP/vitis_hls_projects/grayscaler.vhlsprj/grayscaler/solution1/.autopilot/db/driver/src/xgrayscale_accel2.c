// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xgrayscale_accel2.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGrayscale_accel2_CfgInitialize(XGrayscale_accel2 *InstancePtr, XGrayscale_accel2_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XGrayscale_accel2_Start(XGrayscale_accel2 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_AP_CTRL) & 0x80;
    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XGrayscale_accel2_IsDone(XGrayscale_accel2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XGrayscale_accel2_IsIdle(XGrayscale_accel2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XGrayscale_accel2_IsReady(XGrayscale_accel2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XGrayscale_accel2_EnableAutoRestart(XGrayscale_accel2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XGrayscale_accel2_DisableAutoRestart(XGrayscale_accel2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_AP_CTRL, 0);
}

void XGrayscale_accel2_Set_img_inp(XGrayscale_accel2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_IMG_INP_DATA, (u32)(Data));
    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_IMG_INP_DATA + 4, (u32)(Data >> 32));
}

u64 XGrayscale_accel2_Get_img_inp(XGrayscale_accel2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_IMG_INP_DATA);
    Data += (u64)XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_IMG_INP_DATA + 4) << 32;
    return Data;
}

void XGrayscale_accel2_Set_img_out(XGrayscale_accel2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_IMG_OUT_DATA, (u32)(Data));
    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_IMG_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XGrayscale_accel2_Get_img_out(XGrayscale_accel2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_IMG_OUT_DATA);
    Data += (u64)XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_IMG_OUT_DATA + 4) << 32;
    return Data;
}

void XGrayscale_accel2_Set_rows(XGrayscale_accel2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_ROWS_DATA, Data);
}

u32 XGrayscale_accel2_Get_rows(XGrayscale_accel2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_ROWS_DATA);
    return Data;
}

void XGrayscale_accel2_Set_cols(XGrayscale_accel2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_COLS_DATA, Data);
}

u32 XGrayscale_accel2_Get_cols(XGrayscale_accel2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_COLS_DATA);
    return Data;
}

void XGrayscale_accel2_InterruptGlobalEnable(XGrayscale_accel2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_GIE, 1);
}

void XGrayscale_accel2_InterruptGlobalDisable(XGrayscale_accel2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_GIE, 0);
}

void XGrayscale_accel2_InterruptEnable(XGrayscale_accel2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_IER);
    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_IER, Register | Mask);
}

void XGrayscale_accel2_InterruptDisable(XGrayscale_accel2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_IER);
    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_IER, Register & (~Mask));
}

void XGrayscale_accel2_InterruptClear(XGrayscale_accel2 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGrayscale_accel2_WriteReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_ISR, Mask);
}

u32 XGrayscale_accel2_InterruptGetEnabled(XGrayscale_accel2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_IER);
}

u32 XGrayscale_accel2_InterruptGetStatus(XGrayscale_accel2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGrayscale_accel2_ReadReg(InstancePtr->Control_BaseAddress, XGRAYSCALE_ACCEL2_CONTROL_ADDR_ISR);
}

