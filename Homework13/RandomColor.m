function colorStr = RandomColor()
    % Script file: RandomColor.m
    %
    % Purpose:
    % generate a random color string for plot
    %
    % Record of revisions:
    % Date     Programmer   Description of change
    % ======== ============ =====================
    % 22/12/6  GeorgeDong32 Version 1.0
    gd = 1/7;
    x = rand();

    if (x >= 0 && x < gd)
        colorStr = 'red';
    elseif (x >= gd && x < 2 * gd)
        colorStr = 'green';
    elseif (x >= 2 * gd && x < 3 * gd)
        colorStr = 'blue';
    elseif (x >= 3 * gd && x < 4 * gd)
        colorStr = 'yellow';
    else
        colorStr = 'black';
    end

end
