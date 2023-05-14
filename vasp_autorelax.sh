#!/bin/bash

## Enter the correct PATH of your vasp executable here:
vasp=/path/to/vasp

## Number of MPI cores to use:
NSLOTS=8

## Relaxing structure
while [[ `grep "reached required accuracy" OUTCAR` == "" ]]; do
  mpirun -np $NSLOTS $vasp
  mv -f POSCAR POSCAR.old && cp CONTCAR POSCAR
  sleep 60
done
