#!/bin/bash
# Request a simulation sbatch job for every lund batch file in $BATCHES.
source vars.sh

counter=0
for in_filename in $BATCHES/*; do
    out_filename="$EVIO/simul_999106_$counter.evio"

    sbatch --mem=2048 $WORK/run_gemc.sh $infilename $out_filename
    ((counter++))
done;
