#!/bin/bash
# Run GEMC on the given input lund file using the RG-F summer gcard.
source vars.sh

gemc $GCARD -USE_GUI=0 -INPUT_GEN_FILE="lund, $1" -OUTPUT="hipo, $2" -RANDOMIZE_LUND_VZ="-5.0*cm, 25.0*cm, reset"
