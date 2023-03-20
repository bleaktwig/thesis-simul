#!/bin/bash
# Run reconstruction on $1, save it on $2, based on $YAML.
WORK="/work/clas12/users/benkel/simul"
YAML="$WORK/yaml/rgf_mc.yaml"

recon-util -i $1 -o $2 -y $YAML
