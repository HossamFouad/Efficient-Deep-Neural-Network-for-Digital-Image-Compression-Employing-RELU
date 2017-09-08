fprintf('\nHere we multi-layer Neural Networks via\nstochastic gradient descent on the CIFAR-10 and standard images.\n');
startLearning %inside medal_master
% LOAD THE DATASET FOR TRAINING SET AND TEST SET
load selectedcifar.mat
[nObs,nIn]= size(mydataset);
[~,nOut]=size(mydataset);
% DEFINE MULTI-LAYERED ARCHITECTURE
arch.size = [nIn 512 256 8 256 512 nOut];
arch.actFun = {'relu'}; % ALL RELU
arch.lRate = [.01 .01 .01 .01 .01 .01];
arch.opts = {'nEpoch',500, ...
              'costFun','mse'};

% INITIALIZE NETWORK
net1 = mlnn(arch);
% TRAIN & TEST
fprintf('\nTraining a five-hidden-layer neural net...\n');
net1 = net1.train(mydataset,mydataset);

% DISPLAY
fprintf('\n\nFINISHED!!!!!!!!!!!!');