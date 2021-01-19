function S=simpson(a,b,n)
%masukkan n genap
h = (b-a)/n;
x = a:h:b;
if(rem(n,2)~=0)
    error('Anda memasukkan n ganjil, harusnya genap')
end
node_ganjil=x(2:2:end-1);
node_genap=x(3:2:end-2);
S=(h/3)*(feval('fun',a)+feval('fun',b)+4*sum(feval('fun',node_ganjil))+2*sum(feval('fun',node_genap)));
%fungsi yang diintegralkan
function y = fun(x)
y = 1./(1+x.^3);
eksak = log(2)/3 + pi*(3^(1/2))/9;