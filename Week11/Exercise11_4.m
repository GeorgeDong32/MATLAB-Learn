% Script file: Exercise11_4.m
%
% Purpose:
% Calculate Gravitational Acceleration
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/11/15 GeorgeDong32 Version 1.0

height = 0:500:40000;
GA = CalculationGA(height);
GAData(82) = struct('Height', 0, 'g', -9.82973956335312, 'unit', 'm/s^2');

for i = 1:81
    GAData(i).Height = height(i);
    GAData(i).g = GA(i);
    GAData(i).unit = 'm/s^2';
end

figure()
plot(height, GA);

save GADataFile GAData;
