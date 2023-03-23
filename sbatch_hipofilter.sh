#!/bin/bash
# Run hipo-utils -filter on all the output of sbatch_recon.
VOL="/volatile/clas12/benkel/simul"
WORK="/work/clas12/users/benkel/simul"
HIPO_OUT="$VOL/hipo_out/files"
HIPO_FILTERED="$VOL/hipo_out/filtered"

counter=0
for file in $HIPO_OUT/*; do
    sbatch --mem=2048 $WORK/hipo_filter.sh "$file" "$HIPO_FILTERED/simul_999106_$counter.hipo"
    ((counter++))
done;
