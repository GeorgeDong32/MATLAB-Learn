function mR = myRandom(n)
    % Script file: myRandom.m
    %
    % Purpose:
    % processing normal distributions
    %
    % Record of revisions:
    % Date     Programmer   Description of change
    % ======== ============ =====================
    % 22/10/18 GeorgeDong32 Version 1.1
    %
    % Define variables:
    % x1,x2 base random number
    % xx1,xx2 random number for determine plus or minus of x1,x2
    % n the num of random number
    mid = [];

    for i = 1:n
        x1 = rand();
        xx1 = rand();
        x2 = rand();
        xx2 = rand();
        %生成(0,1)之间的随机数
        while (x1 * x1 + x2 * x2 >= 1)
            x1 = rand();
            x2 = rand();
        end

        %生成随机数的符号以构造(-1,1)的随机数
        if xx1 > 0.5
            x1 = -x1;
        end

        if xx2 > 0.5
            x2 = -x2;
        end

        r = x1 * x1 + x2 * x2;
        y1 = sqrt(-2 * log(r) / r) * x1;
        y2 = sqrt(-2 * log(r) / r) * x2;
        mid = [mid; y1];
    end

    mR = mid;
