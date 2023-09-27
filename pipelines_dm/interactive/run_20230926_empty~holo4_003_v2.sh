#/bin/sh

# author : Sylvie Dagoret-Campagne
# creation date 2023-09-27


export DISPLAY=
  
## Activation

source /sdf/group/rubin/sw/tag/w_2023_35/loadLSST.bash
setup lsst_distrib -t w_2023_35
source ~/notebooks/.user_setups

export BUTLER_REPO="/sdf/group/rubin/repo/oga"

butler query-dimension-records $BUTLER_REPO exposure --where "instrument='LATISS' AND exposure.day_obs=20230926 AND physical_filter='empty~holo4_003' AND exposure.observation_type='science' AND exposure.observation_reason='sitcom-1043' AND exposure.science_program='BLOCK-102'"


#pipetask run -b /sdf/group/rubin/repo/oga -p /sdf/home/d/dagoret/repos/repos_w_2023_35/atmospec/pipelines/processStar.yaml -i LATISS/raw/all,refcats,LATISS/calib -o u/dagoret/spectro/emptyholo4003noflat_block102/runs_20230926 -d "exposure.day_obs=20230926 and instrument='LATISS' and exposure.science_program='BLOCK-102' and exposure.observation_type='science' and exposure.observation_reason='1043' and physical_filter='empty~holo4_003'"

