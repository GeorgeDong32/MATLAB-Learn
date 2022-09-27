% Script file: Exercise4_13.m
%
% Purpose: 
% Dealing with Refraction Issues
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/09/27 GeorgeDong32 Original code 
%
% Define variables: 
% theta_in Incidence angle
% theta_out Angle of refraction
% n_1 Index of Refraction 1
% n_2 Index of Refraction 2

% Input and data processing
theta_in = input('Please input the incidence angle(degree)');
n_1 = input('Please input n1');
n_2 = input('Please input n2');
theta_out = asind((n_1/n_2) * sin(theta_in/(2 * pi)));

% Draw