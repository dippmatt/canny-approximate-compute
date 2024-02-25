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
    id 74 \
    name p_lowthreshold \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lowthreshold \
    op interface \
    ports { p_lowthreshold { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name p_highthreshold \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_highthreshold \
    op interface \
    ports { p_highthreshold { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name img_height \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_height \
    op interface \
    ports { img_height { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name img_width \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_width \
    op interface \
    ports { img_width { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name p_lowthreshold_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lowthreshold_out \
    op interface \
    ports { p_lowthreshold_out_din { O 8 vector } p_lowthreshold_out_full_n { I 1 bit } p_lowthreshold_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name p_highthreshold_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_highthreshold_out \
    op interface \
    ports { p_highthreshold_out_din { O 8 vector } p_highthreshold_out_full_n { I 1 bit } p_highthreshold_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name img_height_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_height_out \
    op interface \
    ports { img_height_out_din { O 11 vector } img_height_out_full_n { I 1 bit } img_height_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name img_height_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_height_out1 \
    op interface \
    ports { img_height_out1_din { O 11 vector } img_height_out1_full_n { I 1 bit } img_height_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name img_width_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_width_out \
    op interface \
    ports { img_width_out_din { O 11 vector } img_width_out_full_n { I 1 bit } img_width_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name img_width_out2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_width_out2 \
    op interface \
    ports { img_width_out2_din { O 11 vector } img_width_out2_full_n { I 1 bit } img_width_out2_write { O 1 bit } } \
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


