% Script file: Exercise6_33.m
%
% Purpose:
% Dealing with Gaussian Issues
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/10/18 GeorgeDong32 Version 1.0
%
% Define variables:
% stdnd standard normal distribution
% mynd my normal distribution
stdnd = randn(100000,1);
histogram(stdnd,50,'Normalization','probability');   
hold on;
mynd=myRandom(100000);
% add "fangcha" part
histogram(mynd,50,'Normalization','probability','EdgeAlpha',0.3);
 