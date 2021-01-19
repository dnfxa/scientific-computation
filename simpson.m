function S=simpson(a,b)
%masukkan n genap
n = 0;
while n<10000
    n = n+2;
    h = (b-a)/n;
    x = a:h:b;
    node_ganjil=x(2:2:end-1);
    node_genap=x(3:2:end-2);
    eksak = asec(pi)-asec(pi/2);
    S=(h/3)*(feval('fun',a)+feval('fun',b)+4*sum(feval('fun',node_ganjil))+2*sum(feval('fun',node_genap)));
    eksak = asin(2/pi)-asin(1/pi);
    if (abs(eksak-S)<=0.0001)
        break
    end
end
disp(n)
%fungsi yang diintegralkan
function y = fun(x)
y=1./(x.*sqrt((x.^2)-1));