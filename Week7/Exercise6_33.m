% Script file: Exercise6_33.m
%
% Purpose:
% Dealing with Gaussian Issues
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/10/18 GeorgeDong32 Version 1.1
%
% Define variables:
% stdnd standard normal distribution
% mynd my normal distribution
% var_mynd deviation of myRandom function

% Generate random numbers
set(gcf,'unit','normalized','position',[0.2,0.2,0.55,0.55]);
stdnd = randn(100000,1);
histogram(stdnd,50,'Normalization','probability');   
hold on;
mynd=myRandom(100000);
histogram(mynd,50,'Normalization','probability','EdgeAlpha',0.3);
% Calculate variance
var_mynd = var(mynd);
% Add annotations
legend("Standard normal distribution","My normal distribution")
title("通过随机分布生成正态分布");
text(-4,0.05,['生成函数方差=', num2str(var_mynd)]);
hold off;
 