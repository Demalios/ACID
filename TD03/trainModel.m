function [ mu, sigma ] = trainModel( trainingSet )
%TRAINMODEL Summary of this function goes here
%   Detailed explanation goes here

mu = mean(trainingSet);
%sigma = sqrt(var(trainingSet));
sigma = cov(trainingSet);
end

