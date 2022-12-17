%%
% Written By Mohamed Eid
clear
clc

%% Parameters
% The robot is assumed to be a regular cuboid and the wheels are assumed to
% be regular cylinders.
L = 0.25;
R = 0.05;
d = 0.20;
mc = 5.00;
mw = 0.10;
Ic = (2/3)*mc*L^2;
Iw = 0.5*mw*R^2;

m = mc + 2*mw;
I = Ic + mc*d^2 + 2*mw*L^2;

%% Simulation
Data = sim('WMR', 15);

% Right Wheel
f = figure('Name','Right Wheel','NumberTitle','off');
f.Position = [50 0 1500 800];
subplot (2, 3, 1)
plot (Data.position_1.Time, Data.position_1.Data)
grid
xlabel ('Time(sec)')
ylabel('Position')
legend('Actual Angle','Desired Angle')
subplot (2, 3, 2)
plot (Data.position_1.Time, Data.velocity_1.Data)
grid
xlabel ('Time(sec)')
ylabel('Velocity')
legend('Desired Velocity','Actual Velocity')
subplot (2, 3, 3)
plot (Data.position_1.Time, Data.acceleration_1.Data)
grid
xlabel ('Time(sec)')
ylabel('Acceleration')
legend('Desired Acceleration','Actual Acceleration')
subplot (2, 3, 4)
plot (Data.position_1.Time, Data.position_1.Data(:,1)-Data.position_1.Data(:,2))
grid
xlabel ('Time(sec)')
ylabel('Position Error')
subplot (2, 3, 5)
plot (Data.position_1.Time, Data.velocity_1.Data(:,1)-Data.velocity_1.Data(:,2))
grid
xlabel ('Time(sec)')
ylabel('Velocity Error')
subplot (2, 3, 6)
plot (Data.position_1.Time, Data.acceleration_1.Data(:,1)-Data.acceleration_1.Data(:,2))
grid
xlabel ('Time(sec)')
ylabel('Acceleration Error')

% Left Wheel
f = figure('Name','Left Wheel','NumberTitle','off');
f.Position = [50 0 1500 800];
subplot (2, 3, 1)
plot (Data.position_2.Time, Data.position_2.Data)
grid
xlabel ('Time(sec)')
ylabel('Position')
legend('Actual Angle','Desired Angle')
subplot (2, 3, 2)
plot (Data.position_2.Time, Data.velocity_2.Data)
grid
xlabel ('Time(sec)')
ylabel('Velocity')
legend('Desired Velocity','Actual Velocity')
subplot (2, 3, 3)
plot (Data.position_2.Time, Data.acceleration_2.Data)
grid
xlabel ('Time(sec)')
ylabel('Acceleration')
legend('Desired Acceleration','Actual Acceleration')
subplot (2, 3, 4)
plot (Data.position_2.Time, Data.position_2.Data(:,1)-Data.position_2.Data(:,2))
grid
xlabel ('Time(sec)')
ylabel('Position Error')
subplot (2, 3, 5)
plot (Data.position_2.Time, Data.velocity_2.Data(:,1)-Data.velocity_2.Data(:,2))
grid
xlabel ('Time(sec)')
ylabel('Velocity Error')
subplot (2, 3, 6)
plot (Data.position_2.Time, Data.acceleration_2.Data(:,1)-Data.acceleration_2.Data(:,2))
grid
xlabel ('Time(sec)')
ylabel('Acceleration Error')