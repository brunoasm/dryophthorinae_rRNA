#!/bin/bash
#SBATCH -J iqtree                               # Job name 
#SBATCH -o iqtree.%A.out                     # File to which stdout will be written
#SBATCH -N 1                                     # number of nodes
#SBATCH -n 1                                    # number of ranks
#SBATCH -c 2                                     # cores per rank
#SBATCH -t 0-01:00:00                             # Runtime in DD-HH:MM
#SBATCH --mem 1000                              # Memory for all cores in Mbytes (--mem-per-cpu for MPI jobs)
#SBATCH -p test                         # Partition general, serial_requeue, unrestricted, interact

module load Anaconda
source activate iqtree

#run concatenated analysis
iqtree -T $SLURM_CPUS_PER_TASK -s Dryophthorinae.phy -p partitions -m MFP+MERGE -B 1000 --prefix Dryophthorinae -o Euplatypus_hintzi,Euplatypus_parallelus  
