function equation1 = getEquation1(t,x)
% Script file: getEquation1.m
%
% Purpose:
% Process equataion1 of exercise 7.28
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/10/25 GeorgeDong32 Version 1.0
%
% Defined variables:
unitstep =@(t) t>=0;

equation1 = unitstep(t) - 5*x;
end