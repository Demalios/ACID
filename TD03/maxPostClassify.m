function [ res ] = maxPostClassify( Test, mu1, sigma1, q1, mu2, sigma2 ,q2 )
%MAXPOSTCLASSIFY Summary of this function goes here
%   Detailed explanation goes here

p1 = q1/(q1+q2);
p2 = 1-p1;
res = zeros(size(Test));

for i=1:size(Test,1)
    %Y1 = normpdf(Test(i),mu1,sigma1);
    %Y2 = normpdf(Test(i),mu2,sigma2);
     Y1 = mvnpdf(Test(i,:),mu1,sigma1);
     Y2 = mvnpdf(Test(i,:),mu2,sigma2);
    if(Y1*p1 >= Y2*p2)
        res(i) = 'B';
    else
        res(i) = 'S';
    end
end
end

