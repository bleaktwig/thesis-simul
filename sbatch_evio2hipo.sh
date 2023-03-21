#!/bin/bash
# Run evio2hipo on all the output of sbatch_gemc.
VOL="/volatile/clas12/benkel/simul"
WORK="/work/clas12/users/benkel/simul"
EVIO="$VOL/gemc_out/evio"
HIPO_IN="$VOL/gemc_out/hipo"

counter=0
for file in $EVIO/*; do
    sbatch --mem=2048 $WORK/evio2hipo.sh "$file" "$HIPO_IN/simul_999106_$counter.hipo"
    ((counter++))
done;
