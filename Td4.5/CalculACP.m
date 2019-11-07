function [ res ] = CalculACP( Smpl )
%CALCULACP Summary of this function goes here
%   Detailed explanation goes here
A = cov(Smpl);
[V, D] = eig(A);

Ind = zeros(size(V,2),size(D,1));

for i=1:size(D,1)
    Ind(1,i) = D(i,i);
    Ind(2,i) = i;
end

Ind = sort(Ind,2,'descend');

res = zeros(size(V,2),size(D,1));
for i=1:size(D,1)
    res(:,i) = V(:,Ind(2,i));
end

end

