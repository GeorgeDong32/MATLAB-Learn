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
% test1   测试数据1
% test2   测试数据2
% test3   测试数据3
% test4   测试数据4
% userinput  用户输入数据

% 标准输入测试
test1 = 10; test2 = [4; -2; 3];
test3 = [1 -4 3; -5 1 2; 1 6 -1]; test4 = [1 5 -2];
% 输出
fprintf('sum of test1 = %d\n', AllAdd(test1));
fprintf('sum of test2 = %d\n', AllAdd(test2));
fprintf('sum of test3 = %d\n', AllAdd(test3));
fprintf('sum of test4 = %d\n', AllAdd(test4));

% 其他输入测试
userinput = input('Please input a data: ');
fprintf('sum of userinput = %d\n', AllAdd(userinput));
