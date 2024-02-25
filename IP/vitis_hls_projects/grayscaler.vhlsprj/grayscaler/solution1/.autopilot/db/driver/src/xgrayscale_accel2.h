// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XGRAYSCALE_ACCEL2_H
#define XGRAYSCALE_ACCEL2_H

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
#include "xgrayscale_accel2_hw.h"

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
} XGrayscale_accel2_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XGrayscale_accel2;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGrayscale_accel2_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGrayscale_accel2_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGrayscale_accel2_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGrayscale_accel2_ReadReg(BaseAddress, RegOffset) \
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
int XGrayscale_accel2_Initialize(XGrayscale_accel2 *InstancePtr, u16 DeviceId);
XGrayscale_accel2_Config* XGrayscale_accel2_LookupConfig(u16 DeviceId);
int XGrayscale_accel2_CfgInitialize(XGrayscale_accel2 *InstancePtr, XGrayscale_accel2_Config *ConfigPtr);
#else
int XGrayscale_accel2_Initialize(XGrayscale_accel2 *InstancePtr, const char* InstanceName);
int XGrayscale_accel2_Release(XGrayscale_accel2 *InstancePtr);
#endif

void XGrayscale_accel2_Start(XGrayscale_accel2 *InstancePtr);
u32 XGrayscale_accel2_IsDone(XGrayscale_accel2 *InstancePtr);
u32 XGrayscale_accel2_IsIdle(XGrayscale_accel2 *InstancePtr);
u32 XGrayscale_accel2_IsReady(XGrayscale_accel2 *InstancePtr);
void XGrayscale_accel2_EnableAutoRestart(XGrayscale_accel2 *InstancePtr);
void XGrayscale_accel2_DisableAutoRestart(XGrayscale_accel2 *InstancePtr);

void XGrayscale_accel2_Set_img_inp(XGrayscale_accel2 *InstancePtr, u64 Data);
u64 XGrayscale_accel2_Get_img_inp(XGrayscale_accel2 *InstancePtr);
void XGrayscale_accel2_Set_img_out(XGrayscale_accel2 *InstancePtr, u64 Data);
u64 XGrayscale_accel2_Get_img_out(XGrayscale_accel2 *InstancePtr);
void XGrayscale_accel2_Set_rows(XGrayscale_accel2 *InstancePtr, u32 Data);
u32 XGrayscale_accel2_Get_rows(XGrayscale_accel2 *InstancePtr);
void XGrayscale_accel2_Set_cols(XGrayscale_accel2 *InstancePtr, u32 Data);
u32 XGrayscale_accel2_Get_cols(XGrayscale_accel2 *InstancePtr);

void XGrayscale_accel2_InterruptGlobalEnable(XGrayscale_accel2 *InstancePtr);
void XGrayscale_accel2_InterruptGlobalDisable(XGrayscale_accel2 *InstancePtr);
void XGrayscale_accel2_InterruptEnable(XGrayscale_accel2 *InstancePtr, u32 Mask);
void XGrayscale_accel2_InterruptDisable(XGrayscale_accel2 *InstancePtr, u32 Mask);
void XGrayscale_accel2_InterruptClear(XGrayscale_accel2 *InstancePtr, u32 Mask);
u32 XGrayscale_accel2_InterruptGetEnabled(XGrayscale_accel2 *InstancePtr);
u32 XGrayscale_accel2_InterruptGetStatus(XGrayscale_accel2 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
