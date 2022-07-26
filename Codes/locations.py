import netCDF4 as nc

wrfout = nc.Dataset('wrfout_d01_0001-01-01_00:00:00')

lat = wrfout.variables['FXLAT'][:, :, :]
lon = wrfout.variables['FXLONG'][:, :, :]


#starting location
start_x = 239
start_y = 286

print('Starting y is: ', lat[0, start_y, start_x])
print('Starting x is: ', lon[0, start_y, start_x])


end_x_1 = 214
end_y_1 = 302

print('endpoint 1  y is: ', lat[0, end_y_1, end_x_1])
print('endpoint 1  x is: ', lon[0, end_y_1, end_x_1])

end_x_2 = 264
end_y_2 = 270


print('endpoint 2  y is: ', lat[0, end_y_2, end_x_2])
print('endpoint 2  x is: ', lon[0, end_y_2, end_x_2])

print('Locations of the fire_area is: ', lat[0, 260, 210])
print(lon[0, 260, 210])
