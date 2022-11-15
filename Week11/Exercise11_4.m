% Script file: Exercise11_4.m
%
% Purpose:
% Calculate Gravitational Acceleration
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/11/15 GeorgeDong32 Version 1.0
%
% Defined variables:
% height 高度数据
% GA 重力加速度数据 
% GA 重力加速度数据集

% calculation
height = 0:500:40000;
GA = CalculationGA(height);
GAData(82) = struct('Height',0,'g',-9.82973956335312,'unit','m/s^2');
for i=1:81
    GAData(i).Height = height(i);
    GAData(i).g = GA(i);
    GAData(i).unit = 'm/s^2';
end

% plot
figure()
plot(height,GA);
ylabel('\bf重力加速度值/ m/s^2')
xlabel('\bf高度/ km')
title('\bf重力加速度图像')

% Export to file
save GAData GAData; % To .mat





