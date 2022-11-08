% Script file: Exercise10_5.m
%
% Purpose:
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/11/8 GeorgeDong32 Version 1.0
%
% Defined variables:
% plot_info plot信息Structure数组

x3 = -2 * pi:0.01:2 * pi;
y3 = sin(x3);

plot_info(3) = struct('x_data', x3, 'y_data', y3, 'type', 'linear', 'plot_title', 'sin(x)', 'x_label', 'x', 'y_label', 'y', 'x_range', [-2 * pi, 2 * pi], 'y_range', [-1, 1]);
