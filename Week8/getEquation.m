function equations = getEquation(t,x)
% Script file: getEquation.m
%
% Purpose:
% Process equataions of exercise 7.28
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/10/25 GeorgeDong32 Version 1.0
%
% Defined variables:
unitstep =@(t) t>=0;

equations = zeros(2,1);
equations(1) = unitstep(t) - 5*x;
equations(2) = unitstep(t) - 0.5*x;