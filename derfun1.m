function [x, dermun, dermaj, derpus]=derfun1(a,b,h)
x = a:h:b;
n = length(x);
for k=1:n
    dermaj = (feval('fun',x(k)+h)-feval('fun',x(k)))/h;
    dermun = (feval('fun',x(k))-feval('fun',x(k)-h))/h;
    derpus = (feval('fun',x(k)+h)-feval('fun',x(k)-h))/(2*h);
end
function y = fun(x)
y = exp(-x.^2);