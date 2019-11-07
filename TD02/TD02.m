
close all;

figure('Name', 'parabole et sa derivee') 
hold on;

axis auto;
X = -100: 100;
Y = parabole(X);
plot(X, Y)


dY = diff(Y)./diff(X);
length(X)
length(dY)
% que fait la fonction diff?
% Calcul la différence entre les point d'un vecteur

% Comparer la courbe suivante :
plot(X(:, 1:length(X)-1),dY,'r')

% Avec celle-ci
%Yd = 2*X;
%plot(X, Yd, 'g')

% et conclure
% Ce sont les même

hold off

figure('Name', 'animation parabole')

% en un point de la parabole, on affiche la tangente (le coefficient directeur est la derivee)
% comprendre comment on obtient cet affichage
hold on;

plot(X,Y)

for i=-80:20:80
    
    plot(i,parabole(i),'or'); %Affichage des point représenté par des cercle rouge
    
    tg =2*i*10+parabole(i); %Calcule de la tangente
    
    plot([i;i+10],[parabole(i);tg],'r') %Affichage de la tangente 
    
    pause(1); %Pause pour rendre l'animation visible
end

%% Exercice 1:
%.1 et .2

% x^2 + 5x + 10
V1 = [10 5 1];
a = valeurPolynome(V1,2);
reverse
%.3
% 3x^3 + 2x^2 + 10x + 50 => 9x^2 + 4x + 10
V2 = [50 10 2 3];
b = derivPoly(V2)


