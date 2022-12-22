% Plot a animated heart
[x, y, z] = meshgrid(linspace(-1.3, 1.3, 512));
val = (x .^ 2 + (9/4) * y .^ 2 + z .^ 2 - 1) .^ 3 -x .^ 2 .* z .^ 3 - (9/80) * y .^ 2 .* z .^ 3;
[faces, verts, colors] = isosurface(x, y, z, val, 0, x);
leng = 60; % Num of Images in the Movie
fleng = length(faces); % The length of faces
M(leng) = struct('cdata', [], 'colormap', []);
figure(1);
hndl = patch('Faces', faces(1:round(fleng / leng), :), 'Vertices', verts);
hndl.FaceColor = [1 0 0];
hndl.LineStyle = 'none';
view(-10, 24);
axis off
axis equal
set(gca, 'ZLim', [-1 1.3]); set(gca, 'XLim', [-1.3 1.3]);
set(gca, 'YLim', [-1.3 1.3]);
camlight
lighting gouraud
M(1) = getframe(gcf);
im{leng} = frame2im(M(1));
im{1} = frame2im(M(1));

for ii = 2:leng
    hndl.Faces = faces(1:round(fleng / leng * ii), :);
    drawnow;
    M(ii) = getframe(gcf);
    im{ii} = frame2im(M(ii));
end

filename = 'heart3D.gif'; % Specify the output file name

for idx = 1:leng
    [A, map] = rgb2ind(im{idx}, 256);

    if idx == 1
        imwrite(A, map, filename, 'gif', 'LoopCount', Inf, 'DelayTime', 0.05);
    else
        imwrite(A, map, filename, 'gif', 'WriteMode', 'append', 'DelayTime', 0.05);
    end

end
