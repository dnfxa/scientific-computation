function[x,dermun,dermaj,derpus]=derfun11(a,b,h)
x=a:h:b;
n=length(x);
xx=a-h:h:b+h;
dermun=(feval('fun',x)-feval('fun',xx(1:end-2)))/h;
dermaj=(feval('fun',xx(3:end))-feval('fun',xx))/h;
derpus=(feval('fun',xx(3:end))-feval('fun',xx(1:end-2)))/h;
%fungsi yang dideferensialkan
function y=fun(x)
y=exp(-x.^2);