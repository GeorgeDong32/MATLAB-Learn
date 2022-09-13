% Script file: Exercise2_18.m
%
% Purpose: 
% To compute unit vector of the given vector
%
% Record of revisions:
% Date Programmer Description of change
% ==== ========== =====================
% 22/09/13 GeorgeDong32 Original code 
%
% Define variables: 
% x the x of the given vector
% y the x of the given vector
% z the x of the given vector
% u_x the x of the unit vector
% u_y the y of the unit vector
% u_z the z of the unit vector
% mc mode control of the function

% get user input, first mc,then the given vector
mc = input('Please choose the calculate mode, 2 for 2D, 3 for 3D\nmode:');
if(mc == 2)
    x = input('Please input x\nx:');
    y = input('please input y\ny:');
    u_x = x / sqrt(x^2 + y^2);
    u_y = y / sqrt(x^2 + y^2);
    fprintf('The unit vector is %.4fi + %.4fj\n', u_x, u_y);
else
    x = input('Please input x\nx:');
    y = input('please input y\ny:');
    z = input('Please input z\nz:');
    u_x = x / sqrt(x^2 + y^2 + z^2);
    u_y = y / sqrt(x^2 + y^2 + z^2);
    u_z = z / sqrt(x^2 + y^2 + z^2);
    fprintf('The unit vector is %.4fi + %.4fj + %.4fk', u_x, u_y,u_z);
end



