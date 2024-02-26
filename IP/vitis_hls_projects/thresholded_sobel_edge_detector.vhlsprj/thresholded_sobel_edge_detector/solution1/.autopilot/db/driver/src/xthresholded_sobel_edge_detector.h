// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XTHRESHOLDED_SOBEL_EDGE_DETECTOR_H
#define XTHRESHOLDED_SOBEL_EDGE_DETECTOR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xthresholded_sobel_edge_detector_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XThresholded_sobel_edge_detector_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XThresholded_sobel_edge_detector;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XThresholded_sobel_edge_detector_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XThresholded_sobel_edge_detector_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XThresholded_sobel_edge_detector_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XThresholded_sobel_edge_detector_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XThresholded_sobel_edge_detector_Initialize(XThresholded_sobel_edge_detector *InstancePtr, u16 DeviceId);
XThresholded_sobel_edge_detector_Config* XThresholded_sobel_edge_detector_LookupConfig(u16 DeviceId);
int XThresholded_sobel_edge_detector_CfgInitialize(XThresholded_sobel_edge_detector *InstancePtr, XThresholded_sobel_edge_detector_Config *ConfigPtr);
#else
int XThresholded_sobel_edge_detector_Initialize(XThresholded_sobel_edge_detector *InstancePtr, const char* InstanceName);
int XThresholded_sobel_edge_detector_Release(XThresholded_sobel_edge_detector *InstancePtr);
#endif

void XThresholded_sobel_edge_detector_Start(XThresholded_sobel_edge_detector *InstancePtr);
u32 XThresholded_sobel_edge_detector_IsDone(XThresholded_sobel_edge_detector *InstancePtr);
u32 XThresholded_sobel_edge_detector_IsIdle(XThresholded_sobel_edge_detector *InstancePtr);
u32 XThresholded_sobel_edge_detector_IsReady(XThresholded_sobel_edge_detector *InstancePtr);
void XThresholded_sobel_edge_detector_EnableAutoRestart(XThresholded_sobel_edge_detector *InstancePtr);
void XThresholded_sobel_edge_detector_DisableAutoRestart(XThresholded_sobel_edge_detector *InstancePtr);

void XThresholded_sobel_edge_detector_Set_img_inp(XThresholded_sobel_edge_detector *InstancePtr, u64 Data);
u64 XThresholded_sobel_edge_detector_Get_img_inp(XThresholded_sobel_edge_detector *InstancePtr);
void XThresholded_sobel_edge_detector_Set_img_out(XThresholded_sobel_edge_detector *InstancePtr, u64 Data);
u64 XThresholded_sobel_edge_detector_Get_img_out(XThresholded_sobel_edge_detector *InstancePtr);
void XThresholded_sobel_edge_detector_Set_rows(XThresholded_sobel_edge_detector *InstancePtr, u32 Data);
u32 XThresholded_sobel_edge_detector_Get_rows(XThresholded_sobel_edge_detector *InstancePtr);
void XThresholded_sobel_edge_detector_Set_cols(XThresholded_sobel_edge_detector *InstancePtr, u32 Data);
u32 XThresholded_sobel_edge_detector_Get_cols(XThresholded_sobel_edge_detector *InstancePtr);
void XThresholded_sobel_edge_detector_Set_thresh(XThresholded_sobel_edge_detector *InstancePtr, u32 Data);
u32 XThresholded_sobel_edge_detector_Get_thresh(XThresholded_sobel_edge_detector *InstancePtr);

void XThresholded_sobel_edge_detector_InterruptGlobalEnable(XThresholded_sobel_edge_detector *InstancePtr);
void XThresholded_sobel_edge_detector_InterruptGlobalDisable(XThresholded_sobel_edge_detector *InstancePtr);
void XThresholded_sobel_edge_detector_InterruptEnable(XThresholded_sobel_edge_detector *InstancePtr, u32 Mask);
void XThresholded_sobel_edge_detector_InterruptDisable(XThresholded_sobel_edge_detector *InstancePtr, u32 Mask);
void XThresholded_sobel_edge_detector_InterruptClear(XThresholded_sobel_edge_detector *InstancePtr, u32 Mask);
u32 XThresholded_sobel_edge_detector_InterruptGetEnabled(XThresholded_sobel_edge_detector *InstancePtr);
u32 XThresholded_sobel_edge_detector_InterruptGetStatus(XThresholded_sobel_edge_detector *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
