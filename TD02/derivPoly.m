function [ deriv ] = derivPoly( coeff )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
l = size(coeff,2);
pow = 0:l-1;
val = coeff.*pow;
deriv = val(:,2:l)
end

