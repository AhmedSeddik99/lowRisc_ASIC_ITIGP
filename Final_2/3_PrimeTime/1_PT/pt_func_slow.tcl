source "/mnt/hgfs/0_GP/Final_2/set_libs.tcl"

set LIB "saed14hvt_ss0p72vm40c.db"

set_app_var search_path $LIB_PATH

set_app_var target_library $LIB

set_app_var link_library $target_library

set NETLIST "/mnt/hgfs/0_GP/Final_2/4_ECO/0_ECO_2/output/ibex_wrapper_rt.v"

set CONSTRAINTS "/mnt/hgfs/0_GP/Final_2/4_ECO/0_ECO_2/output/ibex_wrapper_slow.sdc"

set PARASITICS "/mnt/hgfs/0_GP/Final_2/4_ECO/0_ECO_2/output/ibex_wrapper.tlup_max_-40.spef"  

set DONT_USE "/mnt/hgfs/0_GP/Final_2/0_Synthesis/constraints/dont_use_const_hendawi.tcl"

read_db -library $LIB

read_verilog $NETLIST



link_design -keep_sub_designs "ibex_cs_registers_0_00000001_0_0_0_0_00000000_00000028_0_00000000_00000004_0_0_3_0"
link_design -keep_sub_designs "ibex_register_file_ff_0_00000020_0_0_0_00000000"
link_design -keep_sub_designs "ibex_wrapper"

#current_design "ibex_wrapper"

read_sdc $CONSTRAINTS

read_parasitics $PARASITICS

source $DONT_USE
