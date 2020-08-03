#!/bin/bash
#SBATCH -o mrbayes.%A.out                     # File to which stdout will be written
#SBATCH -n 8                                    # number of ranks
#SBATCH -c 1                                    #number of threads
#SBATCH -t 7-00:00:00                             # Runtime in DD-HH:MM
#SBATCH --mem-per-cpu 1000                            # Memory for all cores in Mbytes (--mem-per-cpu for MPI jobs)
#SBATCH -p shared                     # Partition general, serial_requeue, unrestricted, interact


module purge
module load gcc/7.1.0-fasrc01 openmpi/2.1.0-fasrc02 mrbayes/3.2.6-fasrc02

export PATH
export LD_LIBRARY_PATH

srun -n $SLURM_NTASKS -c $SLURM_CPUS_PER_TASK --mpi=pmi2 --export=ALL mb *.nex
