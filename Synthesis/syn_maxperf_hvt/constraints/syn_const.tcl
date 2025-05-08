###########
#_MY_EDIT_#
###########
set_dont_touch_network [get_ports "rst_ni"]

set_boundary_optimization ibex_top_inst/u_ibex_core/cs_registers_i false

set_max_transition 1 ibex_wrapper

set_dont_use [get_lib_cells */*_0P5]
set_dont_use [get_lib_cells */*_0P75]
set_dont_use [get_lib_cells */*_1]
