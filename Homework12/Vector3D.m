% Script file: Vector3D.m
%
% Purpose:
% Define and implement a class for 3D vectors.
%
% Record of revisions:
% Date     Programmer   Description of change
% ======== ============ =====================
% 22/11/29 GeorgeDong32 Version 1.0
%
% Defined class:
% Vector3D

classdef Vector3D

    properties
        x;
        y;
        z;
    end

    methods
        % Constructor
        function v = Vector3D(ix, iy, iz)
            v.x = ix;
            v.y = iy;
            v.z = iz;
        end

        % Destructor
        function delete(~)
        end

        % add
        function v = plus(this, obj2)
            v = Vector3D(this.x + obj2.x, this.y + obj2.y, this.z + obj2.z);
        end

        %subtract
        function v = minus(this, v2)
            v = Vector3D(this.x - v2.x, this.y - v2.y, this.z - v2.z);
        end

        % dot product & multiply by scalar
        function d = mtimes(this, obj2)

            if isnumeric(obj2)
                d = Vector3D(this.x * obj2, this.y * obj2, this.z * obj2);
            else
                d = this.x * obj2.x + this.y * obj2.y + this.z * obj2.z;
            end

        end

        % cross product
        function v = cross(this, obj2)
            v = Vector3D(this.y * obj2.z - this.z * obj2.y, this.z * obj2.x - this.x * obj2.z, this.x * obj2.y - this.y * obj2.x);
        end

        % magnitude
        function m = magnitude(this)
            m = sqrt(this.x * this.x + this.y * this.y + this.z * this.z);
        end

        % divide by scalar
        function v = mrdivide(this, s)
            v = Vector3D(this.x / s, this.y / s, this.z / s);
        end

    end

end
