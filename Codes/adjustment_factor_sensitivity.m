step = linspace(0,1,100);
x = ros_rothermel(fuel(3), 15.979096, 0.039121687, 0.08, step, 1, 1);
y = ros_rothermel(fuel(3), 15.979096, 0.039121687, 0.08, 1, step, 1);
z = ros_rothermel(fuel(3), 15.979096, 0.039121687, 0.08, 1, 1, step);
all = ros_rothermel(fuel(3), 15.979096, 0.039121687, 0.08, step, step, step);

% adjr0, adjrw, adjrs


%% Creating plots of the adjustment factors
% adjr0
plot(step, x, color = 'red')
xlabel('adjr0', fontsize = 12, fontweight = 'bold')
ylabel('Rate Of Spread', fontsize = 12, fontweight = 'bold')
title('adjr0 Adjustment on ROS', fontsize = 18, fontweight = 'bold')
grid on;
%% adjrw
plot(step, y, color = 'blue')
xlabel('adjrw', fontsize = 12, fontweight = 'bold')
ylabel('Rate Of Spread', fontsize = 12, fontweight = 'bold')
title('adjrw Adjustment on ROS', fontsize = 18, fontweight = 'bold')
grid on;
%% adjrs
plot(step, z, color = 'green')
xlabel('adjrs', fontsize = 12, fontweight = 'bold')
ylabel('Rate Of Spread', fontsize = 12, fontweight = 'bold')
title('adjrs Adjustment on ROS', fontsize = 18, fontweight = 'bold')
grid on;
%% Combining all three of them
plot(step, all, color = 'green')
xlabel('All Adjustment Factors', fontsize = 12, fontweight = 'bold')
ylabel('Rate Of Spread', fontsize = 12, fontweight = 'bold')
title('All Adjustment Factors on ROS', fontsize = 18, fontweight = 'bold')
grid on;
%% Plotting all three of them on one plot
hold on;
plot(step, x, color = 'red')
plot(step, y, color = 'blue')
plot(step, z, color = 'green')
hold off;
xlabel('Adjustment Factors', fontsize = 12, fontweight = 'bold')
ylabel('Rate Of Spread', fontsize = 12, fontweight = 'bold')
title('All Adjustment Factors on ROS', fontsize = 18, fontweight = 'bold')
grid on;
legend('adjr0', 'adjrw', 'adjrs', 'Location','SouthEast')