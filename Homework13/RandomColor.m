function colorStr = RandomColor()
    % Script file: RandomColor.m
    %
    % Purpose:
    % generate a random color string for plot
    %
    % Record of revisions:
    % Date     Programmer   Description of change
    % ======== ============ =====================
    % 22/12/6  GeorgeDong32 Version 2.0
    %
    % Defined variables:
    % colorStr   the random color string
    % stdc       1/7
    % x          a random number
    stdc = 1/7;
    x = rand();

    if (x >= 0 && x < stdc)
        colorStr = 'red';
    elseif (x >= stdc && x < 2 * stdc)
        colorStr = 'green';
    elseif (x >= 2 * stdc && x < 3 * stdc)
        colorStr = 'blue';
    elseif (x >= 3 * stdc && x < 4 * stdc)
        colorStr = 'yellow';
    elseif (x >= 4 * stdc && x < 5 * stdc)
        colorStr = 'cyan';
    elseif (x >= 5 * stdc && x < 6 * stdc)
        colorStr = 'magenta';
    else
        colorStr = 'black';
    end

    % test codes
    %disp(colorStr);
end
