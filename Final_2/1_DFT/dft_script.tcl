set DESIGN "ibex_wrapper"
set DDC "../0_Synthesis/output/ibex_wrapper.ddc"
set NETLIST "../0_Synthesis/output/ibex_wrapper.v"
set SDC "../0_Synthesis/output/ibex_wrapper.sdc"
set DONT_USE_CONST "../0_Synthesis/constraints/dont_use_const_hendawi.tcl"
set WORK "./work"
set LOG "./log"
set REPORT "./reports"
set OUTPUT "./output"

source "../set_libs.tcl"

#######################	
set_app_var search_path $LIB_PATH

set_app_var target_library "$SSLIB $FFLIB $TTLIB"

set_app_var link_library "* $target_library"
#####################
set_svf $DESIGN.svf

sh rm -rf $LOG
sh mkdir -p $LOG

sh rm -rf $REPORT
sh mkdir -p $REPORT

sh rm -rf $OUTPUT
sh mkdir -p $OUTPUT
#######################	
define_design_lib work -path $WORK

read_db "$SSLIB $FFLIB $TTLIB" > "$LOG/read_db.log"

read_verilog $NETLIST > "$LOG/read_verilog.log"

current_design $DESIGN

read_ddc $DDC > "$LOG/read_ddc.log"

link > "$LOG/link.log"

read_sdc $SDC > "$LOG/read_sdc.log"

write -format ddc -output "./$DESIGN.ddc"
read_ddc "./$DESIGN.ddc" > "./$DESIGN.ddc"
link

source $DONT_USE_CONST > "$LOG/dont_use_const.log"
#######################	
set_scan_configuration -chain_count 4 -max_length 510 -clock_mixing no_mix -style multiplexed_flip_flop -replace true > "$LOG/scan_configuration.log"

set test_default_scan_style multiplexed_flip_flop

########################## Define DFT Signals ##########################

set test_default_period 100
set_dft_signal -view exist -type ScanClock -port clk_i -timing {45 55}

set_dft_signal -view exist -type Reset -port rst_ni -active 0
set_dft_signal -view exist -type Reset -port scan_rst_ni -active 0

create_port -direction in scan_en
set_dft_signal -view exist -type ScanEnable -port scan_en -active 1

set_dft_signal -view exist -type Constant -port test_en_i -active_state 1 

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

#####################################################################
create_test_protocol > "$LOG/test_protocol.log"

dft_drc -verbose > "$LOG/dft_drc_pre.log"

preview_dft > "$LOG/preview_dft.log"

set_dft_insertion_configuration -preserve_design_name true > "$LOG/insertion_configutaion.log"

insert_dft > "$LOG/insert_dft.log"

compile -scan -incremental > "$LOG/compile_scan.log"

dft_drc -verbose -coverage_estimate > "$LOG/dft_drc_post.log"

set_svf -off

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

write -hierarchy -format verilog -output "$OUTPUT/$DESIGN.v" >> "$LOG/write_netlist.log"

write -format ddc -output "$OUTPUT/$DESIGN.ddc"

write_test_protocol -out "$OUTPUT/$DESIGN.spf"

write_sdf  "$OUTPUT/$DESIGN.sdf"

write_sdc "$OUTPUT/$DESIGN.sdc"


