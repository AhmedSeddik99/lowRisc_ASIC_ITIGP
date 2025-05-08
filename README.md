# lowRisc_ASIC_ITIGP

RTL: contains the original RTL generated from FuesSoC as advised on the official Ibex repo. and the modified RTL to be suitable for ASIC tools.

Synthesis: contains different synthesis run. The name of each run starts with "syn_" and followed by its key differences.

Formality: contains the Formality check for different design snapshots. The name of each check starts with "fm_" followed by the snapshot name e.g. "syn_" or "dft_"



# State on May 8:

We figured out that the -ve increments in the timing reports was because a poor extrapolation was done because of huge transition time on some nets and we managed to know that the set_max_transition constraint wasn't written properly. So, syn_maxperf_hvt is the run we are going to use in PnR. It's setup clean (narrow slack around 0.03) synthesized in ss and ff .dbs. 
