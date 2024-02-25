#include "ap_int.h"
#include "common/xf_common.hpp"
#include "common/xf_utility.hpp"
#include "hls_stream.h"
#include "common/xf_infra.hpp"
#include "imgproc/xf_cvt_color.hpp"

#define DATA_WIDTH 24

/*  set the height and width  */
#define WIDTH 1920
#define HEIGHT 1080

#define INPUT_PTR_WIDTH 64
#define OUTPUT_PTR_WIDTH 64

#define NPIX XF_NPPC1

extern "C" {
void grayscale_accel2(ap_uint<INPUT_PTR_WIDTH>* img_inp,
                 ap_uint<OUTPUT_PTR_WIDTH>* img_out,
                 int rows,
                 int cols,
     ) {
// clang-format off
    #pragma HLS INTERFACE m_axi     port=img_inp  offset=slave bundle=gmem1
    #pragma HLS INTERFACE m_axi     port=img_out  offset=slave bundle=gmem2

// clang-format on

// clang-format off
    #pragma HLS INTERFACE s_axilite port=rows
    #pragma HLS INTERFACE s_axilite port=cols
    #pragma HLS INTERFACE s_axilite port=return
    // clang-format on


    xf::cv::Mat<XF_8UC3, HEIGHT, WIDTH, NPIX> in_mat(rows, cols);
    xf::cv::Mat<XF_8UC1, HEIGHT, WIDTH, NPIX> dst_mat(rows, cols);

#pragma HLS DATAFLOW
    // Convert array in to xf::cv::Mat
    xf::cv::Array2xfMat<INPUT_PTR_WIDTH, XF_8UC3, HEIGHT, WIDTH, NPIX>(img_inp, in_mat);
	// Convert original image to grayscale
    xf::cv::rgb2gray<XF_8UC3, XF_8UC1, HEIGHT, WIDTH, NPIX>(in_mat, dst_mat);
	// Convert xf::cv::Mat to array
    xf::cv::xfMat2Array<OUTPUT_PTR_WIDTH, XF_8UC1, HEIGHT, WIDTH, NPIX>(dst_mat, img_out);
}
}
