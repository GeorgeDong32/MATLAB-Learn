% Script file: HandleGraphics.m
%
% Purpose:
% Use handle to plot graphics
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/12/6  GeorgeDong32 Version 1.0
%
% Defined variables:
% hndl graph handle

t = -2:0.01:2;
x1 = cos(t / pi);
x2 = 2 * sin(t / 2 * pi);
hndl = plot(t, x1, t, x2);
