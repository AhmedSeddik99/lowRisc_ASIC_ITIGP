
############################  Search PATH ################################

set top_module ibex_top

set RTL       "/home/IC/ITI_GP/Formality_dft_0/RTL"
set LIB_PATH  "/mnt/hgfs/stdcell_rvt/db_ccs/"

lappend search_path $LIB_PATH
lappend search_path $RTL


####################### Read Reference tech libs ########################
 
set FFLIB "saed14rvt_ff0p88v125c.db"
set SSLIB "saed14rvt_ss0p72vm40c.db"


######################### Formality Setup File ###########################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
set_svf "./${top_module}.svf"


###################################################################
###################### Reference Container ########################
###################################################################

set pkg {
		ibex_pkg.sv \
		prim_mubi_pkg.sv \
		prim_count_pkg.sv \
		prim_pkg.sv \
		prim_ram_1p_pkg.sv \
		prim_secded_pkg.sv \
		prim_cipher_pkg.sv \
		prim_util_pkg.sv 
	}

# 35
set hier_0 {
		prim_generic_clock_gating.sv \
		prim_xilinx_clock_gating.sv \
		prim_generic_buf.sv \
		ibex_compressed_decoder.sv \
		ibex_fetch_fifo.sv \
		prim_generic_buf.sv \
		prim_secded_inv_39_32_dec.sv \
		prim_secded_inv_39_32_enc.sv \
		prim_secded_inv_28_22_dec.sv \
		prim_secded_inv_28_22_enc.sv \
		prim_lfsr.sv \
		ibex_branch_predict.sv \
		ibex_decoder.sv \
		ibex_controller.sv \
		ibex_alu.sv \
		ibex_multdiv_fast.sv \
		ibex_multdiv_slow.sv \
		ibex_wb_stage.sv \
		ibex_csr.sv \
		ibex_counter.sv \
		ibex_pmp.sv \
		prim_onehot_check.sv \
		prim_onehot_enc.sv \
		prim_generic_and2.sv \
		prim_generic_flop.sv \
		prim_subst_perm.sv \
		prim_prince.sv \
		prim_generic_ram_1p.sv \
		prim_secded_inv_22_16_dec.sv \
		prim_secded_inv_22_16_enc.sv \
		prim_secded_inv_hamming_22_16_dec.sv \
		prim_secded_inv_hamming_22_16_enc.sv \
		prim_secded_inv_hamming_39_32_dec.sv \
		prim_secded_inv_hamming_39_32_enc.sv \
		prim_generic_clock_mux2.sv \
		prim_badbit_ram_1p.sv \
		prim_xilinx_flop.sv \
		prim_xilinx_and2.sv \
		prim_xilinx_buf.sv \
		prim_xilinx_clock_mux2.sv 
	}
	
# 12	
# ibex_cs_registers.sv
set hier_1 {
		prim_clock_gating.sv \
		prim_buf.sv \
		ibex_prefetch_buffer.sv \
		ibex_icache.sv \
		ibex_dummy_instr.sv \
		ibex_cs_registers.sv \
		ibex_id_stage.sv \
		ibex_ex_block.sv \
		prim_and2.sv \
		prim_flop.sv \
		prim_ram_1p.sv \
		prim_clock_mux2.sv
        }
		
# 6
set hier_2 { 
		ibex_if_stage.sv \
		ibex_load_store_unit.sv \
		prim_onehot_mux.sv \
		prim_ram_1p_scr.sv \
		prim_ram_1p_adv.sv \
		prim_count.sv
	}

# 5
set hier_3 {
		ibex_core.sv \
		ibex_register_file_ff.sv \
		ibex_register_file_fpga.sv \
		ibex_register_file_latch.sv \
		ibex_lockstep.sv
	}
	
	
	
foreach i $pkg {
	read_sverilog -container r -libname WORK -12 /home/IC/ITI_GP/Formality_dft_0/RTL/$i
}


foreach i $hier_0 {
	read_sverilog -container r -libname WORK -12 /home/IC/ITI_GP/Formality_dft_0/RTL/$i
}


foreach i $hier_1 {
	read_sverilog -container r -libname WORK -12 /home/IC/ITI_GP/Formality_dft_0/RTL/$i
}


foreach i $hier_2 {
	read_sverilog -container r -libname WORK -12 /home/IC/ITI_GP/Formality_dft_0/RTL/$i
}


foreach i $hier_3 {
	read_sverilog -container r -libname WORK -12 /home/IC/ITI_GP/Formality_dft_0/RTL/$i
}	


read_sverilog -container r -libname WORK -12 /home/IC/ITI_GP/Formality_dft_0/RTL/ibex_top.sv


# Read Reference technology libraries
#set_reference_design ibex_top
#set_top ibex_top

read_db -container Ref [list $SSLIB $FFLIB]


# set the top Reference Design
set_reference_design ibex_top
set_top ibex_top

###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
#set_implementation_design ibex_top
#set_top ibex_top


read_verilog -container Imp -netlist "/home/IC/ITI_GP/Formality_dft_0/output/ibex_top.v"

# Read Implementation technology libraries
#set_implementation_design ibex_top
#set_top ibex_top

read_db -container Imp [list $SSLIB $FFLIB]

# set the top Implementation Design
set_implementation_design ibex_top
set_top ibex_top

#scan_out
set_dont_verify_points -type port Ref:/WORK/*/scan_out*
set_dont_verify_points -type port Imp:/WORK/*/scan_out*

############################### contants #####################################

# all atpg enable(test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant Ref:/WORK/*/test_en_i 0
set_constant Imp:/WORK/*/test_en_i 0

#scan_enable
set_constant Ref:/WORK/*/scan_en 0
set_constant Imp:/WORK/*/scan_en 0

###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
sh mkdir report 

report_passing_points > ./report/passing_points.rpt
report_failing_points > ./report/failing_points.rpt
report_aborted_points > ./report/aborted_points.rpt
report_unverified_points > ./report/unverified_points.rpt
report_not_compared_points > ./report/not_compared_points.rpt


#start_gui
