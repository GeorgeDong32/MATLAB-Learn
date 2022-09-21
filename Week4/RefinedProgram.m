% Script file: RefinedProgram.m
%
% Purpose: 
% solve the roots of the equation
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/09/20 GeorgeDong32 Original code 
%
% Define variables: 
% a coefficient of x^2 term of equation
% b coefficient of x term of equation
% c constant of equation
% discriminant discriminant of the equation
% imag_part image part of complex roots
% real_part real part of complex roots
% x1 first solution of equation 
% x2 second solution of equation

% Prompt the user for the coefficients of the equation
disp ('This program solves for the roots of a quadratic ');
disp ('equation of the form A*X^2 + B*X + C = 0. ');
a = input ('Enter the coefficient A: ');
b = input ('Enter the coefficient B: ');
c = input ('Enter the coefficient C: ');
% input filter
if(isnan(a) || isnan(b) || isnan(c))
    error("Input Not a Number(NaN)!")
elseif(~isnumeric(a) || ~isnumeric(b) || ~isnumeric(c))
    error("Input type error!")
end

% Calculate discriminant
discriminant = b^2 - 4 * a * c;
% Solve for the roots, depending on the value of the discriminant 
if discriminant > 0 % there are two real roots, so...
    x1 = ( -b + sqrt(discriminant) ) / ( 2 * a );
    x2 = ( -b - sqrt(discriminant) ) / ( 2 * a );
    disp ('This equation has two real roots:');
    fprintf ('x1 = %f\n', x1);
    fprintf ('x2 = %f\n', x2);
elseif discriminant == 0 % there is one repeated root, so...
    x1 = ( -b ) / ( 2 * a );
    disp ('This equation has two identical real roots:');
    fprintf ('x1 = x2 = %f\n', x1);
else % there are complex roots, so ...
    real_part = ( -b ) / ( 2 * a );
    % uncomplete refine -- 复数求解
    imag_part = sqrt (discriminant) / ( 2 * a );
    root1 = real_part + imag_part;
    root2 = real_part - imag_part;
    disp ('This equation has complex roots:');
    if real(root1) == 0
        fprintf('x1 = %f i\n', imag(root1) );
    elseif imag(root1) == 0
        fprintf('x1 = %f\n', real(root1));
    else
        if imag(root1) < 0
            fprintf('x1 = %f -i %f\n', real(root1), abs(imag(root1)) );
        else
            fprintf('x1 = %f +i %f\n', real(root1), imag(root1) );
        end        
    end

    if real(root2) == 0
        fprintf('x2 = %f i\n', imag(root2) );
    elseif imag(root2) == 0
        fprintf('x2 = %f\n', real(root2));
    else
        if imag(root2) < 0
            fprintf('x2 = %f -i %f\n', real(root2), abs(imag(root2)) );
        else
            fprintf('x2 = %f +i %f\n', real(root2), imag(root2) );
        end
    end
end


