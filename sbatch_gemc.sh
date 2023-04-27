#!/bin/bash
# Request a simulation sbatch job for every lund batch file in $BATCHES.
source vars.sh

counter=0
for in_filename in $BATCHES/*; do
    out_filename="$GEMC_OUT/simul_999106_$counter.hipo"

    sbatch --mem=2048 $WORK/run_gemc.sh $in_filename $out_filename
    ((counter++))
    break
done;
