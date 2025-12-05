#!/bin/bash
#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno14/lab-python
#SBATCH -J lab4
#SBATCH --cpus-per-task=1
#SBATCH --output=python-ampere-%u-%j.out
#SBATCH --mail-type=NONE

module load anaconda/2025.06

echo "=== Ejecución con 10^7 elementos ==="
ipython reduc-operation-alumno14_3.3.C.ipynb 10000000

echo
echo "=== Ejecución con 10^8 elementos ==="
ipython reduc-operation-alumno14_3.3.C.ipynb 100000000

module unload anaconda/2025.06
