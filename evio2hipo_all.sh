#!/bin/bash
# Run evio2hipo on all evio files.
VOL="/volatile/clas12/benkel/simul"
EVIO="$VOL/gemc_out/evio"
HIPO_IN="$VOL/gemc_out/hipo"

counter=0
for file in $EVIO/*; do
    evio2hipo -o "$HIPO_IN/simul_999106_$counter.hipo" $file
    ((counter++))
done;
