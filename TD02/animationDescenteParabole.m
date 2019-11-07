

close all
epsilon = 0.1; % critere d'arret
attenuation = 3; % pas du gradient 1/log(attenuation)

x = -300:2:300;
y = parabole(x);

figure('Name', 'recherche du minimum sur une parabole')
hold on;
plot(x,y);

x0 = randi(250,1);
%x0=250;
xcurrent = x0 - 2*x0;
xprec = x0;

plot(x0,parabole(x0),'ok','MarkerSize',20);


while(abs(xprec - xcurrent) > epsilon)
    
    plot(xcurrent,parabole(xcurrent),'ob');
   
    xprec  = xcurrent;
    nu = 1/log(attenuation);
    attenuation = attenuation+1;
    xcurrent = xprec - nu*2*xprec;
    nu;
    pause(1);
end
plot(xcurrent,parabole(xcurrent),'xr', 'MarkerSize',20);
%%
V3 = [10 1 2]
v4 = derivPoly(V3)
%% Exercice 3 :

close all
epsilon = 0.1; % critere d'arret
attenuation = 3; % pas du gradient 1/log(attenuation)

x = 0:0.2:6;
V1 = [30 -61 41 -11 1];
y = x.^4 -11*x.^3 +41*x.^2 -61*x +30;
figure('Name', 'recherche du minimum sur une parabole')
hold on;
plot(x,y);

x0=5;
%xcurrent = x0 - 2*x0;
xcurrent = x0 - valeurPolynome(derivPoly(V1),x0);
xprec = x0;

% plot(x0,parabole(x0),'ok','MarkerSize',20);
plot(x0,valeurPolynome(V1,x0),'ok','MarkerSize',20);

while(abs(xprec - xcurrent) > epsilon)
    
    % plot(xcurrent,parabole(xcurrent),'ob');
    plot(xcurrent,valeurPolynome(V1,xcurrent),'ob');
    
    xprec  = xcurrent;
    nu = 1/log(attenuation);
    attenuation = attenuation+1;
    xcurrent = xprec - nu*valeurPolynome(derivPoly(V1),xprec);
    nu;
    pause(1);
end

% plot(xcurrent,parabole(xcurrent),'xr', 'MarkerSize',20);
%plot(xcurrent,valeurPolynome(V1,xcurrent),'xr', 'MarkerSize',20);


