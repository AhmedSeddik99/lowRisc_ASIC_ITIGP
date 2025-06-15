#icc2_lm_shell -f create_stdcell_ndm.tcl | tee create_stdcell_ndm.log
# ------- specify db files ------------#
puts "############################"
puts "##########  NDM  ###########"
puts "############################"

set vt "HVT" 

if { $vt == "HVT" } {
	set STDCELL_PATH "/mnt/hgfs/0_GP/PDK/saed14_pdk/SAED14nm_EDK_CORE_HVT_v_062020/stdcell_hvt/"
	set LIBNAME "saed14hvt"
} elseif {$vt == "RVT"} {
	set STDCELL_PATH "/mnt/hgfs/0_GP/PDK/saed14_pdk/SAED14nm_EDK_CORE_RVT_v_062020/stdcell_rvt/"
	set LIBNAME "saed14rvt"
}

set LIBMODEL "db_nldm"
set PVT "ss0p72vm40c ff0p88v125c tt0p8v25c"


sh mkdir -p LOG
sh mkdir -p REPORT

sh rm -rf LOG/${LIBNAME}*
sh rm -rf REPORT/${LIBNAME}*

# --------- create workspace ----------#
create_workspace -flow normal ${LIBNAME} > LOG/${LIBNAME}_create_workspace.log

# --------- read frame only -----------#
read_ndm ${STDCELL_PATH}/ndm/${LIBNAME}_frame_only.ndm > LOG/${LIBNAME}_read_ndm.log

# ---------- read db files ------------#
foreach pvtCorner $PVT {
	set processLabel [lindex [split $pvtCorner 0] 0]
	read_db -process_label $processLabel ${STDCELL_PATH}/${LIBMODEL}/${LIBNAME}_${pvtCorner}.db >> LOG/${LIBNAME}_read_db.log
}

# --------- checks $ reports ----------#


check_workspace -allow_missing > REPORT/${LIBNAME}_check_workspace.rpt
report_workspace -panes > REPORT/${LIBNAME}_report_workspace.rpt

# --------- commit workspace ----------#
commit_workspace -force > LOG/${LIBNAME}_commit_workspace.log

# ------- check the final ndm ---------#
open_lib ${LIBNAME}.ndm > LOG/${LIBNAME}_open_lib.log
report_lib ${LIBNAME} > REPORT/${LIBNAME}_report_lib.rpt

# -------------- quit -----------------#
puts "############################"
puts "######  End of NDM  ########"
puts "############################"
quit
