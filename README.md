# Introduction
This repository contains the essential data and code from Marc Thomson's Master's Thesis at the University of Colorado Boulder, Department of Applied Mathematics. The idea behind the thesis is to reduce the number of points necesary to compute a spectrum from a molecular dynamics simulation using knowledge of the structure of the spectrum. A pdf copy of the thesis will be available soon at: https://scholar.colorado.edu/appm_gradetds/.

The following two sections will describe the contents of the repository with brief descriptions of how to use the data and codes.

# Data

Datasets contained here were computed using LAMMPS example scripts for methanol and sodium chloride.

Vel_data_NaCl.mat contains the x,y,z velocities for all atoms in the sodium chloride system as a function of time. Time is in fs, and velocity is in Angstroms/picosecond.

Vel_data_MetOH.mat contains the x,y,z velocities for all atoms in the methanol system as a function of time. Time is in fs, and velocity is in  Angstroms/femtosecond.

Vacf_total_NaCl_n.mat contains the nth part of the computed velocity autocorrelation function for the sodium chloride system. The data is partitioned to be allowed on github. To combine the data, run '[t,Vx,Vy,Vz] = loadNaClVel()' in the proper directory. Time is in fs.

Vacf_total_MetOH_n.mat contains the nth part of the computed velocity autocorrelation function for the methanol system. The data is partitioned to be allowed on github. To combine the data, run '[t,Vx,Vy,Vz] = loadMetOHVel()' in the proper directory. Time is in fs.

# Code

CalculateVACF_n calculates the velocity autocorrelation function using supplied velocity and time data. 

The remainder hasn't been added yet. Check back later!
