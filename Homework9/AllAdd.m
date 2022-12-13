function addResult = AllAdd(input)
    % Script file: AllAdd.m
    %
    % Purpose:
    % 对输入数据求和
    %
    % Record of revisions:
    % Date     Programmer   Description of change
    % ======== ============ =====================
    % 22/11/1 GeorgeDong32 Version 1.0
    %
    % Defined variables:
    % input 输入数据 input data
    % addResult 数据的和 sum of data
    out1 = sum(input, 1); %对列求和
    addResult = sum(out1, 2); %对行求和
end
