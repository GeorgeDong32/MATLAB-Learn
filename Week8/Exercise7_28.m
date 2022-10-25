% Script file: Exercise7_28.m
%
% Purpose:
% Dealing with Complex number plots
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/10/18 GeorgeDong32 Version 1.0
%
% Defined variables:
% ts t's span

[t,y]=ode45(@(t,y) 2*t,0:0.1:5,1);
plot(t,y)
% odefun_handle = @getEquation;
% t = [0 6];
% x0(1) = 0;
% x0(2) = 0;
% 
% [t,x] = ode45(odefun_handle,t);