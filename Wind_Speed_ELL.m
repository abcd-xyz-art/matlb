clc
clear all
close all
% Elman Neural Network for wind speed prediction
% Inputs
% Solar Radiation
filename = 'sushil.xlsx';
data = xlsread(filename);
pp=xlsread('sushil.xls',6);
p=pp(1:800,:)
% Target Wind Speed
tt=xlsread('sushil.xls',1);
t=tt(1:800,:)
t1=tt(801:852,:)
% Unknown input
ip=pp(801:852,:)
net=newelm([0 1],[5 1],{'tansig','logsig'});
view(net)

a=sim(net,p')
% Root Mean Square Error
rmse=((sum((a-t').^2))/800)^0.5
% Mean Bias Error
mbe=(sum(a-t'))/800
% Mean Absolute Percentage Error
mape=(sum(((a-t'))./t'))*100/800
% Error Analysis for Testing
a1=sim(net,ip')
% Root Mean Square Error
rmse1=((sum((a1-t1').^2))/52)^0.5
% Mean Bias Error
mbe1=(sum(a1-t1'))/52
% Mean Absolute Percentage Error
mape1=(sum(((a1-t1'))./t1'))*100/52
plot(a1','r')
hold all
plot(t1','b')