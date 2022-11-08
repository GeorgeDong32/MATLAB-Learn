% Script file: Exercise9_9.m
%
% Purpose:
% insert "not" after every "is"
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/11/8 GeorgeDong32 Version 1.0
%
% Defined variables:
% inputstr input string 输入的字符串
% targetstr 目标字符串
% replacestr 替换字符串
% resultstr 结果字符串

% test code
inputstr = 'This sentence is a test, is it not';

% User input
% inputstr = input('Please input your string')

targetstr = 'is ';
replacestr = 'is not ';
resultstr = strrep(inputstr, targetstr, replacestr);
fprintf('The result is: \"%s\"', resultstr)
