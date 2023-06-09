#!/bin/bash
# Request a simulation sbatch job for every lund batch file in $BATCHES.
VOL="/volatile/clas12/benkel/simul"
WORK="/work/clas12/users/benkel/simul"
BATCHES="$VOL/lund/batches"
EVIO="$VOL/gemc_out/evio"

counter=0
for file in $BATCHES/*; do
    sbatch --mem=2048 $WORK/run_gemc.sh "$file" "$EVIO/simul_999106_$counter.evio"
    ((counter++))
done;
