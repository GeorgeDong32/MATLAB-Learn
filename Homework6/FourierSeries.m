function [ff3,ff5,ff10,ff20] = FourierSeries(x,L)
% Script file: FourierSeries.m
%
% Purpose:
% processing fouries series
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/10/12 GeorgeDong32 Version 1.0
%
% Define variables:
% x input location
% L width of square wave

ff3 = sin(x*pi/L) + (1/3)*sin(x*3*pi/L) + (1/5)*sin(x*5*pi/L);
ff5 = ff3 + (1/7)*sin(x*7*pi/L) + (1/11)*sin(x*11*pi/L);
ff10 = ff5 + (1/13)*sin(13*x*pi/L) + (1/15)*sin(15*x*pi/L) + (1/17)*sin(17*x*pi/L) + (1/19)*sin(19*x*pi/L) + (1/21)*sin(21*x*pi/L);
ff20 = ff10 + (1/23)*sin(23*x*pi/L) + (1/25)*sin(15*x*pi/L) + (1/27)*sin(27*x*pi/L) + (1/29)*sin(29*x*pi/L) + (1/31)*sin(31*x*pi/L);