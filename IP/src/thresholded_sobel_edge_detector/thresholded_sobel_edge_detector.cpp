// Copyright (C) 2021 Xilinx, Inc
//
// SPDX-License-Identifier: BSD-3-Clause

#include "hls_stream.h"
#include "common/xf_common.hpp"
#include "common/xf_utility.hpp"
#include "common/xf_infra.hpp"
#include "imgproc/xf_cvt_color.hpp"
#include "imgproc/xf_sobel.hpp"
#include "imgproc/xf_threshold.hpp"
#include "core/xf_arithm.hpp"

#define DATA_WIDTH 24
#define NPIX XF_NPPC1

/*  set the height and width  */
// #define WIDTH 1920
// #define HEIGHT 1080
#define WIDTH 1280
#define HEIGHT 720

#define INTYPE XF_8UC3
#define OUTTYPE XF_8UC1

typedef xf::cv::ap_axiu<DATA_WIDTH,1,1,1> interface_t;
typedef hls::stream<interface_t> stream_t;

void thresholded_sobel_edge_detector(stream_t& stream_in,
                    stream_t& stream_out,
                    unsigned int rows,
                    unsigned int cols,
					short int thresh)
{
#pragma HLS INTERFACE axis register both port=stream_in
#pragma HLS INTERFACE axis register both port=stream_out
#pragma HLS INTERFACE s_axilite port=rows offset=0x10
#pragma HLS INTERFACE s_axilite port=cols offset=0x18
#pragma HLS INTERFACE s_axilite port=return

    xf::cv::Mat<INTYPE, HEIGHT, WIDTH, NPIX> img_in(rows, cols);
    xf::cv::Mat<OUTTYPE, HEIGHT, WIDTH, NPIX> img_gray(rows, cols);
    xf::cv::Mat<OUTTYPE, HEIGHT, WIDTH, NPIX> mat_grad_x(rows, cols);
    xf::cv::Mat<OUTTYPE, HEIGHT, WIDTH, NPIX> mat_grad_y(rows, cols);
    xf::cv::Mat<OUTTYPE, HEIGHT, WIDTH, NPIX> mat_grad_sum(rows, cols);
    xf::cv::Mat<OUTTYPE, HEIGHT, WIDTH, NPIX> img_out(rows, cols);

#pragma HLS DATAFLOW

    // Convert stream in to xf::cv::Mat
    xf::cv::AXIvideo2xfMat<DATA_WIDTH, INTYPE, HEIGHT, WIDTH, NPIX>(stream_in, img_in);

    // Convert original image to grayscale
    xf::cv::rgb2gray<INTYPE, OUTTYPE, HEIGHT, WIDTH, NPIX>(img_in, img_gray);

    // Apply sobel filter
    xf::cv::Sobel<XF_BORDER_CONSTANT, XF_FILTER_3X3, OUTTYPE, OUTTYPE, HEIGHT, WIDTH, NPIX>(img_gray, mat_grad_x, mat_grad_y);

    // Pixel-wise addition of gradients matrices
    xf::cv::add<XF_CONVERT_POLICY_SATURATE, OUTTYPE, HEIGHT, WIDTH, NPIX>(mat_grad_x, mat_grad_y, mat_grad_sum);

    // Performs thresholding operation on sum of gradients
    xf::cv::Threshold<XF_THRESHOLD_TYPE_BINARY, OUTTYPE, HEIGHT, WIDTH, NPIX>(mat_grad_sum, img_out, thresh, 255);

    // Convert xf::cv::Mat to stream
    xf::cv::xfMat2AXIvideo<DATA_WIDTH, OUTTYPE, HEIGHT, WIDTH, NPIX>(img_out, stream_out);
}
