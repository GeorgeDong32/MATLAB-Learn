% Script file: TestVector3D.m
%
% Purpose:
% Test the Vector3D class.
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/11/29 GeorgeDong32 Version 2.0
%
% Defined variables:
% Vector3D -- Vector3D class
% v1 -- Vector3D object
% v2 -- Vector3D object

% Create two Vector3D objects
v1 = Vector3D(1, 2, 3);
v2 = Vector3D(4, 5, 6);

% Test addition
disp("v1 + v2 = ");
v3 = v1 + v2;
disp(v3);

% Test subtraction
disp("v1 - v2 = ");
v4 = v1 - v2;
disp(v4);

% Test dot product
disp("v1 · v2 = ");
v5 = v1 * v2;
disp(v5);

% Test cross product
disp("v1 x v2 = ");
v6 = v1^v2;
disp(v6);

% Test scalar multiplication
disp("v1 * 2 = ");
v7 = v1 * 2;
disp(v7);

% Test scalar division
disp("v1 / 2 = ");
v8 = v1 / 2;
disp(v8);

% Test magnitude
disp("v1's magnitude is:");
disp(v1.magnitude());
