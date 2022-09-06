h0 = 10
v0 = 10
g = -29.81
t = 0:0.1:3;
v = g*t + v0;
h = 0.5*g*t.^2 + v0*t + h0;
plot(t,v,'red-',t,h,'blue-');
legend('v(t)','h(t)');
title('Ex2.10 图')
xlabel('t','VerticalAlignment','cap');
ylabel('h/v','HorizontalAlignment','right');