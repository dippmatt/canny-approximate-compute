#include "common/xf_common.hpp"
#include "hls_stream.h"

typedef unsigned short uint16_t;
typedef unsigned int uint32_t;

namespace xf {
namespace cv {


	/*
	 * Calculate x-Gradient using following Kernel:
	 *
	 * ---------
	 * |-1 0 +1|
	 * |-2 0 +2|
	 * |-1 0 +1|
	 * ---------
	 *
	 * -------------
	 * |p00 p01 p02|
	 * |p10 p11 p12|
	 * |p20 p21 p22|
	 * -------------
	 *
	 * p_out = |(p02-p00) + 2*(p12-p10) + (p22-p20)|
	 *
	 */
	 bool isEdgePixelX(ap_uint<8> p00,
			 	 	 	 ap_uint<8> p02,
						 ap_uint<8> p10,
						 ap_uint<8> p12,
						 ap_uint<8> p20,
						 ap_uint<8> p22,
						 ap_uint<8> threshold){

#pragma HLS INLINE

		ap_int<11> grad_r0 = p02 - p00;
		ap_int<11> grad_r1 = p12 - p10;
		ap_int<11> grad_r2 = p22 - p20;

		ap_int<11> grad_sum = grad_r0 + (grad_r1 << 1) + grad_r2;

		return (grad_sum > threshold) || (-grad_sum > threshold);
	}

	/*
	 * Calculate y-Gradient using following Kernel:
	 *
	 * ----------
	 * |+1 +2 +1|
	 * | 0  0  0|
	 * |-1 -2 -1|
	 * ----------
	 *
	 * -------------
	 * |p00 p01 p02|
	 * |p10 p11 p12|
	 * |p20 p21 p22|
	 * -------------
	 *
	 * p_out = |(p00-p20) + 2*(p01-p21) + (p02-p22)|
	 *
	 */
	 bool isEdgePixelY(ap_uint<8> p00,
			 	 	 	 ap_uint<8> p20,
						 ap_uint<8> p01,
						 ap_uint<8> p21,
						 ap_uint<8> p02,
						 ap_uint<8> p22,
						 ap_uint<8> threshold){

#pragma HLS INLINE

			ap_int<11> grad_c0 = p00 - p20;
			ap_int<11> grad_c1 = p01 - p21;
			ap_int<11> grad_c2 = p02 - p22;

			ap_int<11> grad_sum = grad_c0 + (grad_c1 << 1) + grad_c2;

			return (grad_sum > threshold) || (-grad_sum > threshold);
		}

	//XF_8UC1 - stands for 8-bit unsigned and one channel pixel
	//XF_NPPC1 - process 1 pixel per clock cycle
	//NPC: The number of pixels to be packed per word. For instance,
	//XF_NPPC1 for 1 pixel per word; and XF_NPPC8 for 8 pixels per word.

	template <int ROWS, int COLS>
	void calcThresholedSobelEdges(xf::cv::Mat<XF_8UC1, ROWS, COLS, XF_NPPC1>& _src_mat,
				   xf::cv::Mat<XF_8UC1, ROWS, COLS, XF_NPPC1>& _dst_mat,
				   unsigned int img_width,
				   unsigned int img_height,
				   uint8_t edge_threshold) {

		uint16_t last_col_index = img_width-1;
		uint16_t last_row_index = img_height-1;

		Col_Loop:
		for (ap_uint<11> col_cnt = 0; col_cnt < img_width; col_cnt++) {

#pragma HLS loop_tripcount min=COLS max=COLS
#pragma HLS LOOP_FLATTEN OFF

			Row_Loop:
			for (ap_uint<11> row_cnt = 0; row_cnt < img_height; row_cnt++) {

#pragma HLS loop_tripcount min=ROWS max=ROWS
#pragma HLS pipeline II=9
#pragma HLS LOOP_FLATTEN

				uint16_t write_index = row_cnt*img_width + col_cnt;

				if((col_cnt == 0) || (col_cnt == last_col_index) ||
				   (row_cnt == 0) || (row_cnt == last_row_index)){
					// all border on the border are set to 0
					_dst_mat.write(write_index, 0);
				}else{


					/*
					 * p11 ... current pixel
					 *
					 * -------------
					 * |p00 p01 p02| --- row0
					 * |p10 p11 p12| --- row1
					 * |p20 p21 p22| --- row2
					 * -------------
					 */

					uint8_t row0_start_index = (row_cnt-1)*img_width;
					ap_uint<8> p00 =  _src_mat.read(row0_start_index + (col_cnt-1));
					ap_uint<8> p01 =  _src_mat.read(row0_start_index + (col_cnt));
					ap_uint<8> p02 =  _src_mat.read(row0_start_index + (col_cnt+1));

					uint8_t row1_start_index = row_cnt*img_width;
					ap_uint<8> p10 =  _src_mat.read(row1_start_index + (col_cnt-1));
					ap_uint<8> p12 =  _src_mat.read(row1_start_index + (col_cnt+1));

					uint8_t row2_start_index = (row_cnt+1)*img_width;
					ap_uint<8> p20 =  _src_mat.read(row2_start_index + (col_cnt-1));
					ap_uint<8> p21 =  _src_mat.read(row2_start_index + (col_cnt));
					ap_uint<8> p22 =  _src_mat.read(row2_start_index + (col_cnt+1));

					//determine edge pixel
					bool edge_pixel_x = isEdgePixelX(p00, p02, p10, p12, p20, p22, edge_threshold);
					bool edge_pixel_y = isEdgePixelY(p00, p20, p01, p21, p02, p22, edge_threshold);

					if(edge_pixel_x || edge_pixel_y ){
						_dst_mat.write(write_index, 255);
					}else{
						_dst_mat.write(write_index, 0);
					}
				}
			}
		}
	}
}
}
