% Script file: Q3_2019.m
%
% Purpose:
%
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 23/1/7   GeorgeDong32 Version 1.0
%
% Defined variables:

x = -10:0.1:10;
y1 = sin(x);
y2 = cos(x);
y3 = exp(x);
y4 = log(1 + x);
figure()
tiledlayout(2, 2);
nexttile;
plot(x, y1);
title('plot1');
nexttile;
plot(x, y2);
title('plot2');
nexttile;
plot(x, y3);
title('plot3');
nexttile;
plot(x, y4);
title('plot4');
