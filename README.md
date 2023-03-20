# Thesis - Simul
you read me!

## How to
1. Run `create_lund_batches.sh` to pack lund files into 5-file batches for faster processing.
2. Run `sbatch_gemc.sh` to get a ton of GEMC jobs to the farm and start pumping those simulations.
3. Run `evio2hipo_all.sh` to convert evio files to hipo.
4. Run `sbatch_recon.sh` to get a ton of reconstruction jobs on the farm.
5. Run `hipo-utils -merge` on all files to get one gargantuan file containing all output.

**Things that should be constants but I'm too lazy to make a constants.sh file:**
* `VOL="/volatile/clas12/benkel/simul"`
* `DAT="$VOL/lund/dat"`
* `BATCHES="$VOL/lund/batches"`
* `EVIO="$VOL/gemc_out/evio"`
* `HIPO_IN="$VOL/gemc_out/hipo"`
* `HIPO_OUT="$VOL/hipo_out/files"`
* `WORK="/work/clas12/users/benkel/simul"`
* `GCARD="$WORK/gcard/rgf_summer2020.gcard"`
