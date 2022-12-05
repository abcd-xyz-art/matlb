clear all;
clc;
p=[1 1 2 2;0 5 0 5]
t=[-1 -1 1 1]
ip=[-1 -1 2 2;0 4 0 4]
%net=newff(minmax(p),[3,1],{'tansig','purelin'},'trainlm');
net=newff(minmax(p),[3,1],{'tansig','purelin'},'trainlm');
net.trainParam.show=5;
net.trainParam.goal=1e-5;
net.trainParam.epochs=300;
[net,tr]=train(net,p,t);
a=sim(net,p);
a1=sim(net,ip);
