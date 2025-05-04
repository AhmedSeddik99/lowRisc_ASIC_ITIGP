###########
#_MY_EDIT_#
###########
set_dont_touch_network [get_ports "rst_ni"]

# to disable optimization thorough complementing ports and renaming it to *_BAR
set_boundary_optimization u_ibex_core/cs_registers_i false

set_max_transition 1.0 [get_pins *]
