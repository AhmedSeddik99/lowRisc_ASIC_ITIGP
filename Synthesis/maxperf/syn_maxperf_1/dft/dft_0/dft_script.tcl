set DESIGN "ibex_top"

set CHAINS 4

set FFLIB "saed14hvt_ff0p88v125c.db"
set SSLIB "saed14hvt_ss0p72vm40c.db"
set TTLIB "saed14hvt_tt0p8v25c.db"

set WORK "../../work"

set LOG "./log"
set REPORT "./reports"
set OUTPUT "./output"

#######################
set_app_var search_path "/mnt/hgfs/0_GP/PDK/saed14_pdk/SAED14nm_EDK_CORE_HVT_v_062020/stdcell_hvt/db_ccs/"

set_app_var target_library "$TTLIB $SSLIB $FFLIB"

set_app_var link_library "* $target_library"
#####################
define_design_lib work -path $WORK

#######################
sh rm -rf $LOG

sh mkdir -p $LOG
#######################

read_ddc "../../output/$DESIGN.ddc" > "$LOG/read_ddc.log"
# --Constraits 
read_sdc "../../output/$DESIGN.sdc" > "$LOG/read_sdc.log"

set test_default_period 100

set_dft_signal -view exist -type ScanClock -port clk_i -timing {45 55}
set_dft_signal -view exist -type Reset -port rst_ni -active 0

for {set i 0} {$i < $CHAINS } {incr i} {
	create_port -direction in scan_in_{$i}
	create_port -direction out scan_out_{$i}
	set_dft_signal -view spec  -type ScanDataIn  -port scan_in_{$i}
	set_dft_signal -view spec  -type ScanDataOut -port scan_out_{$i}
}

#return 

create_port -direction in scan_en
set_dft_signal -view spec -type ScanEnable -port scan_en -active 1


# 2019 FF in design
set_scan_configuration -chain_count 4 -max_length 505 -clock_mixing no_mix  -style multiplexed_flip_flop -replace true > "$LOG/scan_configuration.log"

create_test_protocol > "$LOG/test_protocol.log"

dft_drc -verbose > "$LOG/dft_drc_pre.log"

#set_max_transition 1.0 [get_pins gen_regfile_ff.register_file_i/*]
#insert_buffer -inverter_pair  gen_regfile_ff.register_file_i/* SAEDHVT14_INV_S_4
set_case_analysis 1 [get_ports scan_en]

link > "$LOG/link.log"

set_dft_insertion_configuration -preserve_design_name true > "$LOG/insertion_configutaion.log"


compile -scan -incremental > "$LOG/compile_scan.log"

preview_dft > "$LOG/preview_dft.log"

insert_dft > "$LOG/insert_dft.log"

dft_drc -verbose -coverage_estimate > "$LOG/dft_drc_post.log"

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

##########################
sh rm -rf $OUTPUT

sh mkdir -p $OUTPUT
#######################

write -hierarchy -format verilog -output "$OUTPUT/$DESIGN.v" >> "$LOG/write_netlist.log"

write -format ddc -output "$OUTPUT/$DESIGN.ddc"

write_test_protocol -out ../output/johnson_dft.spf
write_sdf  ../output/johnson_dft.sdf

