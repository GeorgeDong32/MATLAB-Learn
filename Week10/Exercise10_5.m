% Script file: Exercise10_5.m
%
% Purpose:
% Using structure array to plot a data set
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

% 有所有值的structure
plot_info(3) = struct('x_data', x3, 'y_data', y3, 'type', 'linear', 'plot_title', 'sin(x)', 'x_label', 'x', 'y_label', 'y', 'x_range', [-2 * pi, 2 * pi], 'y_range', [-1, 1]);
MyPlotFunction(plot_info(3))

% 没有type和title的structure
x2 = -2 * pi:0.01:2 * pi;
plot_info(2).x_data = -2 * pi:0.01:2 * pi; plot_info(2).y_data = cos(x2);
plot_info(2).x_label = 'x'; plot_info(2).y_label = 'y';
plot_info(2).x_range = [-2 * pi, 2 * pi]; plot_info(2).y_range = [-1, 1];
MyPlotFunction(plot_info(2))

% 没有label和range的structure
plot_info(3).x_data = -2 * pi:0.01:2 * pi; plot_info(3).y_data = tan(x2);
plot_info(3).type = 'linear'; plot_info(3).plot_title = 'tan(x)';
MyPlotFunction(plot_info(3))

% 没有data的structure,应报错
plot_info(4).type = 'linear';
plot_info(4).plot_title = 'No data';
MyPlotFunction(plot_info(4))
