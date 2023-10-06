# README.md


- author : Sylvie Dagoret-Campagne
- creation date 2023-09-28
- last update 2023/10/06

export DISPLAY=
  
## Activation

source /sdf/group/rubin/sw/tag/w_2023_35/loadLSST.bash
setup lsst_distrib -t w_2023_35
source ~/notebooks/.user_setups

  

  

# Installation

git clone git@github.com:lsst/atmospec.git
cd atmospec
git pull
git branch --all
setup -j -r .
scons opt=3 -j 8

## September 26th 2023

# empty~holo4_003, rebin2
nohup bps submit survey_singleframe_v154.yaml > bps_manyspectra_v154.out &

## September 27th 2023
# empty~holo4_003, rebin2
nohup bps submit survey_singleframe_v156.yaml > bps_manyspectra_v156.out &

## September 28th 2023
# empty~holo4_003, rebin2
nohup bps submit survey_singleframe_v158.yaml > bps_manyspectra_v158.out &




# now with rebin1
nohup bps submit survey_singleframe_v159.yaml > bps_manyspectra_v159.out &
nohup bps submit survey_singleframe_v157.yaml > bps_manyspectra_v157.out &


# rebin1


source /sdf/group/rubin/sw/tag/w_2023_40/loadLSST.bash
setup lsst_distrib -t w_2023_40
source ~/notebooks/.user_setups

nohup bps submit survey_singleframe_v161.yaml > bps_manyspectra_v161.out &


