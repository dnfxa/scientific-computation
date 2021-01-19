function T=trapesium(a,b)
%masukkan n bulat positif (boleh genap atau ganjil)
    n=1;
while n<1000
    n = n+1;
    h = (b-a)/n;
    x = a:h:b;
    eksak = asin(2/pi)-asin(1/pi);
    node_interior = x(2:end-1);
    T =(h/2)*(feval('fun',a)+feval('fun',b)+2*sum(feval('fun',node_interior)));
    if (abs(eksak-T)<=0.0001)
        break
    end
end
disp(n)
function y = fun(x)
y=1./(x.*sqrt((x.^2)-1));