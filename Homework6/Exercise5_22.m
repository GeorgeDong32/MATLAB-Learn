% Script file: Exercise5_22.m
%
% Purpose:
% Dealing with Fourier series
%
% Requirement:
% MATLAB Signal Processing Toolbox
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/10/12 GeorgeDong32 Version 1.0
%
% Define variables:
% L square wave width
% n the number of terms of the Fourier series

% square wave
L=1;
x=0:0.01:2.5;
[y3,y5,y10,y20] = FourierSeries(x,0.5);
figure();
plot(x,square(x*2*pi),x,y3,x,y5,x,y10,x,y20);
legend("Square wave","3 terms Fourier series","5 terms Fourier series","10 terms Fourier series","20 terms Fourier series")
title('Square wave & Fourier series')
axis([-0.5,3, -2, 2]);