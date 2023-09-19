clc
clear
load Hist
load label
k=10;
tic

% t = templateSVM('KernelFunction','linear','Standardize',1);
  t = templateKNN('NumNeighbors',1,'Standardize',1,...
            'Distance','spearman','DistanceWeight','inverse');  
  Mdl = fitcecoc(Hist,label,'learner',t);
  CVMdl = crossval(Mdl,'kfold',k);
  a=CVMdl.kfoldLoss;
  b=100-a*100;
toc/600
b
