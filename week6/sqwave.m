% Script file: sqwave.m
%
% Purpose:
% output square wave
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/10/12 GeorgeDong32 Version 1.0
%
% Define variables:
% x 
% L the width of square wave

n = x / (L/2)
if(n % 2 == 0)
    sqwvalue = 1
else
    sqwvalue = -1
end
