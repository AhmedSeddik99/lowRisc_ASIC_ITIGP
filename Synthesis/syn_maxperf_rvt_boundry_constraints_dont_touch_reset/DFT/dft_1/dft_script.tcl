set DESIGN "ibex_top"

set CHAINS 4

set FFLIB "saed14rvt_ff0p88v125c.db"
set SSLIB "saed14rvt_ss0p72vm40c.db"

set WORK "../../work"

set LOG "./log"
set REPORT "./reports"
set OUTPUT "./output"

#######################
set_app_var search_path "/mnt/hgfs/0_GP/PDK/saed14_pdk/SAED14nm_EDK_CORE_RVT_v_062020/stdcell_rvt/db_ccs/"

set_app_var target_library "$SSLIB $FFLIB"

set_app_var link_library "* $target_library"
#####################
sh cp -r $WORK "./"
set WORK "./work"
define_design_lib work -path $WORK

#######################
set_svf $DESIGN.svf

#######################

sh rm -rf $LOG

sh mkdir -p $LOG
#######################

read_ddc "../../output/$DESIGN.ddc" > "$LOG/read_ddc.log"
# --Constraits 
read_sdc "../../output/$DESIGN.sdc" > "$LOG/read_sdc.log"

link > "$LOG/link.log"


set test_default_period 100

# 2019 FF in design
set_scan_configuration -chain_count 4 -max_length 505 -clock_mixing no_mix  -style multiplexed_flip_flop -replace true > "$LOG/scan_configuration.log"


set_dft_signal -view exist -type ScanClock -port clk_i -timing {45 55}
set_dft_signal -view exist -type Reset -port rst_ni -active 0

set_dft_signal -view exist -type Constant -port test_en_i -active 1
set_dft_signal -view spec -type TestMode -port test_en_i -active 1

create_port -direction in scan_en
set_dft_signal -view spec -type ScanEnable -port scan_en -active 1

create_port -direction in scan_in_0
create_port -direction out scan_out_0
set_dft_signal -view spec  -type ScanDataIn  -port scan_in_0
set_dft_signal -view spec  -type ScanDataOut -port scan_out_0

create_port -direction in scan_in_1
create_port -direction out scan_out_1
set_dft_signal -view spec  -type ScanDataIn  -port scan_in_1
set_dft_signal -view spec  -type ScanDataOut -port scan_out_1

create_port -direction in scan_in_2
create_port -direction out scan_out_2
set_dft_signal -view spec  -type ScanDataIn  -port scan_in_2
set_dft_signal -view spec  -type ScanDataOut -port scan_out_2

create_port -direction in scan_in_3
create_port -direction out scan_out_3
set_dft_signal -view spec  -type ScanDataIn  -port scan_in_3
set_dft_signal -view spec  -type ScanDataOut -port scan_out_3

source -echo ./dft_const.tcl

create_test_protocol > "$LOG/test_protocol.log"

dft_drc -verbose > "$LOG/dft_drc_pre.log"

set dc_allow_rtl_pg true
set hdlin_keep_power_ground_pins true
set verilogout_no_tri	 true
set verilogout_equation  false
set_fix_multiple_port_nets -all -buffer_constants


compile_ultra -scan -incremental > "$LOG/compile_scan.log"

set_dft_insertion_configuration -preserve_design_name true > "$LOG/insertion_configutaion.log"

insert_dft > "$LOG/insert_dft.log"

preview_dft > "$LOG/preview_dft.log"

dft_drc -verbose -coverage_estimate > "$LOG/dft_drc_post.log"

#######################
set_svf -off


#######################
sh rm -rf $REPORT

sh mkdir -p $REPORT
#####################

report_dft_signal -view exist > "$REPORT/dft_signal_exist.rpt"
report_dft_signal -view spec > "$REPORT/dft_signal_spec.rpt"

report_area > "$REPORT/dft_area.rpt"

report_timing -delay_type max -max_paths 500 > "$REPORT/dft_setup.rpt"
report_timing -delay_type min -max_paths 500 > "$REPORT/dft_hold.rpt"

report_qor > "$REPORT/dft_qor.rpt"

report_net > "$REPORT/dft_net.rpt"

report_constraint -all_violators -nosplit > reports/constraints.rpt

##########################
sh rm -rf $OUTPUT

sh mkdir -p $OUTPUT
#######################

write -hierarchy -format verilog -output "$OUTPUT/$DESIGN.v" > "$LOG/write_netlist.log"

write -format ddc -output "$OUTPUT/$DESIGN.ddc"

write_test_protocol -out "$OUTPUT/$DESIGN.spf"
write_sdf  "$OUTPUT/$DESIGN.sdf"

write_sdc  -nosplit "$OUTPUT/$DESIGN.sdc"

