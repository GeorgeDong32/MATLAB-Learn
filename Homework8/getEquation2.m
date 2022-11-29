function equation2 = getEquation2(t,x)
% Script file: getEquation2.m
%
% Purpose:
% Process equataion2 of exercise 7.28
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/10/25 GeorgeDong32 Version 1.0
%
% Defined variables:
unitstep =@(t) t>=0;

equation2 = unitstep(t) - 0.5*x;
end