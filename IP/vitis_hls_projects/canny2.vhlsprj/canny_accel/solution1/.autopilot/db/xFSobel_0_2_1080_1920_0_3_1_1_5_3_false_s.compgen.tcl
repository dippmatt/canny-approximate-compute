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
    id 109 \
    name gaussian_mat_41 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gaussian_mat_41 \
    op interface \
    ports { gaussian_mat_41_dout { I 8 vector } gaussian_mat_41_empty_n { I 1 bit } gaussian_mat_41_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name gradx_mat_42 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gradx_mat_42 \
    op interface \
    ports { gradx_mat_42_din { O 16 vector } gradx_mat_42_full_n { I 1 bit } gradx_mat_42_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name grady_mat_45 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_grady_mat_45 \
    op interface \
    ports { grady_mat_45_din { O 16 vector } grady_mat_45_full_n { I 1 bit } grady_mat_45_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name imgheight \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imgheight \
    op interface \
    ports { imgheight_dout { I 11 vector } imgheight_empty_n { I 1 bit } imgheight_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name imgwidth \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imgwidth \
    op interface \
    ports { imgwidth_dout { I 11 vector } imgwidth_empty_n { I 1 bit } imgwidth_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name imgheight_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_imgheight_out \
    op interface \
    ports { imgheight_out_din { O 11 vector } imgheight_out_full_n { I 1 bit } imgheight_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name imgwidth_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_imgwidth_out \
    op interface \
    ports { imgwidth_out_din { O 11 vector } imgwidth_out_full_n { I 1 bit } imgwidth_out_write { O 1 bit } } \
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


