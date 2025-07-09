# Structure of lowRisc_ASIC_ITIGP #

- RTL: contains the original RTL generated from FuesSoC as advised on the official Ibex repo. and the modified RTL to be suitable for ASIC tools.

- Synthesis: contains different synthesis run. The name of each run starts with "syn_" and followed by its key differences.

- Formality: contains the Formality check for different design snapshots. The name of each check starts with "fm_" followed by the snapshot name e.g. "syn_" or "dft_"

- PnR: as the flow is an iterative process and it may includes many changes either for better results or better understanding. So, we push the meaningful runs we have with detailed readme explaining the key differences between them.


# State on May 8 #

- We figured out that the -ve increments in the timing reports was because a poor extrapolation was done because of huge transition time on some nets and we managed to know that the set_max_transition constraint wasn't written properly. So, syn_maxperf_hvt is the run we are going to use in PnR. It's setup clean (narrow slack around 0.03) synthesized in ss and ff .dbs. 

- ibex_top.sv had ports of type struct which acted as 2D ports. It was synthesized fine but once we proceed with PnR and run setup_script.tcl it fails at the command read_sdc because it included the boundary constratint set_load that wasn't able to deal with 2D ports. So we created ibex_wrapper.sv just to flatten these ports.


# State on May 15 #

- The NDM including HVT .dbs wasn't created properly and we had to proceed with the PDK NDM which was based on RVT so, synthesis was rerun using RVT .dbs instead and it was setup clean (wider slack around 2.7).

- Floorplan was smooth. We placed the IO pins according to their function. For example, all pins talking to the memory are on one side.

- In powerplannig, we created the ring and mesh but struggeled with connecting the mesh to the rails because we used the command create_pg_vias directly which resulted in many DRCs. We were advised to use the stubs technique instead.


# State on May 22 #

- We managed to implement the stubs using 2 methods. Method #1 is using the patterns and strategies to spread vias properly and in a controllable way and we made it looks like stairs to avoid stacked vias. Method #2 is assisted by the initially created vias followed by changes in their dimension to stack properly without violating DRCs.

- Power connectivity and DRC checks were clean.


# State on May 29 #

- We used the provided script to generate the NDM properly and from now on, the NDM has HVT corners.

- We run placement smoothly but we had many DRCs in CTS (shorts, spacing) and surprisingly, the cells that were set as dont_use did exist in the design.

- We were advised to source the dont_use constraints again and to allign the routing tracks with the cell pins.


# State on June 12 #

- We sourced the dont_use constraints again and alligned the tracks with the cell pins by adjusting the offsets. So, CTS is done with no legality or routing errors.

- When we first started routing, we had thousands of DRCs we tried to address them by changing in floorplan, powerplan, placement, and CTS as well. 
	The changes were mainly:
		Floorplan >> increase core area.
		Powerplan >> increase the ring region offset from the core (increase the core to die margin).
		Placement >> increase cell padding and edit options such as congestion_driven_max_util, max_density, and target_routing_density and run route_global at the end.
		CTS >> use NDR with the default width and spacing multipliers (1x) while setting the option enable_congestion_aware_ndr_promotion to true.

- DRCs were addressed and in tracing back what really solved them, we found that some of the above changes had a small impact on the DRCs except using route_global after placement and before CTS as it decreased the number of DRCs significantly.

- Finally, DRCs are managable now as route_opt finishes with few DRCs (from 1 to 10 in case of large core area ~200 and in from 100 to 200 in case of reasonable core area ~140) and sometimes no DRCs at all depending on what configurations are used but when these few DRCs exist a couple of route_detail iterations solve them easily.


# State on June 19 #

- WIP


# State on June 24 #

- WIP


# State on June 26 #

- WIP

# State on July 9 #

- Final_1 >> Complete run (clock of 6.25 ns as constrained at the beginning)
- Final_2 >> Complete run (clock of 5 ns as further optimization in performance achieving 200 MHz)

