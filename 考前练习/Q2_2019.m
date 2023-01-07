% Script file: Q1_2019.m
%
% Purpose:
% Calculate some numbers
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 23/1/7   GeorgeDong32 Version 1.0
%
% Defined variables:

%Q2_1
figure();
t = 0:0.1:50;
x = cos(0.05 * t) .* cos(t * 2);
y = cos(0.05 * t) .* sin(2 * t);
plot3(x, y, t);
title('Three-Dimensional Line Plot')
zlabel('time')
ylabel('y')
xlabel('x')
ylim([-1, 1]);
xlim([-1, 1]);
zlim([0, 50]);

%Q2_2
figure();
r1 = 1.5; r2 = 0.5;
[theta, phi] = meshgrid(0:(pi / 101):2 * pi, 0:(2 * pi / 101):2 * pi);
x = (r1 + r2 * cos(theta)) .* cos(phi);
y = (r1 + r2 * cos(theta)) .* sin(phi);
z = r2 * sin(theta);
surf(x, y, z);
zlim([-1, 1]);
xlabel('x');
ylabel('y');
zlabel('z');
colormap jet;
colorbar;

%Q2_3
figure();
x = [1, 2, 3, 4];
y = [1 2 3; 2 3 4; 6 8 9; 0 11 12];
bar(x, y, 'stacked');
