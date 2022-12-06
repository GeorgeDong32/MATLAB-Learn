% Script file: HandleGraphics.m
%
% Purpose:
% Use handle to plot graphics
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/12/6  GeorgeDong32 Version 1.0
%
% Defined variables:
% hd1     x1(t)'s handle
% hd2     x2(t)'s handle
% chndl   current object handle
% ctype   the type of current object

% 初始图像绘制区
t = -2:0.01:2;
x1 = cos(t / pi);
x2 = 2 * sin(t / 2 * pi);
figure();
hd1 = plot(t, x1);
hold on;
hd2 = plot(t, x2);
title('Handle Graphics');
legend('x_1(t)', 'x_2(t)');
% 用户操作响应区
k = waitforbuttonpress;

while k == 0
    % Get the handle of the object
    chndl = gco;
    ctype = get(chndl, 'Type');
    % confirm clicked on a line
    if (ctype == get(hd1, 'Type'))
        set(chndl, 'Color', RandomColor())
    end

    % Check for another mouse click
    k = waitforbuttonpress;
end

hold off;
