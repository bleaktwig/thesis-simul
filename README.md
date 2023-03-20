# Thesis - Simul
you read me!

## How to
1. Run `create_lund_batches.sh` to pack lund files into 5-file batches for faster processing.
2. Run `sbatch_gemc.sh` to get a ton of GEMC jobs to the farm and start pumping those simulations.
3. Run `sbatch_evio2hipo.sh` to convert generated evio files to hipo.
4. Run `sbatch_recon.sh` to get a ton of reconstruction jobs on the farm.
5. Run `sbatch_hipofilter.sh` to get filtered hipo files from reconstruction output.
6. Run `hipo-utils -merge` on all filtered files to get one gargantuan file containing all output.
7. Use your gargantuan simulation file for happy analysis!

At any point between steps, you can check the status of your jobs at [scicomp](https://scicomp.jlab.org/scicomp/index.html).

## Constants
**Locations.**
```
WORK          = "/work/clas12/users/benkel/simul"
VOL           = "/volatile/clas12/benkel/simul"
DAT           = "$VOL/lund/dat"
BATCHES       = "$VOL/lund/batches"
EVIO          = "$VOL/gemc_out/evio"
HIPO_IN       = "$VOL/gemc_out/hipo"
HIPO_OUT      = "$VOL/hipo_out/files"
HIPO_FILTERED = "$VOL/hipo_out/filtered"
```

**Files.**
```
GCARD = "$WORK/gcard/rgf_summer2020.gcard"
YAML  = "$WORK/yaml/rgf_mc.yaml"
```

**Bank list.**
```
BANKLIST =
    REC::Particle
    REC::Track
    REC::Calorimeter
    REC::Cherenkov
    REC::Scintillator
    FMT::Tracks
```
