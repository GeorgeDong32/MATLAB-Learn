% Script file: TestVector3D.m
%
% Purpose:
% Test the Vector3D class.
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/11/29 GeorgeDong32 Version 1.0
%
% Defined variables:
% Vector3D -- Vector3D class
% v1 -- Vector3D object
% v2 -- Vector3D object

v1 = Vector3D(1, 2, 3);
v2 = Vector3D(4, 5, 6);

v3 = v1 + v2;
disp(v3);

v4 = v1 - v2;
disp(v4);

v5 = v1 * v2;
disp(v5);

v7 = v1 * 2;
disp(v7);

v8 = v1 / 2;
disp(v8);

disp(v1.magnitude());

v6 = v1.crosss(v2);
disp(v6);
