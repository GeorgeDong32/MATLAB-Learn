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

    gdctrl = length(height);
    GA = zeros(1, gdctrl);
    G = 6.672 * 10^(-11);
    M = 5.98 * 10^24;
    R = 6371 * 10^3;

    for i = 1:gdctrl
        GA(i) = (-G) * M / (R + height(i) * 10^3)^2;
    end

end
