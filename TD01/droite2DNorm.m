function [ y ] = droite2DNorm( x,n,p )
vd = [-n(2),n(1)];
y = droite2DVD(x,vd,p);
end

