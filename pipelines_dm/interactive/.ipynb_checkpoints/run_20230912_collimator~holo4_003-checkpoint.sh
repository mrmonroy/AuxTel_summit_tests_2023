#/bin/sh

# author : Sylvie Dagoret-Campagne
# creation date 2023-09-15


export DISPLAY=
  
## Activation

source /sdf/group/rubin/sw/tag/w_2023_35/loadLSST.bash
setup lsst_distrib -t w_2023_35
source ~/notebooks/.user_setups

export BUTLER_REPO="/sdf/group/rubin/repo/oga"


DATE="20230912"
filterdisperser= 'collimator~holo4_003'
filterdispersercoll='collimatorholo4003noflat'
pipelinefile='processStar.yaml'

butler query-dimension-records $BUTLER_REPO exposure --where "instrument='LATISS' AND exposure.day_obs=${DATE} AND exposure.science_program='SITCOM-1001' AND physical_filter=${filterdisperser} AND exposure.observation_type='science'"

cmd = "pipetask run -b ${BUTLER_REPO} -p /sdf/home/d/dagoret/repos/repos_w_2023_35/atmospec/pipelines/${pipelinefile} -i LATISS/raw/all,refcats,LATISS/calib -o u/dagoret/spectro/${filterdispersercoll}/runs_${DATE} -d \"exposure.day_obs=${DATE} and instrument='LATISS' and exposure.science_program='SITCOM-1001' and exposure.observation_type='science' and physical_filter=${filterdisperser}\""

echo $cmd
