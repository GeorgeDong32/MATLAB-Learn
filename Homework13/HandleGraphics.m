% Script file: HandleGraphics.m
%
% Purpose:
% Use handle to plot graphics
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/12/6  GeorgeDong32 Version 2.0

t = -2:0.01:2;
x1 = cos(t / pi);
x2 = 2 * sin(t / 2 * pi);
figure();
hd1 = plot(t, x1);
hold on;
hd2 = plot(t, x2);
k = waitforbuttonpress;

while k == 0
    chndl = gco;
    ctype = get(chndl, 'Type');

    if (ctype == get(hd1, 'Type'))
        set(chndl, 'Color', RandomColor())
    end

    k = waitforbuttonpress;
end

hold off;
