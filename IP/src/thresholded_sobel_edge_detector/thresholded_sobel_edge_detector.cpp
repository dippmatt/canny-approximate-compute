// Copyright (C) 2021 Xilinx, Inc
//
// SPDX-License-Identifier: BSD-3-Clause

#include "ap_int.h"
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

#define INPUT_PTR_WIDTH 64
#define OUTPUT_PTR_WIDTH 64

#define INTYPE XF_8UC3
#define OUTTYPE XF_8UC1

typedef xf::cv::ap_axiu<DATA_WIDTH,1,1,1> interface_t;
typedef hls::stream<interface_t> stream_t;

void thresholded_sobel_edge_detector(ap_uint<INPUT_PTR_WIDTH>* img_inp,
        			ap_uint<OUTPUT_PTR_WIDTH>* img_out,
                    unsigned int rows,
                    unsigned int cols,
					short int thresh)
{
#pragma HLS INTERFACE m_axi     port=img_inp  offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi     port=img_out  offset=slave bundle=gmem2
#pragma HLS INTERFACE s_axilite port=rows
#pragma HLS INTERFACE s_axilite port=cols
#pragma HLS INTERFACE s_axilite port=thresh
#pragma HLS INTERFACE s_axilite port=return

    xf::cv::Mat<INTYPE, HEIGHT, WIDTH, NPIX> mat_in(rows, cols);
    xf::cv::Mat<OUTTYPE, HEIGHT, WIDTH, NPIX> img_gray(rows, cols);
    xf::cv::Mat<OUTTYPE, HEIGHT, WIDTH, NPIX> mat_grad_x(rows, cols);
    xf::cv::Mat<OUTTYPE, HEIGHT, WIDTH, NPIX> mat_grad_y(rows, cols);
    xf::cv::Mat<OUTTYPE, HEIGHT, WIDTH, NPIX> mat_grad_sum(rows, cols);
    xf::cv::Mat<OUTTYPE, HEIGHT, WIDTH, NPIX> mat_out(rows, cols);

#pragma HLS DATAFLOW

    // Convert stream in to xf::cv::Mat
    xf::cv::Array2xfMat<INPUT_PTR_WIDTH, XF_8UC3, HEIGHT, WIDTH, NPIX>(img_inp, mat_in);

    // Convert original image to grayscale
    xf::cv::rgb2gray<INTYPE, OUTTYPE, HEIGHT, WIDTH, NPIX>(mat_in, img_gray);

    // Apply sobel filter
    xf::cv::Sobel<XF_BORDER_CONSTANT, XF_FILTER_3X3, OUTTYPE, OUTTYPE, HEIGHT, WIDTH, NPIX>(img_gray, mat_grad_x, mat_grad_y);

    // Pixel-wise addition of gradients matrices
    xf::cv::add<XF_CONVERT_POLICY_SATURATE, OUTTYPE, HEIGHT, WIDTH, NPIX>(mat_grad_x, mat_grad_y, mat_grad_sum);

    // Performs thresholding operation on sum of gradients
    xf::cv::Threshold<XF_THRESHOLD_TYPE_BINARY, OUTTYPE, HEIGHT, WIDTH, NPIX>(mat_grad_sum, mat_out, thresh, 255);

    // Convert xf::cv::Mat to stream
    xf::cv::xfMat2Array<OUTPUT_PTR_WIDTH, OUTTYPE, HEIGHT, WIDTH, NPIX>(mat_out, img_out);
}
