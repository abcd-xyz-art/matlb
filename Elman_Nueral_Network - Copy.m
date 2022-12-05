clc
clear all
close all
% Elman Neural Network
% Input
p = [-1 -1 2 2];
% Target
t = [-1 -1 1 1];
% Unknown input
ip=[-1 -1 1 1];
% Syntax
net=newelm([0 1],[5 1],{&#39;tansig&#39;,&#39;purelin&#39;});
view(net)
a=sim(net,p)
% Root Mean Square Error
rmse=((sum((a-t).^2))/4)^0.5
% Mean Bias Error
mbe=(sum(a-t))/4
% Mean Absolute Percentage Error
mape=(sum(abs((a-t))./t))*100/4
a1=sim(net,ip)