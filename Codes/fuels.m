fuel(  3).fuel_name='3: Tall grass (2.5 ft)';% FUEL MODEL NAME
fuel(  3).windrf= 0.44000    ;
fuel(  3).windrf_descr='WIND REDUCTION FACTOR FROM FCWH TO MIDFLAME HEIGHT';
fuel(  3).fwh=  6.0960    ;
fuel(  3).fwh_descr='WIND HEIGHT TO INTERPOLATE VERTICALLY TO (M)';
fuel(  3).fz0= 0.20000E-01;
fuel(  3).fz0_descr='ROUGHNESS LENGTH FOR VERTICAL WIND LOG INTERPOLATION (M)';
fuel(  3).fgi=  1.0800    ;
fuel(  3).fgi_descr='INITIAL TOTAL MASS OF SURFACE FUEL (KG/M**2)';
fuel(  3).fueldepthm=  1.2500    ;
fuel(  3).fueldepthm_descr='FUEL DEPTH (M)';
fuel(  3).savr=  1500.0    ;
fuel(  3).savr_descr='FUEL PARTICLE SURFACE-AREA-TO-VOLUME RATIO, 1/FT';
fuel(  3).fuelmce= 0.25000    ;
fuel(  3).fuelmce_descr='MOISTURE CONTENT OF EXTINCTION';
fuel(  3).fueldens=  32.000    ;
fuel(  3).fueldens_descr='OVENDRY PARTICLE DENSITY, LB/FT^3';
fuel(  3).st= 0.55500E-01;
fuel(  3).st_descr='FUEL PARTICLE TOTAL MINERAL CONTENT';
fuel(  3).se= 0.10000E-01;
fuel(  3).se_descr='FUEL PARTICLE EFFECTIVE MINERAL CONTENT';
fuel(  3).weight=  7.0000    ;
fuel(  3).weight_descr='WEIGHTING PARAMETER THAT DETERMINES THE SLOPE OF THE MASS LOSS CURVE';
fuel(  3).fci_d=  0.0000    ;
fuel(  3).fci_d_descr='INITIAL DRY MASS OF CANOPY FUEL';
fuel(  3).fct=  60.000    ;
fuel(  3).fct_descr='BURN OUT TIME FOR CANOPY FUEL, AFTER DRY (S)';
fuel(  3).ichap=  0.0000    ;
fuel(  3).ichap_descr='1 if chaparral, 0 if not';
fuel(  3).fci=  0.0000    ;
fuel(  3).fci_descr='INITIAL TOTAL MASS OF CANOPY FUEL';
fuel(  3).fcbr=  0.0000    ;
fuel(  3).fcbr_descr='FUEL CANOPY BURN RATE (KG/M**2/S)';
fuel(  3).adjr0=  1  ;
fuel(  3).adjr0_descr='MULTIPLICATIVE ADJUSTMENT OF BACKING SPREAD RATE';
fuel(  3).adjrw= 1 ;
fuel(  3).adjrw_descr='MULTIPLICATIVE ADJUSTMENT OF WIND CONTRIBUTION TO SPREAD RATE';
fuel(  3).adjrs=  1  ;
fuel(  3).adjrs_descr='MULTIPLICATIVE ADJUSTMENT OF SLOPE CONTRIBUTION TO SPREAD RATE';
fuel(  3).ffw= 0.90000    ;
fuel(  3).ffw_descr='FUEL FRACTION CONSUMED IN THE FLAMING ZONE';
fuel(  3).hfgl= 0.17000E+06;
fuel(  3).hfgl_descr='SURFACE FIRE HEAT FLUX THRESHOLD TO IGNITE CANOPY (W/m^2)';
fuel(  3).cmbcnst= 0.17433E+08;
fuel(  3).cmbcnst_descr='JOULES PER KG OF DRY FUEL';
fuel(  3).fuelheat=  7496.2    ;
fuel(  3).fuelheat_descr='FUEL PARTICLE LOW HEAT CONTENT, BTU/LB';
fuel(  3).fuelmc_g= 0.18000    ;
fuel(  3).fuelmc_g_descr='FUEL PARTICLE (SURFACE) MOISTURE CONTENT';
fuel(  3).fuelmc_c=  1.0000    ;
fuel(  3).fuelmc_c_descr='FUEL PARTICLE (CANOPY) MOISTURE CONTENT';
fuel(  3).wind(  1)=  0.0000    ;% wind speed at 6.1m
fuel(  3).ros_wind(  1)= 0.19732E-01;% rate of spread for the wind speed at 6.1m
fuel(  3).slope(  1)=  0.0000    ;% slope
fuel(  3).ros_slope(  1)= 0.19732E-01;% rate of spread for the slope
fuel(  3).fmc_g(  1)=  0.0000    ;% fuel moisture content
fuel(  3).ros_fmc_g(  1)= 0.80164E-01;% rate of spread for the fuel moisture content
fuel(  3).wind(  2)= 0.50000    ;% wind speed at 6.1m
fuel(  3).ros_wind(  2)= 0.45426E-01;% rate of spread for the wind speed at 6.1m
fuel(  3).slope(  2)= 0.16667E-01;% slope
fuel(  3).ros_slope(  2)= 0.19938E-01;% rate of spread for the slope
fuel(  3).fmc_g(  2)= 0.42373E-02;% fuel moisture content
fuel(  3).ros_fmc_g(  2)= 0.75225E-01;% rate of spread for the fuel moisture content
fuel(  3).wind(  3)=  1.0000    ;% wind speed at 6.1m
fuel(  3).ros_wind(  3)= 0.83471E-01;% rate of spread for the wind speed at 6.1m
fuel(  3).slope(  3)= 0.33333E-01;% slope
fuel(  3).ros_slope(  3)= 0.20558E-01;% rate of spread for the slope
fuel(  3).fmc_g(  3)= 0.84746E-02;% fuel moisture content
fuel(  3).ros_fmc_g(  3)= 0.70695E-01;% rate of spread for the fuel moisture content
fuel(  3).wind(  4)=  1.5000    ;% wind speed at 6.1m
fuel(  3).ros_wind(  4)= 0.12818    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope(  4)= 0.50000E-01;% slope
fuel(  3).ros_slope(  4)= 0.21589E-01;% rate of spread for the slope
fuel(  3).fmc_g(  4)= 0.12712E-01;% fuel moisture content
fuel(  3).ros_fmc_g(  4)= 0.66543E-01;% rate of spread for the fuel moisture content
fuel(  3).wind(  5)=  2.0000    ;% wind speed at 6.1m
fuel(  3).ros_wind(  5)= 0.17785    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope(  5)= 0.66667E-01;% slope
fuel(  3).ros_slope(  5)= 0.23034E-01;% rate of spread for the slope
fuel(  3).fmc_g(  5)= 0.16949E-01;% fuel moisture content
fuel(  3).ros_fmc_g(  5)= 0.62740E-01;% rate of spread for the fuel moisture content
fuel(  3).wind(  6)=  2.5000    ;% wind speed at 6.1m
fuel(  3).ros_wind(  6)= 0.23157    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope(  6)= 0.83333E-01;% slope
fuel(  3).ros_slope(  6)= 0.24891E-01;% rate of spread for the slope
fuel(  3).fmc_g(  6)= 0.21186E-01;% fuel moisture content
fuel(  3).ros_fmc_g(  6)= 0.59259E-01;% rate of spread for the fuel moisture content
fuel(  3).wind(  7)=  3.0000    ;% wind speed at 6.1m
fuel(  3).ros_wind(  7)= 0.28876    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope(  7)= 0.10000    ;% slope
fuel(  3).ros_slope(  7)= 0.27161E-01;% rate of spread for the slope
fuel(  3).fmc_g(  7)= 0.25424E-01;% fuel moisture content
fuel(  3).ros_fmc_g(  7)= 0.56077E-01;% rate of spread for the fuel moisture content
fuel(  3).wind(  8)=  3.5000    ;% wind speed at 6.1m
fuel(  3).ros_wind(  8)= 0.34900    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope(  8)= 0.11667    ;% slope
fuel(  3).ros_slope(  8)= 0.29843E-01;% rate of spread for the slope
fuel(  3).fmc_g(  8)= 0.29661E-01;% fuel moisture content
fuel(  3).ros_fmc_g(  8)= 0.53170E-01;% rate of spread for the fuel moisture content
fuel(  3).wind(  9)=  4.0000    ;% wind speed at 6.1m
fuel(  3).ros_wind(  9)= 0.41198    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope(  9)= 0.13333    ;% slope
fuel(  3).ros_slope(  9)= 0.32939E-01;% rate of spread for the slope
fuel(  3).fmc_g(  9)= 0.33898E-01;% fuel moisture content
fuel(  3).ros_fmc_g(  9)= 0.50516E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 10)=  4.5000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 10)= 0.47746    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 10)= 0.15000    ;% slope
fuel(  3).ros_slope( 10)= 0.36447E-01;% rate of spread for the slope
fuel(  3).fmc_g( 10)= 0.38136E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 10)= 0.48097E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 11)=  5.0000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 11)= 0.54524    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 11)= 0.16667    ;% slope
fuel(  3).ros_slope( 11)= 0.40368E-01;% rate of spread for the slope
fuel(  3).fmc_g( 11)= 0.42373E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 11)= 0.45892E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 12)=  5.5000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 12)= 0.61517    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 12)= 0.18333    ;% slope
fuel(  3).ros_slope( 12)= 0.44701E-01;% rate of spread for the slope
fuel(  3).fmc_g( 12)= 0.46610E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 12)= 0.43886E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 13)=  6.0000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 13)= 0.68711    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 13)= 0.20000    ;% slope
fuel(  3).ros_slope( 13)= 0.49447E-01;% rate of spread for the slope
fuel(  3).fmc_g( 13)= 0.50847E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 13)= 0.42061E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 14)=  6.5000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 14)= 0.76093    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 14)= 0.21667    ;% slope
fuel(  3).ros_slope( 14)= 0.54606E-01;% rate of spread for the slope
fuel(  3).fmc_g( 14)= 0.55085E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 14)= 0.40402E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 15)=  7.0000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 15)= 0.83654    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 15)= 0.23333    ;% slope
fuel(  3).ros_slope( 15)= 0.60177E-01;% rate of spread for the slope
fuel(  3).fmc_g( 15)= 0.59322E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 15)= 0.38895E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 16)=  7.5000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 16)= 0.91385    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 16)= 0.25000    ;% slope
fuel(  3).ros_slope( 16)= 0.66162E-01;% rate of spread for the slope
fuel(  3).fmc_g( 16)= 0.63559E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 16)= 0.37526E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 17)=  8.0000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 17)= 0.99278    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 17)= 0.26667    ;% slope
fuel(  3).ros_slope( 17)= 0.72559E-01;% rate of spread for the slope
fuel(  3).fmc_g( 17)= 0.67797E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 17)= 0.36283E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 18)=  8.5000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 18)=  1.0733    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 18)= 0.28333    ;% slope
fuel(  3).ros_slope( 18)= 0.79368E-01;% rate of spread for the slope
fuel(  3).fmc_g( 18)= 0.72034E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 18)= 0.35155E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 19)=  9.0000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 19)=  1.1552    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 19)= 0.30000    ;% slope
fuel(  3).ros_slope( 19)= 0.86591E-01;% rate of spread for the slope
fuel(  3).fmc_g( 19)= 0.76271E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 19)= 0.34129E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 20)=  9.5000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 20)=  1.2386    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 20)= 0.31667    ;% slope
fuel(  3).ros_slope( 20)= 0.94226E-01;% rate of spread for the slope
fuel(  3).fmc_g( 20)= 0.80508E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 20)= 0.33195E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 21)=  10.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 21)=  1.3234    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 21)= 0.33333    ;% slope
fuel(  3).ros_slope( 21)= 0.10227    ;% rate of spread for the slope
fuel(  3).fmc_g( 21)= 0.84746E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 21)= 0.32344E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 22)=  10.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 22)=  1.4095    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 22)= 0.35000    ;% slope
fuel(  3).ros_slope( 22)= 0.11073    ;% rate of spread for the slope
fuel(  3).fmc_g( 22)= 0.88983E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 22)= 0.31566E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 23)=  11.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 23)=  1.4969    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 23)= 0.36667    ;% slope
fuel(  3).ros_slope( 23)= 0.11961    ;% rate of spread for the slope
fuel(  3).fmc_g( 23)= 0.93220E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 23)= 0.30853E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 24)=  11.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 24)=  1.5855    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 24)= 0.38333    ;% slope
fuel(  3).ros_slope( 24)= 0.12889    ;% rate of spread for the slope
fuel(  3).fmc_g( 24)= 0.97458E-01;% fuel moisture content
fuel(  3).ros_fmc_g( 24)= 0.30195E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 25)=  12.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 25)=  1.6753    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 25)= 0.40000    ;% slope
fuel(  3).ros_slope( 25)= 0.13859    ;% rate of spread for the slope
fuel(  3).fmc_g( 25)= 0.10169    ;% fuel moisture content
fuel(  3).ros_fmc_g( 25)= 0.29586E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 26)=  12.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 26)=  1.7663    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 26)= 0.41667    ;% slope
fuel(  3).ros_slope( 26)= 0.14870    ;% rate of spread for the slope
fuel(  3).fmc_g( 26)= 0.10593    ;% fuel moisture content
fuel(  3).ros_fmc_g( 26)= 0.29018E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 27)=  13.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 27)=  1.8584    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 27)= 0.43333    ;% slope
fuel(  3).ros_slope( 27)= 0.15923    ;% rate of spread for the slope
fuel(  3).fmc_g( 27)= 0.11017    ;% fuel moisture content
fuel(  3).ros_fmc_g( 27)= 0.28484E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 28)=  13.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 28)=  1.9517    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 28)= 0.45000    ;% slope
fuel(  3).ros_slope( 28)= 0.17016    ;% rate of spread for the slope
fuel(  3).fmc_g( 28)= 0.11441    ;% fuel moisture content
fuel(  3).ros_fmc_g( 28)= 0.27977E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 29)=  14.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 29)=  2.0460    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 29)= 0.46667    ;% slope
fuel(  3).ros_slope( 29)= 0.18151    ;% rate of spread for the slope
fuel(  3).fmc_g( 29)= 0.11864    ;% fuel moisture content
fuel(  3).ros_fmc_g( 29)= 0.27491E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 30)=  14.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 30)=  2.1414    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 30)= 0.48333    ;% slope
fuel(  3).ros_slope( 30)= 0.19328    ;% rate of spread for the slope
fuel(  3).fmc_g( 30)= 0.12288    ;% fuel moisture content
fuel(  3).ros_fmc_g( 30)= 0.27020E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 31)=  15.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 31)=  2.2378    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 31)= 0.50000    ;% slope
fuel(  3).ros_slope( 31)= 0.20545    ;% rate of spread for the slope
fuel(  3).fmc_g( 31)= 0.12712    ;% fuel moisture content
fuel(  3).ros_fmc_g( 31)= 0.26559E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 32)=  15.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 32)=  2.3352    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 32)= 0.51667    ;% slope
fuel(  3).ros_slope( 32)= 0.21804    ;% rate of spread for the slope
fuel(  3).fmc_g( 32)= 0.13136    ;% fuel moisture content
fuel(  3).ros_fmc_g( 32)= 0.26102E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 33)=  16.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 33)=  2.4336    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 33)= 0.53333    ;% slope
fuel(  3).ros_slope( 33)= 0.23104    ;% rate of spread for the slope
fuel(  3).fmc_g( 33)= 0.13559    ;% fuel moisture content
fuel(  3).ros_fmc_g( 33)= 0.25644E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 34)=  16.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 34)=  2.5329    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 34)= 0.55000    ;% slope
fuel(  3).ros_slope( 34)= 0.24445    ;% rate of spread for the slope
fuel(  3).fmc_g( 34)= 0.13983    ;% fuel moisture content
fuel(  3).ros_fmc_g( 34)= 0.25180E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 35)=  17.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 35)=  2.6332    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 35)= 0.56667    ;% slope
fuel(  3).ros_slope( 35)= 0.25828    ;% rate of spread for the slope
fuel(  3).fmc_g( 35)= 0.14407    ;% fuel moisture content
fuel(  3).ros_fmc_g( 35)= 0.24707E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 36)=  17.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 36)=  2.7345    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 36)= 0.58333    ;% slope
fuel(  3).ros_slope( 36)= 0.27252    ;% rate of spread for the slope
fuel(  3).fmc_g( 36)= 0.14831    ;% fuel moisture content
fuel(  3).ros_fmc_g( 36)= 0.24219E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 37)=  18.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 37)=  2.8366    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 37)= 0.60000    ;% slope
fuel(  3).ros_slope( 37)= 0.28717    ;% rate of spread for the slope
fuel(  3).fmc_g( 37)= 0.15254    ;% fuel moisture content
fuel(  3).ros_fmc_g( 37)= 0.23712E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 38)=  18.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 38)=  2.9396    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 38)= 0.61667    ;% slope
fuel(  3).ros_slope( 38)= 0.30223    ;% rate of spread for the slope
fuel(  3).fmc_g( 38)= 0.15678    ;% fuel moisture content
fuel(  3).ros_fmc_g( 38)= 0.23183E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 39)=  19.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 39)=  3.0434    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 39)= 0.63333    ;% slope
fuel(  3).ros_slope( 39)= 0.31771    ;% rate of spread for the slope
fuel(  3).fmc_g( 39)= 0.16102    ;% fuel moisture content
fuel(  3).ros_fmc_g( 39)= 0.22628E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 40)=  19.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 40)=  3.1482    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 40)= 0.65000    ;% slope
fuel(  3).ros_slope( 40)= 0.33360    ;% rate of spread for the slope
fuel(  3).fmc_g( 40)= 0.16525    ;% fuel moisture content
fuel(  3).ros_fmc_g( 40)= 0.22043E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 41)=  20.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 41)=  3.2537    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 41)= 0.66667    ;% slope
fuel(  3).ros_slope( 41)= 0.34990    ;% rate of spread for the slope
fuel(  3).fmc_g( 41)= 0.16949    ;% fuel moisture content
fuel(  3).ros_fmc_g( 41)= 0.21426E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 42)=  20.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 42)=  3.3601    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 42)= 0.68333    ;% slope
fuel(  3).ros_slope( 42)= 0.36661    ;% rate of spread for the slope
fuel(  3).fmc_g( 42)= 0.17373    ;% fuel moisture content
fuel(  3).ros_fmc_g( 42)= 0.20772E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 43)=  21.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 43)=  3.4673    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 43)= 0.70000    ;% slope
fuel(  3).ros_slope( 43)= 0.38374    ;% rate of spread for the slope
fuel(  3).fmc_g( 43)= 0.17797    ;% fuel moisture content
fuel(  3).ros_fmc_g( 43)= 0.20079E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 44)=  21.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 44)=  3.5753    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 44)= 0.71667    ;% slope
fuel(  3).ros_slope( 44)= 0.40128    ;% rate of spread for the slope
fuel(  3).fmc_g( 44)= 0.18220    ;% fuel moisture content
fuel(  3).ros_fmc_g( 44)= 0.19345E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 45)=  22.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 45)=  3.6841    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 45)= 0.73333    ;% slope
fuel(  3).ros_slope( 45)= 0.41923    ;% rate of spread for the slope
fuel(  3).fmc_g( 45)= 0.18644    ;% fuel moisture content
fuel(  3).ros_fmc_g( 45)= 0.18565E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 46)=  22.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 46)=  3.7936    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 46)= 0.75000    ;% slope
fuel(  3).ros_slope( 46)= 0.43760    ;% rate of spread for the slope
fuel(  3).fmc_g( 46)= 0.19068    ;% fuel moisture content
fuel(  3).ros_fmc_g( 46)= 0.17738E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 47)=  23.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 47)=  3.9039    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 47)= 0.76667    ;% slope
fuel(  3).ros_slope( 47)= 0.45638    ;% rate of spread for the slope
fuel(  3).fmc_g( 47)= 0.19492    ;% fuel moisture content
fuel(  3).ros_fmc_g( 47)= 0.16862E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 48)=  23.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 48)=  4.0150    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 48)= 0.78333    ;% slope
fuel(  3).ros_slope( 48)= 0.47557    ;% rate of spread for the slope
fuel(  3).fmc_g( 48)= 0.19915    ;% fuel moisture content
fuel(  3).ros_fmc_g( 48)= 0.15933E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 49)=  24.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 49)=  4.1267    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 49)= 0.80000    ;% slope
fuel(  3).ros_slope( 49)= 0.49517    ;% rate of spread for the slope
fuel(  3).fmc_g( 49)= 0.20339    ;% fuel moisture content
fuel(  3).ros_fmc_g( 49)= 0.14950E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 50)=  24.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 50)=  4.2393    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 50)= 0.81667    ;% slope
fuel(  3).ros_slope( 50)= 0.51519    ;% rate of spread for the slope
fuel(  3).fmc_g( 50)= 0.20763    ;% fuel moisture content
fuel(  3).ros_fmc_g( 50)= 0.13910E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 51)=  25.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 51)=  4.3525    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 51)= 0.83333    ;% slope
fuel(  3).ros_slope( 51)= 0.53562    ;% rate of spread for the slope
fuel(  3).fmc_g( 51)= 0.21186    ;% fuel moisture content
fuel(  3).ros_fmc_g( 51)= 0.12812E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 52)=  25.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 52)=  4.4664    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 52)= 0.85000    ;% slope
fuel(  3).ros_slope( 52)= 0.55646    ;% rate of spread for the slope
fuel(  3).fmc_g( 52)= 0.21610    ;% fuel moisture content
fuel(  3).ros_fmc_g( 52)= 0.11654E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 53)=  26.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 53)=  4.5811    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 53)= 0.86667    ;% slope
fuel(  3).ros_slope( 53)= 0.57771    ;% rate of spread for the slope
fuel(  3).fmc_g( 53)= 0.22034    ;% fuel moisture content
fuel(  3).ros_fmc_g( 53)= 0.10432E-01;% rate of spread for the fuel moisture content
fuel(  3).wind( 54)=  26.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 54)=  4.6964    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 54)= 0.88333    ;% slope
fuel(  3).ros_slope( 54)= 0.59938    ;% rate of spread for the slope
fuel(  3).fmc_g( 54)= 0.22458    ;% fuel moisture content
fuel(  3).ros_fmc_g( 54)= 0.91473E-02;% rate of spread for the fuel moisture content
fuel(  3).wind( 55)=  27.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 55)=  4.8124    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 55)= 0.90000    ;% slope
fuel(  3).ros_slope( 55)= 0.62146    ;% rate of spread for the slope
fuel(  3).fmc_g( 55)= 0.22881    ;% fuel moisture content
fuel(  3).ros_fmc_g( 55)= 0.77962E-02;% rate of spread for the fuel moisture content
fuel(  3).wind( 56)=  27.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 56)=  4.9290    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 56)= 0.91667    ;% slope
fuel(  3).ros_slope( 56)= 0.64395    ;% rate of spread for the slope
fuel(  3).fmc_g( 56)= 0.23305    ;% fuel moisture content
fuel(  3).ros_fmc_g( 56)= 0.63778E-02;% rate of spread for the fuel moisture content
fuel(  3).wind( 57)=  28.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 57)=  5.0464    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 57)= 0.93333    ;% slope
fuel(  3).ros_slope( 57)= 0.66686    ;% rate of spread for the slope
fuel(  3).fmc_g( 57)= 0.23729    ;% fuel moisture content
fuel(  3).ros_fmc_g( 57)= 0.48904E-02;% rate of spread for the fuel moisture content
fuel(  3).wind( 58)=  28.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 58)=  5.1643    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 58)= 0.95000    ;% slope
fuel(  3).ros_slope( 58)= 0.69018    ;% rate of spread for the slope
fuel(  3).fmc_g( 58)= 0.24153    ;% fuel moisture content
fuel(  3).ros_fmc_g( 58)= 0.33325E-02;% rate of spread for the fuel moisture content
fuel(  3).wind( 59)=  29.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 59)=  5.2830    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 59)= 0.96667    ;% slope
fuel(  3).ros_slope( 59)= 0.71391    ;% rate of spread for the slope
fuel(  3).fmc_g( 59)= 0.24576    ;% fuel moisture content
fuel(  3).ros_fmc_g( 59)= 0.17029E-02;% rate of spread for the fuel moisture content
fuel(  3).wind( 60)=  29.500    ;% wind speed at 6.1m
fuel(  3).ros_wind( 60)=  5.4022    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 60)= 0.98333    ;% slope
fuel(  3).ros_slope( 60)= 0.73805    ;% rate of spread for the slope
fuel(  3).fmc_g( 60)= 0.25000    ;% fuel moisture content
fuel(  3).ros_fmc_g( 60)= 0.83528E-08;% rate of spread for the fuel moisture content
fuel(  3).wind( 61)=  30.000    ;% wind speed at 6.1m
fuel(  3).ros_wind( 61)=  5.5221    ;% rate of spread for the wind speed at 6.1m
fuel(  3).slope( 61)=  1.0000    ;% slope
fuel(  3).ros_slope( 61)= 0.76261    ;% rate of spread for the slope
fuel(  3).fmc_g( 61)= 0.25424    ;% fuel moisture content
fuel(  3).ros_fmc_g( 61)=  0.0000    ;% rate of spread for the fuel moisture content