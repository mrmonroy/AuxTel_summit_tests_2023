#/bin/sh

# author : Sylvie Dagoret-Campagne
# creation date 2023-09-14


export DISPLAY=
  
## Activation

source /sdf/group/rubin/sw/tag/w_2023_35/loadLSST.bash
setup lsst_distrib -t w_2023_35
source ~/notebooks/.user_setups


pipetask run -b /sdf/group/rubin/repo/oga -p /sdf/home/d/dagoret/repos/repos_w_2023_35/atmospec/pipelines/processStar_rotatedisp.yaml -i LATISS/raw/all,refcats,LATISS/calib -o u/dagoret/spectro/emptyholo4001noflat/runs_20230913 -d "exposure.day_obs=20230913 and instrument='LATISS' and exposure.science_program='SITCOM-1001' and exposure.observation_type='science' and physical_filter='empty~holo4_001'" 
