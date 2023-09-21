#! /bin/sh

# author : Sylvie Dagoret-Campagne 
#creation date : 2023/09/13
# update 2023/09/21


#Purpose : learn using BPS for the photometry  pipeline


source /cvmfs/sw.lsst.eu/linux-x86_64/lsst_distrib/w_2023_35/loadLSST.bash 
source /cvmfs/sw.lsst.eu/linux-x86_64/lsst_distrib/w_2023_35/loadLSST-ext.bash
setup lsst_distrib

#or
#6 septembre 2023 : use w_202335
source /sdf/group/rubin/sw/tag/w_2023_35/loadLSST.bash
setup lsst_distrib -t w_2023_35
source ~/notebooks/.user_setups




#pip install 'parsl[monitoring]' --user
#pip uninstall sqlalchemy


## launch the pipeline
#nohup bps submit survey_singleframe.yaml > bps_test.out &

## check the results

#In Dans /sdf/data/rubin/user/dagoret/AuxTel_imaging_survey


#./task_times.py  submit/u/dagoret/BPS_test/20230105T093632Z/


#nohup bps submit survey_singleframe_photimaging_20230117.yaml  > bps_survey_singleframe_photimaging_20230117.log &
