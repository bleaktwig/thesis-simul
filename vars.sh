#!/bin/bash
# Contain constants: locations, files,
#     and hipo bank list.

# --+ LOCATIONS +----------------------
WORK="/work/clas12/users/benkel/simul"
VOL="/volatile/clas12/benkel/simul"

DAT="$VOL/lund/dat"
BATCHES="$VOL/lund/batches"
EVIO="$VOL/gemc_out/evio"
HIPO_IN="$VOL/gemc_out/hipo"
HIPO_OUT="$VOL/hipo_out/files"
HIPO_FILTERED="$VOL/hipo_out/filtered"

# --+ FILES +--------------------------
GCARD="$WORK/gcard/rgf_summer2020.gcard"
YAML="$WORK/yaml/rgf_mc.yaml"

# --+ HIPO BANKS +---------------------
BANKLIST=""
BANKLIST=$BANKLIST",REC::Particle"
BANKLIST=$BANKLIST",REC::Track"
BANKLIST=$BANKLIST",REC::Calorimeter"
BANKLIST=$BANKLIST",REC::Cherenkov"
BANKLIST=$BANKLIST",REC::Scintillator"
BANKLIST=$BANKLIST",FMT::Tracks"
