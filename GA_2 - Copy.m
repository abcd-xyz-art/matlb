clear all;
clc;
fun=@(x)(x(1)*sin(sqrt(x(1)-(x(2)+9)))-(x(2)+9)*sin(sqrt(x(2)+0.5*x(1)+9)));
lb=[-20;20];
ub=[20;20];
A=[1 -1;-1 2;2 1];
B=[2;2;3];
[x,fval]=ga (fun,2,A,B,[],[],lb,ub)