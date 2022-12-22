% Calculate the times at which to plot the sine function
t = 0:0.1:10;
% Calculate sin(x)*sin(y) for the first time
a = cos(t(1));
[array1,array2] = meshgrid(-3*pi:pi/10:3*pi,-3*pi:pi/10:3*pi);
z = a .* sin(array1) .* sin(array2);
% Plot the function.
figure(1);
hndl = surf(array1,array2,z);
% ax = gca;
% ax.NextPlot = 'replaceChildren';
xlabel('\bfx');
ylabel('\bfy');
zlabel('\bfAmp');
title(['\bfSine Wave Animation at t = ' num2str(t(1),'%5.2f')]);
% Set the size of the z axes
set(gca,'ZLim',[-1 1]);
% Capture the first frame of the movie
M(length(t))=struct('cdata',[],'colormap',[]);
m = 1;
M(m) = getframe(gcf);
% Now do the animation
for ii = 2:length(t)
% Pause for a moment
drawnow;
%pause(0.1);
% Calculate sine(x) for the new time
a = cos(t(ii));
z = a .* sin(array1) .* sin(array2);
% Update the line
set(hndl, 'ZData', z);
% Update the title
title(['\bfSine Wave Animation at t = '
num2str(t(ii),'%5.2f')]);
% Capture the next frame of the movie
m = m + 1;
M(m) = getframe(gcf);
end
% Now we have the movie, so play it back twice
fig = figure;
movie(fig,M,1,10);
