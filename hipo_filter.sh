#!/bin/bash
# Call hipo-utils -filter on $1, outputing $2.
BANKLIST="REC::Particle,REC::Track,REC::Calorimeter,REC::Cherenkov,REC::Scintillator,FMT::Tracks"

hipo-utils -filter -b $BANKLIST -o $2 $1
