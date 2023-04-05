#!/bin/bash
# Run reconstruction on $1, save it on $2, based on $YAML.
source vars.sh

recon-util -i $1 -o $2 -y $YAML
