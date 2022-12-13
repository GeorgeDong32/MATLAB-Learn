% Script file: Exercise9_8.m
%
% Purpose:
% insert "not" after every "is"
% 依题意在每个‘is’字符串后面插入‘not’
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/11/8 GeorgeDong32 Version 2.0
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

targetstr = 'is';
replacestr = 'isnot';
count = strfind(inputstr, targetstr);
resultstr = strrep(inputstr, targetstr, replacestr);
fprintf('There are %d \"%s\" in the string\n', count, targetstr);
fprintf('The result is: \"%s\"\n', resultstr)
