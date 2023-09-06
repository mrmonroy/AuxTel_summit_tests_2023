# AuxTel_summit_tests_2023
This repository contains notebooks and scripts for the tests conducted on AuxTel on September 2023 

## description of subpackages

- **runspectractor_standalone** : run spectractor in standalone 
- **AuxtelStarAlt** : Object trajectory in sky for follow targets
- **special_flats_for_spectroscopy** :

## Installation of softwares at USDF

### initialisation of DM

- 6 september 2023

- edit `README.md` in `/sdf/home/d/dagoret`

```bash
source /sdf/group/rubin/sw/tag/w_2023_35/loadLSST.bash
setup lsst_distrib -t w_2023_35
```
	# 6th septembre 2023 : use w_202335
	source /sdf/group/rubin/sw/tag/w_2023_35/loadLSST.bash
	setup lsst_distrib -t w_2023_35
	source ~/notebooks/.user_setups

#### creation of repos

```bash
cd repos/
mkdir repos_w_2023_35
```

#### edit .usersetup
 
```bash
 cd notebooks/
 vi .user_setups 
 ```

             #. 6 september 2023 for w_2023_35
             setup -k -r ~/repos/repos_w_2023_35/atmospec
            setup -k -r ~/repos/repos_w_2023_35/Spectractor
            setup -k -r ~/repos/repos_w_2023_35/analysis_tools



#### Clone des packages 


##### atmospec

```bash
git clone git@github.com:lsst/atmospec.git
cd atmospec/
setup -j -r .
scons opt=3 -j 8
```


Puis copier le fichier yaml pour rebin1

```bash
/sdf/home/d/dagoret/repos/repos_w_2023_35/atmospec/pipelines>cp -r ../../../repos_w_2023_27/atmospec/pipelines/rebin1 .
```

##### Spectractor

```bash
# git clone https://github.com/lsst/Spectractor
git clone git@github.com:LSSTDESC/Spectractor.git
cd Spectractor/
git branch --all
# git checkout master
git checkout 134-auxtelruns202309
setup -j -r .
```




### Check all installed pacakges

`eups list -s`

```bash
(lsst-scipipe-7.0.1) /sdf/home/d/dagoret/repos/repos_w_2023_35/analysis_tools>eups list -s | grep LOCAL
analysis_tools        **LOCAL**:/sdf/home/d/dagoret/repos/repos_w_2023_35/analysis_tools setup
atmospec              **LOCAL**:/sdf/home/d/dagoret/repos/repos_w_2023_35/atmospec setup
eups                  **LOCAL**:/sdf/group/rubin/sw/conda/envs/lsst-scipipe-7.0.1/eups setup
spectractor           **LOCAL**:/sdf/home/d/dagoret/repos/repos_w_2023_35/Spectractor setup
```


### Test de Spectractor in Standalone


20230817 143
20230817 144
20230817 147
20230817 148
20230817 166
20230817 167
20230817 170
20230817 171
20230817 180


 

```bash
pipetask run -b /sdf/group/rubin/repo/oga -p /sdf/home/d/dagoret/repos/repos_w_2023_35/atmospec/pipelines/processStar.yaml -i LATISS/raw/all,refcats,LATISS/calib -o u/dagoret/spectro/noflat/test_september23_1 -d "exposure.day_obs=20230817 and exposure.seq_num=143 and instrument='LATISS'" 
```

```bash
pipetask run -b /sdf/group/rubin/repo/oga -p /sdf/home/d/dagoret/repos/repos_w_2023_35/atmospec/pipelines/processStar.yaml -i LATISS/raw/all,refcats,LATISS/calib -o u/dagoret/spectro/noflat/test_september23_2 -d "exposure.day_obs=20230817 and exposure.seq_num in (144,180) and instrument='LATISS'" --register-dataset-types -j 8
```




