#/bin/sh

# author : Sylvie Dagoret-Campagne
# creation date 2023-09-29


export DISPLAY=
  
## Activation

source /sdf/group/rubin/sw/tag/w_2023_35/loadLSST.bash
setup lsst_distrib -t w_2023_35
source ~/notebooks/.user_setups

export BUTLER_REPO="/sdf/group/rubin/repo/oga"

#butler query-dimension-records $BUTLER_REPO exposure --where "instrument='LATISS' AND exposure.day_obs=20230928 AND physical_filter='empty~holo4_003' AND exposure.observation_type='science' AND exposure.observation_reason='sitcom-1043' AND exposure.science_program='BLOCK-102'"

butler query-dimension-records $BUTLER_REPO exposure --where "instrument='LATISS' AND exposure.day_obs=20230928 AND physical_filter='empty~holo4_003' AND exposure.observation_type='science'"


