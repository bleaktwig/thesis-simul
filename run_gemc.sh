#!/bin/bash
gemc $PWD/gcard/rgf_spring2020_torus-0.5.gcard -USE_GUI=0 \
-INPUT_GEN_FILE="lund, $1" \
-RANDOMIZE_LUND_VZ="-3.0*cm, 27.0*cm, reset" \
-FASTMCMODE \
-OUTPUT="evio, $2"
