#!/bin/sh

export DISPLAY=

## Activation

source /sdf/group/rubin/sw/tag/w_2023_35/loadLSST.bash
setup lsst_distrib -t w_2023_35
source ~/notebooks/.user_setups

export SLURM_ACCOUNT=rubin
export SALLOC_ACCOUNT=$SLURM_ACCOUNT
export SBATCH_ACCOUNT=$SLURM_ACCOUNT
