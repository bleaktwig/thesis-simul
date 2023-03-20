#!/bin/bash
counter=0
for file in gemc_out/hipo/*; do
    sbatch --mem=4096 run_recon.sh "$PWD/$file" "$PWD/hipo_out/files/torus-0.5_solenoid-0.745_999106_$counter.hipo"
    ((counter++))
done;
