

close all
epsilon = 0.1; % critere d'arret
attenuation = 3; % pas du gradient 1/log(attenuation)

% x = -300:2:300;
% y = parabole(x);
% 
% figure('Name', 'recherche du minimum sur une parabole')
% hold on;
% plot(x,y);
% 
% x0 = randi(250,1);
% %x0=250;
% xcurrent = x0 - 2*x0;
% xprec = x0;
% 
% plot(x0,parabole(x0),'ok','MarkerSize',20);
reverse

%Test
 mu = [0 0];
 sigma = [2 1; 1 3];

 x1 = -8:0.5:8;
 y1 = -8:0.5:8;

 [X,Y] = meshgrid(x1, y1);

 Z = ;
 
 scatter3(X(:), Y(:), Z);

%
% 
% 
% while(abs(xprec - xcurrent) > epsilon)
%     
%     plot(xcurrent,parabole(xcurrent),'ob');
%    
%     xprec  = xcurrent;
%     nu = 1/log(attenuation);
%     attenuation = attenuation+1;
%     xcurrent = xprec - nu*2*xprec;
%     nu;
%     pause(1);
% end
% plot(xcurrent,parabole(xcurrent),'xr', 'MarkerSize',20);