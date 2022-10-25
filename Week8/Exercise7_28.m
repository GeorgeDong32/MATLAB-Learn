% Script file: Exercise7_28.m
%
% Purpose:
% Dealing with Complex number plots
%
% Requirements:
% getEquation1.m
% getEquation2.m
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/10/25 GeorgeDong32 Version 1.1
%
% Defined variables:
% t t span

eq1 = @getEquation1;
eq2 = @getEquation2;
t = [0 6];

[t, x1] = ode45(eq1, t, 0);
[t, x2] = ode45(eq2, t, 0);
figure();
plot(t, x1);
hold on;
plot(t, x2);
title('\bf一元微分方程');
legend('dx + 5x = u(t)', 'dx + 0.5x = u(t)');
xlabel('\bft');
ylabel('\bfx(t)');
hold off;
