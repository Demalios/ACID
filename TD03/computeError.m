function [ ratio ] = computeError( res , label )
%COMPUTEERROR Summary of this function goes here
%   Detailed explanation goes here
nbError = 0;
for i=1:size(res,1)
   if(res(i) ~= label)
       nbError = nbError+1;
   end
end
ratio = nbError / size(res,1);
end

