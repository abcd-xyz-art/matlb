clear all;
clc;
% genetic algorithem
%fun=@(x)(x1*sin(sqrt(x1-(x2+9)))-(x2+9)*sin(sqrt(x2+0.5*x1+9))
for i=1:1:10
fun=@(x)(x(1)*sin(sqrt(x(1)-(x(2)+9)))-(x(2)+9)*sin(sqrt(x(2)+0.5*x(1)+9)));
lb=[-20;20];
ub=[20;20];

[x,fval]= ga (fun,2,[],[],[],[],lb,ub)
 fval_m=abs(fval)
 
end
%plot(x,fval_m)
