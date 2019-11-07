%% Exercice 1 :

% Récupère les données du fichier sous forme de structure
M1 = load('VTSaumonBar.mat');

% Récupère les données pour une variable sous forme de structure
M2 = load('VTSaumonBar.mat', 'VTSaumon');

M3 = load('VTSaumonBar.mat', 'VTBar');

% Récupère les données contenue dans la structure
%MS = getfield(load('VTSaumonBar.mat', 'VTSaumon'),'VTSaumon');
MS = M1.VTSaumon;

%MB = getfield(load('VTSaumonBar.mat', 'VTBar'),'VTBar');
MB = M1.VTBar;
% Affiche l'histogramme

hold('on');

% Premier en bleu
histogram(MS);

% Deuxième en orange
histogram(MB);

%% Exercice 2 :

M1 = load('VTSaumonBar2.mat');

VTSaumon = M1.VTSaumon;

VTBar = M1.VTBar;
sizeVTSaumon = size(M1.VTSaumon,1);

sizeVTBar = size(M1.VTBar,1);

nbIter = 100;
sizeTrain = 400;
for i=1:nbIter 
%% extraction de l’ensemble d’entrainement

% TrainSaumonIndices = randperm(sizeVTSaumon, sizeTrain);
% TrainBarIndices = randperm(sizeVTBar,sizeTrain);
% TrainSaumon = VTSaumon(TrainSaumonIndices);
% TrainBar = VTBar(TrainBarIndices);
[TrainBar , TestBar ] = extractTestAndTrain(VTBar,sizeTrain,sizeVTBar-sizeTrain);
[TrainSaumon , TestSaumon ] = extractTestAndTrain(VTSaumon,sizeTrain,sizeVTSaumon-sizeTrain);
%% entrainement

[muSaumonTrain , sigmaSaumonTrain] = trainModel(TrainSaumon);
% muSaumonTrain = mean(TrainSaumon);
% sigmaSaumonTrain = sqrt(var(TrainSaumon));
% 
[muBarTrain , sigmaBarTrain] = trainModel(TrainBar);
% muBarTrain = mean(TrainBar);
% sigmaBarTrain = sqrt(var(TrainBar));
%% test - la fonction myClassify renvoie un vecteur de labels ("B" pour bar, "S" pour saumon)

% TestBar = VTBar;
% TestSaumon = VTSaumon;
%ResBar = myClassify(TestBar, muBarTrain, sigmaBarTrain,muSaumonTrain, sigmaSaumonTrain);
%ResSaumon = myClassify(TestSaumon, muBarTrain, sigmaBarTrain, muSaumonTrain, sigmaSaumonTrain);
ResBar = maxPostClassify(TestBar, muBarTrain, sigmaBarTrain, sizeVTBar , muSaumonTrain, sigmaSaumonTrain, sizeVTSaumon);
ResSaumon = maxPostClassify(TestSaumon, muBarTrain, sigmaBarTrain, sizeVTBar , muSaumonTrain, sigmaSaumonTrain, sizeVTSaumon);
%% récupération des erreurs
nbErrorBar = computeError (ResBar, 'B');
nbErrorSaumon = computeError (ResSaumon, 'S');

TotalErrorBar(1,i) = nbErrorBar;
TotalErrorSaumon(1,i) = nbErrorSaumon;

end;
hold('on');
plot(1:nbIter,TotalErrorBar);
plot(1:nbIter,TotalErrorSaumon);
ErrorBar = mean(TotalErrorBar)
ErrorSaumon = mean(TotalErrorSaumon)
GlobalError = (ErrorBar*sizeVTBar + ErrorSaumon*sizeVTSaumon)/(max(sizeVTBar,sizeVTSaumon)*2)


