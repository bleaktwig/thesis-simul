#!/bin/bash
counter=0
for file in lund/batches/*; do
    sbatch --mem=4096 run_gemc.sh "$PWD/$file" "$PWD/gemc_out/evio/torus-0.5_solenoid-0.745_999106_$counter.evio"
    ((counter++))
done;
