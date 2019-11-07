function [ v ] = valeurPolynome( coeff , x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
l = size(coeff,2);
pow = 0:l-1;
tab = repmat(x,1,l);
v = sum(coeff.*(tab.^pow));
end

