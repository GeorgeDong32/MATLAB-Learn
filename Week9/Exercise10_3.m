% Script file: Exercise10_3.m
%
% Purpose:
% 对输入数据求和
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/11/1 GeorgeDong32 Version 1.0

in = input('Please input data\n');
out1 = sum(in,1);
out2 = sum(out1,2);
%输出
fprintf('Sum of data = %.4f',out2)