% Script file: Exercise10_3.m
%
% Purpose:
% 对输入数据求和
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/11/1 GeorgeDong32 Version 1.0
%
% Defined variables:
% in 输入数据 input data
% out 数据的和 sum of data

% 输入Input
in = input('Please input data\n');
% 计算Calculate
out1 = sum(in,1); %对列求和
out2 = sum(out1,2); %对行求和
%输出
fprintf('Sum of data = %.4f',out2)