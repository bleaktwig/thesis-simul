#!/bin/bash
# Run reconstruction on all files converted by evio2hipo_all.
source vars.sh

counter=0
for in_filename in $HIPO_IN/*; do
    out_filename="$HIPO_OUT/simul_999106_$counter.hipo"

    sbatch --mem=2048 $WORK/run_recon.sh $in_filename $out_filename
    ((counter++))
done;
