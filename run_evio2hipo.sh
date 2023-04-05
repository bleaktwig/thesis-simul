#!/bin/bash
# Run evio2hipo on all the output of sbatch_gemc.
source vars.sh

counter=0
for in_filename in $EVIO/*; do
    out_filename="$HIPO_IN/simul_999106_$counter.hipo"

    evio2hipo -o $out_filename $in_filename
    ((counter++))
done;
