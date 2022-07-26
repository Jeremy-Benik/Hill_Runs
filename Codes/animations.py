#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jul 21 06:35:38 2022

@author: jeremybenik
"""

'''Info:
    plot 1:
        Pressure pertubation
        u & v (normal)
        compute difference between pressure from fire and no fire
        plot fire contoour
    plot 2:
        plot the wind speed differences (fire - no fire)
        plot fire contour
    plot 3:
        plot vertical velocities
        fire front
        w-wind (fire - no fire)
'''

# %% Importing necessary Libraries
import netCDF4 as nc
import matplotlib.pyplot as plt
import numpy as np
import wrf
import os
# %% Reading in the files
fire_atms_1 = nc.Dataset('/Users/jeremybenik/Research_files/hill_run/cheyenne_runs/run_1/wrfout_d01_0001-01-01_00:00:00')
fire_atms_0 = nc.Dataset('/Users/jeremybenik/Research_files/hill_run/cheyenne_runs/fire_atms_0/wrfout_d01_0001-01-01_00:00:00')
# %% Reading in variables

# u and v from fire_atms_1
print('Reading in u from fire_atms_1')
u_fire = wrf.getvar(fire_atms_1, "ua", None, units = "m/s")
print('Reading in v from fire_atms_1')
v_fire = wrf.getvar(fire_atms_1, "va", None, units = "m/s")
print('Reading in w from fire_atms_1')
w_fire = wrf.getvar(fire_atms_1, "wa", None, units = "m/s")

# u and v from fire_atms_0
print('Reading in u from fire_atms_0')
u_no_fire = wrf.getvar(fire_atms_0, "ua", None, units = "m/s") # The second height was picked as that is 5.19m in the ff2 file
print('Reading in v from fire_atms_0')
v_no_fire = wrf.getvar(fire_atms_0, "va", None, units = "m/s")
print('Reading in w from fire_atms_0')
w_no_fire = wrf.getvar(fire_atms_0, "wa", None, units = "m/s")

# Calculating fire winds
print('calculating fire winds')
print('U component of fire winds')
u_fire_wind = (u_fire - u_no_fire)
print('V component of fire winds')
v_fire_wind = (v_fire - v_no_fire)
print('W component of fire winds')
w_fire_wind = (w_fire - w_no_fire)
print('Fire Winds')
fire_wind = np.sqrt((u_fire_wind ** 2) + (v_fire_wind ** 2)) 

#REMOVE LATER
fire_wind *= 100 #Remove this later as this is just for testing

# Reading in Pressure using wrf python
print('Reading in Pressure')
print('Reading in pressure from fire_atms = 1')
p_fire = wrf.getvar(fire_atms_1, "pressure", None)
print('Reading in pressure from fire_atms = 0')
p_no_fire = wrf.getvar(fire_atms_0, "pressure", None)

# Calculating fire pressure for all heights
fire_p = p_fire - p_no_fire

# Reading in the fire spreads
print('Reading in fire spred')
fire = fire_atms_1.variables['AVG_FUEL_FRAC'][:, :, :]
# Getting pressure from both files
print('Getting pressure from both files')
pres_fire = fire_atms_1.variables['PSFC'][:, :, :]
pres_no_fire = fire_atms_0.variables['PSFC'][:, :, :]

fire_pres = pres_fire - pres_no_fire
# Reading in lat and lon
print('Reading in lat and lon from both files')
lat_fire = fire_atms_1.variables['XLAT'][0, :, :]
lon_fire = fire_atms_1.variables['XLONG'][0, :, :]

lat_no_fire = fire_atms_0.variables['XLAT'][0, :, :]
lon_no_fire = fire_atms_0.variables['XLONG'][0, :, :]

time = fire_atms_1.variables['XTIME'][:]
# %% Plot 1
ref = 100 #this is the refinement number. Change this for wind only. 
print('Creating the first plot')
fig = plt.figure(figsize = (10, 8), dpi = 200)
for i in range(-1, 180):
    im = plt.contourf(lon_fire, lat_fire, fire_p[i, 0, :, :], np.linspace(-1.5, 1.5, 50), cmap='seismic', shading='auto')
    plt.contour(lon_fire, lat_fire, fire[i], colors="black", linewidths=0.8, antialiased=True)
    cb = plt.colorbar(im)
    cb.set_label('Pressure (hPa)', fontsize = 12, fontweight = 'bold')
    plt.quiver(lon_fire[0, ::3], lat_fire[::3, 0], u_fire[i, 2, :, :][::3, ::3], v_fire[i, 2, :, :][::3, ::3], scale=None)
    plt.suptitle('Surface Pressure with Wind Vectors', fontsize = 12, fontweight = 'bold')
    plt.title('Time=%d' % i)
    plt.grid()
    plt.xlabel('Lon', fontsize = 12, fontweight = 'bold')
    plt.ylabel('Lat', fontsize = 12, fontweight = 'bold')
    if i == -1:
        plt.close(fig)
    else:
        output_path= os.path.join('/Volumes/Data/hill_run_data/hill_run/images/Plot_1', str(i) +'.png')
        plt.savefig(output_path,bbox_inches='tight',dpi=150)
        plt.show()
        plt.close(fig)

# %% Plot 2
ref = 100 #this is the refinement number. Change this for wind only. 
print('Creating the second plot')
fig, ax = plt.subplots(figsize = (10, 8), dpi = 200)
for i in range(-1, 180):
    im = plt.contourf(lon_fire, lat_fire, fire_wind[i, 2, :, :], np.linspace(0, 1300, 100), cmap=plt.cm.RdBu, shading='auto')
    plt.contour(lon_fire, lat_fire, fire[i], colors="black", linewidths=0.8, antialiased=True)
    cb = plt.colorbar(im)
    cb.set_label('Wind Speed (m/s)', fontsize = 12)
    plt.suptitle('Fire Winds', fontsize = 12, fontweight = 'bold')
    plt.title('Time=%d' % i)
    plt.grid()
    plt.xlabel('Lon', fontsize = 12, fontweight = 'bold')
    plt.ylabel('Lat', fontsize = 12, fontweight = 'bold')
    if i == -1:
        plt.close(fig)
    else:
        output_path= os.path.join('/Volumes/Data/hill_run_data/hill_run/images/Plot_2', str(i) +'.png')
        plt.savefig(output_path,bbox_inches='tight',dpi=150)
        plt.show()
        plt.close(fig)
# %% Plot 3
print('Creating the third plot')
fig, ax = plt.subplots(figsize = (10, 8), dpi = 200)
for i in range(-1, 180):
    im = plt.contourf(lon_fire, lat_fire, w_fire[i, 2, :, :], np.linspace(-15, 15, 100), cmap='seismic', shading='auto')
    plt.contour(lon_fire, lat_fire, fire[i], colors="black", linewidths=0.8, antialiased=True)
    cb = plt.colorbar(im)
    cb.set_label('W Wind Speed (m/s)', fontsize = 12)
    plt.suptitle('Vertical Velocities with Fire Wind Vectors', fontsize = 12, fontweight = 'bold')
    plt.grid()
    plt.title('Time=%d' % i)
    plt.xlabel('Lon', fontsize = 12, fontweight = 'bold')
    plt.ylabel('Lat', fontsize = 12, fontweight = 'bold')
    if i == -1:
        plt.close(fig)
    else:
        output_path= os.path.join('/Volumes/Data/hill_run_data/hill_run/images/Plot_3', str(i) +'.png')
        plt.savefig(output_path,bbox_inches='tight',dpi=150)
        plt.show()
        plt.close(fig)
















