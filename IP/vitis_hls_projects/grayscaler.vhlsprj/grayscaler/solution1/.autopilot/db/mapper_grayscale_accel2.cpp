#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void grayscale_accel2(long long*, long long*, int, int, int, int);
extern "C" void apatb_grayscale_accel2_hw(volatile void * __xlx_apatb_param_img_inp, volatile void * __xlx_apatb_param_img_out, int __xlx_apatb_param_rows, int __xlx_apatb_param_cols) {
  // Collect __xlx_img_inp__tmp_vec
  vector<sc_bv<64> >__xlx_img_inp__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_img_inp__tmp_vec.push_back(((long long*)__xlx_apatb_param_img_inp)[j]);
  }
  int __xlx_size_param_img_inp = 1;
  int __xlx_offset_param_img_inp = 0;
  int __xlx_offset_byte_param_img_inp = 0*8;
  long long* __xlx_img_inp__input_buffer= new long long[__xlx_img_inp__tmp_vec.size()];
  for (int i = 0; i < __xlx_img_inp__tmp_vec.size(); ++i) {
    __xlx_img_inp__input_buffer[i] = __xlx_img_inp__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_img_out__tmp_vec
  vector<sc_bv<64> >__xlx_img_out__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_img_out__tmp_vec.push_back(((long long*)__xlx_apatb_param_img_out)[j]);
  }
  int __xlx_size_param_img_out = 1;
  int __xlx_offset_param_img_out = 0;
  int __xlx_offset_byte_param_img_out = 0*8;
  long long* __xlx_img_out__input_buffer= new long long[__xlx_img_out__tmp_vec.size()];
  for (int i = 0; i < __xlx_img_out__tmp_vec.size(); ++i) {
    __xlx_img_out__input_buffer[i] = __xlx_img_out__tmp_vec[i].range(63, 0).to_uint64();
  }
  // DUT call
  grayscale_accel2(__xlx_img_inp__input_buffer, __xlx_img_out__input_buffer, __xlx_offset_byte_param_img_inp, __xlx_offset_byte_param_img_out, __xlx_apatb_param_rows, __xlx_apatb_param_cols);
// print __xlx_apatb_param_img_inp
  sc_bv<64>*__xlx_img_inp_output_buffer = new sc_bv<64>[__xlx_size_param_img_inp];
  for (int i = 0; i < __xlx_size_param_img_inp; ++i) {
    __xlx_img_inp_output_buffer[i] = __xlx_img_inp__input_buffer[i+__xlx_offset_param_img_inp];
  }
  for (int i = 0; i < __xlx_size_param_img_inp; ++i) {
    ((long long*)__xlx_apatb_param_img_inp)[i] = __xlx_img_inp_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_img_out
  sc_bv<64>*__xlx_img_out_output_buffer = new sc_bv<64>[__xlx_size_param_img_out];
  for (int i = 0; i < __xlx_size_param_img_out; ++i) {
    __xlx_img_out_output_buffer[i] = __xlx_img_out__input_buffer[i+__xlx_offset_param_img_out];
  }
  for (int i = 0; i < __xlx_size_param_img_out; ++i) {
    ((long long*)__xlx_apatb_param_img_out)[i] = __xlx_img_out_output_buffer[i].to_uint64();
  }
}
