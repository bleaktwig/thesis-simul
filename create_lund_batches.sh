#!/bin/bash
# Create a set of batches for easier processing. Each batch contains 5 lund
#     files.
source vars.sh

batch_no=0
counter=0
for file in $DAT/*; do
    if [ $counter -eq 0 ]; then
        echo "working on batch $batch_no"
    fi;
    batch_filename="$BATCHES/batch_$batch_no.dat"
    if [ $counter -eq 0 ]; then
        touch $batch_filename
    fi;
    cat $file >> $batch_filename

    ((counter++))
    if [ $counter -eq 5 ]; then
        ((batch_no++))
        ((counter=0))
    fi;
done;
