################################################
#!/bin/bash
#PBS -l nodes=4
#PBS -l walltime=02:00:00
#PBS -q DEDq
PBS -e $1
PBS -o $2
#PBS -m bae
## Comma separated list of email address and mobile numbers
#PBS -M ankmahato@gmail.com,9532094890
#PBS -r n
#PBS -V
##PBS -A IHPC-PR # Account to be charged/debited
export I_MPI_JOB_CONTEXT=$PBS_JOBID
#echo PBS JOB id is $PBS_JOBID
#echo PBS_NODEFILE is $PBS_NODEFILE
#echo PBS_QUEUE is $PBS_QUEUE
NPROCS=`wc -l < $PBS_NODEFILE`
#echo NPROCS is $NPROCS

cd $PBS_O_WORKDIR
time /opt/intel/mpi/bin64/mpirun --totalnum=$NPROCS --file=$PBS_NODEFILE \
--rsh=/usr/bin/ssh -1 --ordered -l -machinefile $PBS_NODEFILE \
#-np $NPROCS $HOME/a.out
-np $NPROCS $3
################################################

