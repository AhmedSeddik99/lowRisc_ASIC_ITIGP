# Run_0 #

Configurations:   
	Core are = 140 sq.   
	Core-to-Die margin = 18   
	PG region offset = 2   
	Cell padding = 3   
	congestion_driven_max_util = 0.5   
	max_density -value 0.2   
	target_routing_density -value 0.7   
	NDR {width, spacing} = {2, 2}   

Key Note:   
	No route_global after place_opt.   

Result:   
	Routing ends with 10k DRCs!   


# Run_1 #

Configurations:   
	Same as Run_0   

Key Note:   
	Run route_global after place_opt.    

Result:   
	route_opt finishes with 134 DRCs.   
	0 DRCs after 1 iteration of route_detail.   
	Setup time clean.   
	553 Hold violations with WHS of -0.09   


# Run_2 #

Configurations:   
	Same as Run_1   

Key Note:   
	Remove source dont_use_constraints in CTS.    

Result:   
	route_opt finishes with 30 DRCs.   
	0 DRCs after 1 iteration of route_detail.   
	Setup time clean.   
	411 Hold violations with WHS of -0.09   
