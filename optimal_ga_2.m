clear all;
clc;
%c1=500+5.3*p1+0.004*p1^2;
%c2=400+5.5*p2+0.006*p2^2;
%c3=200+5.8*p3+0.009*p3^2;
for i=1:1:10;
fun=@(p)(500+5.3*p(1)+0.004*p(1)^2)+(400+5.5*p(2)+0.006*p(2)^2)+(200+5.8*p(3)+0.009*p(3)^2);
lb=[200 150 100];
ub=[450 350 225];
A=[];
B=[];
Aeq=[];
Beq=[];
[x, fval]=ga(fun,3,A,B,Aeq,Beq,lb,ub)
y=sum(x)
end