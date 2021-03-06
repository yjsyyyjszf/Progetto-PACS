#!/bin/bash
#PBS -S /bin/bash
#
# This is a bash script, thus every row is a bash command
# unless the first character of the row is a "#" :
# in this case the row is a bash comment.

mpirun -n 8 /usr/local_fin/bin/SU2_CFD my_flatplate.cfg > output_file.txt 2>&1
#mpirun -n 8 /usr/local_fin/bin/SU2_CFD my_flatplate_air.cfg > output_file.txt 2>&1
mpirun -n 8 /usr/local_fin/bin/SU2_SOL my_flatplate.cfg
#mpirun -n 8 /usr/local_fin/bin/SU2_SOL my_flatplate_air.cfg
#---------------------------------------------------------------------#
