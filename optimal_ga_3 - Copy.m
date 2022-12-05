clear all;
clc;
for i=1:1:10
fun=@(p)((500+5.3*p(1)+0.004*p(1)^2)+(400+5.5*p(2)+0.006*p(2)^2)+(200+5.8*p(3)+0.009*p(3)^2))+10^5*((p(1)+p(2)+p(3)-975)^2);
lb=[200 150 100];
ub=[450 350 225];
nvars=3;
%A=[];
%B=[];
%Aeq=[];
%beq=[];
%C=[];
[x, fval]=particleswarm(fun,nvars,lb,ub)
y=sum(x)
end