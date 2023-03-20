#!/bin/bash
# Run reconstruction on all files converted by evio2hipo_all.
VOL="/volatile/clas12/benkel/simul"
WORK="/work/clas12/users/benkel/simul"
HIPO_IN="$VOL/gemc_out/hipo"
HIPO_OUT="$VOL/hipo_out/files"

counter=0
for file in $HIPO_IN/*; do
    sbatch --mem=2048 $WORK/run_recon.sh "$file" "$HIPO_OUT/simul_999106_$counter.hipo"
    ((counter++))
done;
