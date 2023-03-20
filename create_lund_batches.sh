batch_no=0
counter=0
for file in lund/dat/*; do
    batch_filename="lund/batches/batch_$batch_no.dat"
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
