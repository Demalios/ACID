function [ res ] = myClassify( Test, mu1, sigma1, mu2, sigma2)
%MYCLASSIFY Summary of this function goes here
%   Detailed explanation goes here

res = zeros(size(Test));

for i=1:size(Test,1)
    %Y1 = normpdf(Test(i),mu1,sigma1);
    %Y2 = normpdf(Test(i),mu2,sigma2);
    Y1 = mvnpdf(Test(i,:),mu1,sigma1);
    Y2 = mvnpdf(Test(i,:),mu2,sigma2);
    if(Y1 >= Y2)
        res(i) = 'B';
    else
        res(i) = 'S';
    end
end
end

