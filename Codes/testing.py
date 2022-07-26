#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jul 18 15:27:33 2022

@author: jeremybenik
"""

# %% Importing necessary libraries
print("Importing Libraries")
import netCDF4 as nc
import wrf
import matplotlib.pyplot as plt
# from math import sqrt
import numpy as np
from IPython import display
import matplotlib.animation as animation
import cartopy.crs as ccrs
import timeit
# %% Reading in the file
df = nc.Dataset('/Volumes/Data/hill_run_data/hill_run/cheyenne_runs/run_1/wrfout_d01_0001-01-01_00:00:00')
# %% Calling in variables
print('Reading in surface pressure')
psfc = df.variables['PSFC'][:, :, :] # Not all three colons necessary
print('new')
pres = wrf.getvar(df, 'pressure')
print('Reading in wind speed')
#ws = wrf.getvar(df, "wspd_wdir", None, units = "m/s")


print('Reading in xlat and xlong')
lat = df.variables['XLAT'][0]
lon = df.variables['XLONG'][0]
time = df.variables['XTIME'][:]

# %%
m,n = df.variables['XLONG'].shape[1:]
fm,fn = df.variables['FXLONG'].shape[1:]
ifm=int(fm/(m+1)/2)
ifn=int(fn/(n+1)/2)
ffm=int(fm-1.5*fm/(m+1))
ffn=int(fn-1.5*fm/(m+1))
fxlon = df.variables['FXLONG'][0,ifm:ffm,ifn:ffn].data
fxlat = df.variables['FXLAT'][0,ifm:ffm,ifn:ffn].data
psfc = wrf.getvar(df, 'slp', None) # Getting sea level pressure and calling it psfc for testing purposes
print('Getting uf and vf')
uf = df.variables['UF'][:, ifm:ffm,ifn:ffn].data
vf = df.variables['VF'][:, ifm:ffm,ifn:ffn].data
# %% plotting the figure
ref = 10 #this is the refinement number. Change this for wind only. 
print('Creating the plot')
fig = plt.figure(figsize=(5, 5), dpi=80)
plt.pcolormesh(lon, lat, psfc[0], cmap=plt.cm.RdBu, shading='auto')
plt.quiver(fxlon[::ref,::ref], fxlat[::ref,::ref], uf[0,::ref,::ref], vf[0,::ref,::ref])
plt.title('Time=%d' % 0)
# %%
def update(i):
    plt.pcolormesh(lon, lat, psfc[i], cmap=plt.cm.RdBu, shading='auto')
    plt.quiver(fxlon[::ref,::ref], fxlat[::ref,::ref], uf[i,::ref,::ref], vf[i,::ref,::ref])
    plt.title('Time=%d' % i)

anim = animation.FuncAnimation(fig, update, frames=psfc.shape[0], 
                              interval = 100, repeat = True)
fig.suptitle('Surface Pressure With Time', fontsize=14, fontweight = 'bold')


writervideo = animation.FFMpegWriter(fps=30)
anim.save('Surface_pressure2.mp4', writer=writervideo)

plt.show()
plt.close()

