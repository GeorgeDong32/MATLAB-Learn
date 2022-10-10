% Script file: Exercise4_13.m
%
% Purpose:
% Dealing with Refraction Issues
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/09/27 GeorgeDong32 Version 2.2
%
% Define variables:
% theta_in Incidence angle
% theta_out Angle of refraction
% n_1 Index of Refraction 1
% n_2 Index of Refraction 2
% sintho The sin value of theta_out
% k1 Incident ray slope
% k2 Refraction/Reflection line slope

% Input and data processing
theta_in = input('Please input the incidence angle(degree): ');
n_1 = input('Please input n1: ');
n_2 = input('Please input n2: ');
% Input analysis
if (~isnumeric(theta_in) || ~isnumeric(n_1) || ~isnumeric(n_2))
    error('input must be number!')
end

if (theta_in > 90)
    error('incidence angle value invalid, it should range from 0 to 90');
elseif theta_in == 90
    sintho = -999;
    k1 = 0;
else
    sintho = (n_1 / n_2) * sind(theta_in);
    k1 = -cotd(theta_in);
end

if (n_2 == 0)
    error('n2 cannot be zero');
end

% Situation Analysis
if (sintho < 1)

    if (sintho ~= -999)
        theta_out = asind(sintho);
        k2 = -cotd(theta_out);
    else
        k2 = 0;
    end

else
    theta_out = theta_in;
    k2 = cotd(theta_out);
end

% Test
fprintf("%f", theta_out);
fprintf("%f", sind(theta_out));

% Draw
if (theta_in ~= 0)
    x0x = -100:0.01:100;
    y0x = 0 * x0x;

    if k2 > 0
        y0ys = 0;
    else
        y0ys = -50;
    end

    x1 = -100:0.01:0;
    y1 = k1 * x1;
    x2 = 0:0.01:100;
    y2 = k2 * x2;
    plot(x0x, y0x, '-k', [0, 0], [y0ys, 50], '--c', x1, y1, '-g', x2, y2, '-b');
else
    x0x = -100:0.01:100;
    y0x = 0 * x0x;

    if k2 > 0
        y0ys = 0;
    else
        y0ys = -50;
    end

    plot(x0x, y0x, '-k', [0, 0], [y0ys, 50], '--c', [0, 0], [0, 50], '-g', [0, 0], [-50, 0], '-b');
end

legend('interface', 'normal line', 'incident light', 'refracted light');
title('Refraction')
