#!/bin/bash
counter=0
for file in gemc_out/evio/*; do
    evio2hipo -o "$PWD/gemc_out/hipo/torus-0.5_solenoid-0.745_999106_$counter.hipo" $file
    ((counter++))
done;
