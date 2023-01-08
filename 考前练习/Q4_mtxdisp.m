function Q4_mtxdisp(cmatrix)
    % Script file: Q4_mtxdisp.m
    %
    % Purpose:
    % This function displays a matrix in a formatted way.
    %
    % Record of revisions:
    % Date     Programmer   Description of change
    % ======== ============ =====================
    % 23/1/8  GeorgeDong32 Version 1.0
    %
    % Defined variables:
    % cmatrix -- the matrix to be displayed
    l = length(cmatrix);

    for i = 1:1:2

        for j = 1:1:l

            if (abs(cmatrix(i, j)) < 1)
                fprintf('            ')
            elseif (imag(cmatrix(i, j)) == 0)
                fprintf('    %.2f    ', real(cmatrix(i, j)))
            else
                fprintf('%.2fexp(%.2fi)', sqrt(real(cmatrix(i, j) ^ 2 + imag(cmatrix(i, j) ^ 2))), atan(imag(cmatrix(i, j)) / real(cmatrix(i, j))))
            end

            if (j == l)
                fprintf('\n');
            end

        end

    end

end
