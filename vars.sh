#!/bin/bash
# Contain constants: locations, files,
#     opts, and hipo bank list.

# --+ LOCATIONS +----------------------
WORK="/work/clas12/users/benkel/simul"
VOL="/volatile/clas12/benkel/simul"

DAT="$VOL/lund/dat"
BATCHES="$VOL/lund/batches"
GEMC_OUT="$VOL/gemc_out"
HIPO_OUT="$VOL/hipo_out/files"
HIPO_FILTERED="$VOL/hipo_out/filtered"

# --+ FILES +--------------------------
GCARD="$GEMC/../config/rgf_spring2020.gcard"
YAML="$PWD/yaml/rge-fmtacc-spring2020.yaml"

# --+ HIPO BANKS +---------------------
BANKLIST="REC::Particle"
BANKLIST=$BANKLIST",REC::Track"
BANKLIST=$BANKLIST",REC::Calorimeter"
BANKLIST=$BANKLIST",REC::Cherenkov"
BANKLIST=$BANKLIST",REC::Scintillator"
BANKLIST=$BANKLIST",FMT::Tracks"
