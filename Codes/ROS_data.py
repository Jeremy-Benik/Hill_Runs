#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jul  6 11:13:14 2022

@author: jeremybenik
"""
# The goal of this code is to find the timestamp where the fire_area reaches a certain point on the plot, 
# With this, I can then find the corresponding wind speed and tanphi and plug that into the matlab code
# %% Importing necessary libraries
import netCDF4 as nc
import numpy as np
import glob
import wrf
# %% Reading in the file (just one for now) and variables
df = nc.Dataset('/Users/jeremybenik/Research_files/hill_run/cheyenne_runs/run_21/wrfout_d01_0001-01-01_00:00:00')

# Reading in fire_area
fire_area = df.variables['FIRE_AREA'][:, :, :]

# reading in terrain
tanphi = df.variables['ZSF'][:, :, :]

# Reading in U, V and T so they can be input into the model
print('Reading in U from the wrfout file')
u = wrf.getvar(df, "ua", None, units = "m/s")
print('Reading in V from the wrfout file')
v = wrf.getvar(df, "va", None, units = "m/s")
t = df.variables['T2'][:, :, :]# %% Assigning locations on the hill

# Sub grid

# Centre of the hill
south_north_centre = 215
west_east_centre = 191

# Top right corner of the hill
south_north_NE = 244
west_east_NE = 217

# Lower left corner of the hill
south_north_SW = 188
west_east_SW = 169


# Regular grid
# Centre of the hill
south_north_centre_normal = int(south_north_centre / 10)
west_east_centre_normal = int(west_east_centre / 10)

# Top right part of the hill
south_north_NE_normal = int(south_north_NE / 10)
west_east_NE_normal = int(west_east_NE / 10)

# Bottom left part of the hill
south_north_SW_normal = int(south_north_SW / 10)
west_east_SW_normal = int(west_east_SW / 10)

# %% Figuring out when the fire reached the 

zsf_val_centre = tanphi[:, south_north_centre, west_east_centre]
zsf_val_NE = tanphi[:, south_north_NE, west_east_NE]
zsf_val_SW = tanphi[:, south_north_SW, west_east_SW]

# Centre of the hill
time_center = np.where(fire_area[:, south_north_centre, west_east_centre] > 0)[0][0]
u_centre = u[time_center, 0, south_north_centre_normal, west_east_centre_normal]
v_centre = v[time_center, 0, south_north_centre_normal, west_east_centre_normal]
ws_centre = np.sqrt((u ** 2) + (v ** 2))
t_centre = t[time_center, south_north_centre_normal, west_east_centre_normal]


#NE part of the hill
time_NE = np.where(fire_area[:, south_north_NE, west_east_NE] > 0)[0][0]
u_NE = u[time_NE, 0, south_north_NE_normal, west_east_NE_normal]
v_NE = v[time_NE, 0, south_north_NE_normal, west_east_NE_normal]
ws_NE = np.sqrt((u ** 2) + (v ** 2))
t_NE = t[time_NE, south_north_NE_normal, west_east_NE_normal]

# SW part of the hill
time_SW = np.where(fire_area[:, south_north_SW, west_east_SW] > 0)[0][0]
u_SW = u[time_SW, 0, south_north_SW_normal, west_east_SW_normal]
v_SW = v[time_SW, 0, south_north_SW_normal, west_east_SW_normal]
ws_SW = np.sqrt((u ** 2) + (v ** 2))
t_SW = t[time_SW, south_north_SW_normal, west_east_SW_normal]

# DZDXF and DZDYF
x = df.variables['DZDXF'][:, :, :]
y = df.variables['DZDYF'][:, :, :]

tanphi = np.sqrt((x ** 2) + (y ** 2))

# %% 
print('\n')
print('Center')
#print('the tanphi is', tanphi[time_center, south_north_centre, west_east_centre])
print('the Wind Speed is', ws_centre[time_center, 0, south_north_centre_normal, west_east_centre_normal])
print('------------------------------------------\n')

print('NE')
#print('the tanphi is', tanphi[time_NE, south_north_NE, west_east_NE])
print('the Wind Speed is', ws_NE[time_NE, 0, south_north_NE_normal, west_east_NE_normal])
print('------------------------------------------\n')

print('SW')
#print('the tanphi is', tanphi[time_SW, south_north_SW, west_east_SW])
print('the Wind Speed is', ws_SW[time_SW, 0, south_north_SW_normal, west_east_SW_normal])
print('------------------------------------------\n')



