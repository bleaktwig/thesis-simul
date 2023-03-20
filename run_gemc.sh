#!/bin/bash
# Run GEMC on the given input lund file using the RG-F summer gcard.
WORK="/work/clas12/users/benkel/simul"
GCARD="$WORK/gcard/rgf_summer2020.gcard"

gemc $GCARD -USE_GUI=0 -INPUT_GEN_FILE="lund, $1" -FASTMCMODE -OUTPUT="evio, $2"
# -RANDOMIZE_LUND_VZ="-3.0*cm, 27.0*cm, reset"
