# %% Importing necessary libraries
import netCDF4 as nc
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import glob
# %% Reading in a file to test on
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
    wrfout_time = wrfout.variables['XTIME'][:]
    # %% Setting locations to measure the rate of spread
    #print('These are the fire_ignition points')
    start_x = 330
    start_y = 286
    #print('These variables are for the center of the hill')
    center_x = 192
    center_y = 215
    #print('These variables are for the side of the hill')
    side_x = 216
    side_y = 249
    #print('These variables are for the end of the hill')
    end_x = 160
    end_y = 197
    time_center = 60 * wrfout.variables['XTIME'][np.where(fire_area[:, center_y, center_x] > 0)[0][0]]
    #time_side = 60 * wrfout.variables['XTIME'][np.where(fire_area[:, side_y, side_x] > 0)[0][0]]
    time_end = 60 * wrfout.variables['XTIME'][np.where(fire_area[:, end_y, end_x] > 0)[0][0]]
    # %%
    #print('The time when the fire_area reached the center of the hill is at:', 
    #time_center, 'seconds')

    #print('The time when the fire_area reached the side of the hill is at:', 
    #time_side, 'seconds')

    #print('The time when the fire_area reached the end of the hill is at:', 
    #time_end, 'seconds')

    #print('The rate of spread for the center of the hill is:', (6 * np.sqrt(((start_x - center_x) ** 2) + ((start_y - center_y) ** 2))) / time_center)
    #print('The rate of spread for the side of the hill is:', (6 * np.sqrt(((start_x - side_x) ** 2) + ((start_y - side_y) ** 2))) / time_side)
    #print('The rate of spread for the end of the hill is:', (6 * np.sqrt(((start_x - end_x) ** 2) + ((start_y - end_y) ** 2))) / time_end)
    print(filename)
    print('-------------------------------------------------------------------')
    print((6 * np.sqrt(((start_x - center_x) ** 2) + ((start_y - center_y) ** 2))) / time_center)
    #print((6 * np.sqrt(((start_x - side_x) ** 2) + ((start_y - side_y) ** 2))) / time_side)
    print((6 * np.sqrt(((start_x - end_x) ** 2) + ((start_y - end_y) ** 2))) / time_end)
    print('-------------------------------------------------------------------')



# %%
