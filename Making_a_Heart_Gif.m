   clc
   clear 
   close all
   t=0:.1:6.3;
   x=16*(sin(t)).^3;
   y=13.*cos(t)-5.*cos(2.*t)-2.*cos(3.*t)-cos(4.*t);
   filename = 'PDE_sol.gif';
   for i=1:size(t,2)
       plot(x,y,'r')
       hold on
       axis off
       plot(x(i),y(i),'*')
       drawnow
       frame = getframe(1);
       im = frame2im(frame);
       [imind,cm] = rgb2ind(im,256);

       if i == 1;
           imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
       else
           imwrite(imind,cm,filename,'gif','WriteMode','append');
       end
       clf
   end




