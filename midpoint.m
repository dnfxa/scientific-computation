function M=midpoint(a,b)
%masukkan n genap
n = 0;
while n<1000
    n = n+2;
    h = (b-a)/n;
    x=a:h:b; %mendefinisikan partisi seragam
    node_ganjil=x(2:2:end-1); %mengumpulkan node dengan indeks ganjil
    M=2*h*sum(feval('fun',node_ganjil));
    eksak = asin(2/pi)-asin(1/pi);
    if (abs(eksak-M)<=0.0001)
        break
    end
end
disp(n)
%fungsi yang diintegralkan 
function y = fun(x)
y=1./(x.*sqrt((x.^2)-1));