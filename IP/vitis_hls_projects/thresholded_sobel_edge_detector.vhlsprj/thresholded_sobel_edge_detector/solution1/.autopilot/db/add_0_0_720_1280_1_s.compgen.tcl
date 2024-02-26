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
    id 123 \
    name mat_grad_x_480 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mat_grad_x_480 \
    op interface \
    ports { mat_grad_x_480_dout { I 8 vector } mat_grad_x_480_empty_n { I 1 bit } mat_grad_x_480_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name mat_grad_y_481 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mat_grad_y_481 \
    op interface \
    ports { mat_grad_y_481_dout { I 8 vector } mat_grad_y_481_empty_n { I 1 bit } mat_grad_y_481_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name mat_grad_sum_482 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mat_grad_sum_482 \
    op interface \
    ports { mat_grad_sum_482_din { O 8 vector } mat_grad_sum_482_full_n { I 1 bit } mat_grad_sum_482_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name p_src1_rows \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_src1_rows \
    op interface \
    ports { p_src1_rows_dout { I 32 vector } p_src1_rows_empty_n { I 1 bit } p_src1_rows_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name p_src1_cols \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_src1_cols \
    op interface \
    ports { p_src1_cols_dout { I 32 vector } p_src1_cols_empty_n { I 1 bit } p_src1_cols_read { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


