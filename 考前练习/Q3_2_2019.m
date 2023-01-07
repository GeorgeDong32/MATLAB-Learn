% Script file: Q3_2019.m
%
% Purpose:
% This program plots four functions in one figure.
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 23/1/7   GeorgeDong32 Version 1.0
%
% Defined variables:
% x -- x-axis
% y -- y-axis
% titles -- titles of functions
% location -- locations of functions
% fun -- functions

x = -10:0.1:10;
y = [sin(x); cos(x); exp(x); log(1 + x)];
titles = {'sin(x)'; 'cos(x)'; 'exp(x)'; 'log(1 + x)'};
location = input('Please input locations:');
fun = input('Please input functions:');

figure()
tiledlayout(2, 2);
nexttile(location(1))
plot(x, y(fun(1), :));
title(titles(fun(1)));

nexttile(location(2))
plot(x, y(fun(2), :));
title(titles(fun(2)));

nexttile(location(3))
plot(x, y(fun(3), :));
title(titles(fun(3)));

nexttile(location(4))
plot(x, y(fun(4), :));
title(titles(fun(4)));
