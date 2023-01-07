% plot a heart
[x, y, z] = meshgrid(linspace(-1.3, 1.3, 512));
val = (x .^ 2 + (9/4) * y .^ 2 + z .^ 2 - 1) .^ 3 -x .^ 2 .* z .^ 3 - (9/80) * y .^ 2 .* z .^ 3;
% Calculate the heart surface
p = isosurface(x, y, z, val, 0);
% Plot the heart surface
hndl = patch(p);
view(-10, 24)
hndl.FaceColor = [1 0 0];
hndl.LineStyle = 'none';
axis equal
camlight
lighting phong

axis off
