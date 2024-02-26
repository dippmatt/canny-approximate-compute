// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xthresholded_sobel_edge_detector.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XThresholded_sobel_edge_detector_CfgInitialize(XThresholded_sobel_edge_detector *InstancePtr, XThresholded_sobel_edge_detector_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XThresholded_sobel_edge_detector_Start(XThresholded_sobel_edge_detector *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_AP_CTRL) & 0x80;
    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XThresholded_sobel_edge_detector_IsDone(XThresholded_sobel_edge_detector *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XThresholded_sobel_edge_detector_IsIdle(XThresholded_sobel_edge_detector *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XThresholded_sobel_edge_detector_IsReady(XThresholded_sobel_edge_detector *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XThresholded_sobel_edge_detector_EnableAutoRestart(XThresholded_sobel_edge_detector *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XThresholded_sobel_edge_detector_DisableAutoRestart(XThresholded_sobel_edge_detector *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_AP_CTRL, 0);
}

void XThresholded_sobel_edge_detector_Set_img_inp(XThresholded_sobel_edge_detector *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_IMG_INP_DATA, (u32)(Data));
    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_IMG_INP_DATA + 4, (u32)(Data >> 32));
}

u64 XThresholded_sobel_edge_detector_Get_img_inp(XThresholded_sobel_edge_detector *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_IMG_INP_DATA);
    Data += (u64)XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_IMG_INP_DATA + 4) << 32;
    return Data;
}

void XThresholded_sobel_edge_detector_Set_img_out(XThresholded_sobel_edge_detector *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_IMG_OUT_DATA, (u32)(Data));
    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_IMG_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XThresholded_sobel_edge_detector_Get_img_out(XThresholded_sobel_edge_detector *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_IMG_OUT_DATA);
    Data += (u64)XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_IMG_OUT_DATA + 4) << 32;
    return Data;
}

void XThresholded_sobel_edge_detector_Set_rows(XThresholded_sobel_edge_detector *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_ROWS_DATA, Data);
}

u32 XThresholded_sobel_edge_detector_Get_rows(XThresholded_sobel_edge_detector *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_ROWS_DATA);
    return Data;
}

void XThresholded_sobel_edge_detector_Set_cols(XThresholded_sobel_edge_detector *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_COLS_DATA, Data);
}

u32 XThresholded_sobel_edge_detector_Get_cols(XThresholded_sobel_edge_detector *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_COLS_DATA);
    return Data;
}

void XThresholded_sobel_edge_detector_Set_thresh(XThresholded_sobel_edge_detector *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_THRESH_DATA, Data);
}

u32 XThresholded_sobel_edge_detector_Get_thresh(XThresholded_sobel_edge_detector *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_THRESH_DATA);
    return Data;
}

void XThresholded_sobel_edge_detector_InterruptGlobalEnable(XThresholded_sobel_edge_detector *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_GIE, 1);
}

void XThresholded_sobel_edge_detector_InterruptGlobalDisable(XThresholded_sobel_edge_detector *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_GIE, 0);
}

void XThresholded_sobel_edge_detector_InterruptEnable(XThresholded_sobel_edge_detector *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_IER);
    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_IER, Register | Mask);
}

void XThresholded_sobel_edge_detector_InterruptDisable(XThresholded_sobel_edge_detector *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_IER);
    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_IER, Register & (~Mask));
}

void XThresholded_sobel_edge_detector_InterruptClear(XThresholded_sobel_edge_detector *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThresholded_sobel_edge_detector_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_ISR, Mask);
}

u32 XThresholded_sobel_edge_detector_InterruptGetEnabled(XThresholded_sobel_edge_detector *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_IER);
}

u32 XThresholded_sobel_edge_detector_InterruptGetStatus(XThresholded_sobel_edge_detector *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XThresholded_sobel_edge_detector_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLDED_SOBEL_EDGE_DETECTOR_CONTROL_ADDR_ISR);
}

