# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name rows \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rows \
    op interface \
    ports { rows { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name cols \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cols \
    op interface \
    ports { cols { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name img_inp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_inp \
    op interface \
    ports { img_inp { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name img_out \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_out \
    op interface \
    ports { img_out { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name thresh \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_thresh \
    op interface \
    ports { thresh { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name mat_in_rows_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mat_in_rows_out \
    op interface \
    ports { mat_in_rows_out_din { O 32 vector } mat_in_rows_out_full_n { I 1 bit } mat_in_rows_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name mat_in_cols_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mat_in_cols_out \
    op interface \
    ports { mat_in_cols_out_din { O 32 vector } mat_in_cols_out_full_n { I 1 bit } mat_in_cols_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name img_gray_rows_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_gray_rows_out \
    op interface \
    ports { img_gray_rows_out_din { O 32 vector } img_gray_rows_out_full_n { I 1 bit } img_gray_rows_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name img_gray_cols_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_gray_cols_out \
    op interface \
    ports { img_gray_cols_out_din { O 32 vector } img_gray_cols_out_full_n { I 1 bit } img_gray_cols_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name mat_grad_x_rows_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mat_grad_x_rows_out \
    op interface \
    ports { mat_grad_x_rows_out_din { O 32 vector } mat_grad_x_rows_out_full_n { I 1 bit } mat_grad_x_rows_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name mat_grad_x_cols_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mat_grad_x_cols_out \
    op interface \
    ports { mat_grad_x_cols_out_din { O 32 vector } mat_grad_x_cols_out_full_n { I 1 bit } mat_grad_x_cols_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name mat_grad_sum_rows_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mat_grad_sum_rows_out \
    op interface \
    ports { mat_grad_sum_rows_out_din { O 32 vector } mat_grad_sum_rows_out_full_n { I 1 bit } mat_grad_sum_rows_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name mat_grad_sum_cols_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mat_grad_sum_cols_out \
    op interface \
    ports { mat_grad_sum_cols_out_din { O 32 vector } mat_grad_sum_cols_out_full_n { I 1 bit } mat_grad_sum_cols_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name mat_out_rows_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mat_out_rows_out \
    op interface \
    ports { mat_out_rows_out_din { O 32 vector } mat_out_rows_out_full_n { I 1 bit } mat_out_rows_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name mat_out_cols_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mat_out_cols_out \
    op interface \
    ports { mat_out_cols_out_din { O 32 vector } mat_out_cols_out_full_n { I 1 bit } mat_out_cols_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name img_inp_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_inp_out \
    op interface \
    ports { img_inp_out_din { O 64 vector } img_inp_out_full_n { I 1 bit } img_inp_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name img_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_out_out \
    op interface \
    ports { img_out_out_din { O 64 vector } img_out_out_full_n { I 1 bit } img_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name thresh_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_thresh_out \
    op interface \
    ports { thresh_out_din { O 16 vector } thresh_out_full_n { I 1 bit } thresh_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


