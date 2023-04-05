# Thesis - Simul
you read me!

## How to
1. Run `create_lund_batches.sh` to pack lund files into 5-file batches for faster processing.
2. Run `sbatch_gemc.sh` to get 2,000 GEMC jobs to the farm and start pumping those simulations.
3. Run `run_evio2hipo.sh` to convert generated evio files to hipo.
4. Run `sbatch_recon.sh` to get a ton of reconstruction jobs on the farm.
5. Run `run_hipofilter.sh` to get filtered hipo files from reconstruction output.
6. Run `hipo-utils -merge` on all filtered files to get one gargantuan file containing all output.
7. Use your gargantuan simulation file for (un)happy analysis!

**Notes.**
* At any point between steps, you can check the status of your jobs at [scicomp](https://scicomp.jlab.org/scicomp/index.html).
* All steps but the first and the last rely on sbatch jobs to speed up processing.
* All constants (locations, files, and hipo banks) are in the vars.sh file.
