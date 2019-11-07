function [ Train , Test ] = extractTestAndTrain( VT, sizeTest, sizeTrain )
%EXTRACTTESTANDTRAIN Summary of this function goes here
%   Detailed explanation goes here

sizeVT = size(VT,1);

TrainIndices = randperm(sizeVT, sizeTrain + sizeTest);
Train = VT(TrainIndices(:,1:sizeTrain),:);
Test = VT(TrainIndices(:,sizeTrain+1:sizeTrain + sizeTest),:);
end

