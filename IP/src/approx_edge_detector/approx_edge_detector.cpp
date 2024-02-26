#include "hls_stream.h"
#include "common/xf_common.hpp"
#include "common/xf_utility.hpp"
#include "common/xf_infra.hpp"
#include "imgproc/xf_cvt_color.hpp"
#include "ap_int.h"
#include "approx_edge_detector.hpp"

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

void approx_edge_detector(ap_uint<INPUT_PTR_WIDTH>* arr_inp, ap_uint<OUTPUT_PTR_WIDTH>* arr_out, unsigned int rows, unsigned int cols, uint8_t edge_threshold)
{

#pragma HLS INTERFACE m_axi     port=img_inp  offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi     port=img_out  offset=slave bundle=gmem2
#pragma HLS INTERFACE s_axilite port=rows
#pragma HLS INTERFACE s_axilite port=cols
#pragma HLS INTERFACE s_axilite port=edge_threshold
#pragma HLS INTERFACE s_axilite port=return

	xf::cv::Mat<INTYPE, HEIGHT, WIDTH, NPIX> img_in(rows, cols);
	xf::cv::Mat<OUTTYPE, HEIGHT, WIDTH, NPIX> img_gray(rows, cols);
    xf::cv::Mat<OUTTYPE, HEIGHT, WIDTH, NPIX> img_out(rows, cols);

#pragma HLS DATAFLOW

    // Convert stream in to xf::cv::Mat
    xf::cv::Array2xfMat<INPUT_PTR_WIDTH, INTYPE, HEIGHT, WIDTH, NPIX>(arr_inp, img_in);

    // Convert original image to grayscale
    xf::cv::rgb2gray<INTYPE, OUTTYPE, HEIGHT, WIDTH, NPIX>(img_in, img_gray);

    // Determine edges using the sobel kernels and a threshold
    calcThresholedSobelEdges<HEIGHT, WIDTH>(img_gray, img_out, rows, cols, edge_threshold);

    // Convert xf::cv::Mat to stream
    xf::cv::xfMat2Array<OUTPUT_PTR_WIDTH, XF_8UC1, HEIGHT, WIDTH, NPIX>(img_out, arr_out);
}
