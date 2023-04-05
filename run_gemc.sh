#!/bin/bash
# Run GEMC on the given input lund file using the RG-F summer gcard.
source vars.sh

gemc $GCARD $GEMC_OPTS -INPUT_GEN_FILE="lund, $1" -OUTPUT="evio, $2"
