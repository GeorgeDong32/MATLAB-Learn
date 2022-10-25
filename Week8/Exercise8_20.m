% Script file: Exercise8_20.m
%
% Purpose:
% Dealing with Complex number plots
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/10/25 GeorgeDong32 Version 1.0
%
% Defined variables:
% [x y] plots' x and y values
% z plots' z values

[x, y] = meshgrid(-1:0.01:1, (-2 * pi):(0.02 * pi):(2 * pi));
z = exp(x + y * 1i);

%drawing mesh plot
figure();
mesh(x, y, real(z));
title('Mesh Plot of 8.20');

%draw surface plot
figure();
surf(x, y, real(z));
title('Surface Plot of 8.20');

%draw contour plot
figure();
contourf(x, y, real(z));
title('fContour Plot of 8.20');
