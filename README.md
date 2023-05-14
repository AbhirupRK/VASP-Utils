# VASP Utilities

I will add various scripts/codes to ease the usage of the DFT package VASP over time. 

## 1) vasp_autorelax.sh

This script aims to automate the structure-optimization process in `VASP`. Usually, `VASP` doesn't fully relax the given structure in one go. One has to replace `POSCAR` with `CONTCAR` after every run until the structure get fully relaxed. Sometimes it requires hundreds of repeat-runs to achieve convergence for a specified set of convergence criteria. This is where the small script may become very helpful. One just runs this script and forgets. The job will only stop after the structure has fully converged.

### Usage:

* If you directly run VASP and do not use any job scheduler, then just follow these steps:

1) Download the file:  `vasp_autorelax.sh`
2) Change its permission:  `chmod u+x vasp_autorelax.sh`
3) Open and edit the script in any text editor:  Set the PATH of `vasp` executable and number of `MPI cores`
4) Run the script from your working directory:  `./vasp_autorelax.sh`

* If you use any Job Scheduler (Slurm/SGE/PBS):

1) Download the file:  `vasp_autorelax.sh`
2) **Copy its contents to your job script** (Don't forget to remove any other lines that run VASP)
3) Set the PATH of `vasp` executable and number of `MPI cores`
4) Submit the job like you do usually

