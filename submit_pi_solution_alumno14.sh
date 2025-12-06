#!/bin/bash
#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno14/lab-python
#SBATCH -J pi-montecarlo
#SBATCH --cpus-per-task=1
#SBATCH --output=pi-ampere-%u-%j.out
#SBATCH --mail-type=NONE

module load anaconda/2025.06

ipython pi-solution-alumno14.ipynb

module unload anaconda/2025.06
