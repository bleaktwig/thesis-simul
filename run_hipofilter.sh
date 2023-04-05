#!/bin/bash
# Run hipo-utils -filter on all the output of sbatch_recon.
source vars.sh

counter=0
for in_filename in $HIPO_OUT/*; do
    out_filename="$HIPO_FILTERED/simul_999106_$counter.hipo"

    hipo-utils -filter -b $BANKLIST -o $out_filename $in_filename
    ((counter++))
done;
