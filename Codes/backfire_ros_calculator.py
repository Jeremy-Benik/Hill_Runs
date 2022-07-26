# %% Importing necessary libraries
import netCDF4 as nc
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import glob
# %% Reading in the data
path = r'cheyenne_runs/run_*'
filenames = glob.glob(path + "/wrfout_d01_0001-01-01_00:00:00")
# %% making a for loop to iterate through all the files and make plots of them all at once
n = 5 #this is a 5 second average of the data
for filename in filenames:
    wrfout = nc.Dataset(filename, 'r')
    print(filename)
    # %% Importing variables 
    #print('Currently reading in fire_area')
    fire_area = wrfout.variables['FIRE_AREA'][:, :, :]
    #print('Currently reading in fxlat')
    fxlat = wrfout.variables['FXLAT'][:, :, :]
    #print('Currently reading in fxlong')
    fxlong = wrfout.variables['FXLONG'][:, :, :]
    #print('Currently reading in Time')
    #wrfout_time = wrfout.variables['XTIME'][:]
    x = 335
    y = 288
    #print(np.where(fire_area[:, 288, 335] > 0)[0][0])
    distance = np.sqrt(((fxlat[0, 288, 335] - fxlat[0, 286, 330]) ** 2) + (fxlong[0, 288, 335] - fxlong[0, 286, 330]) ** 2)
    time = 60 * wrfout.variables['XTIME'][np.where(fire_area[:, 288, 335] > 0)[0][0]]
    print(distance / time)
# %%
