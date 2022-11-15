function GA = CalculationGA(height)
%CALCULATIONGA
% 
% Purpose:
% Calculate Gravitational Acceleration
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/11/15 GeorgeDong32 Version 1.0
%
% Defined variables:
% G 万有引力常量
% M 地球质量
% R 地球半径
% GA 重力加速度计算值

loopctrl = length(height); % 循环控制
mid = zeros(1,loopctrl);
G = 6.672 * 10^(-11);
M = 5.98 * 10^24;
R = 6371 * 10^3;

for i = 1:loopctrl
   mid(i) = (-G)*M/(R+height(i)*10^3)^2;
end
GA = mid;

end

