function[x,der]=derfun2(xdata)
x=xdata;
n=length(x);
der=zeros(1,n); %array untuk derivatif
h1=x(2)-x(1); hn=x(n)-x(n-1); %mesh pertama dan terakhir
der (1)=(feval('fun',x(1)+h1)-feval('fun',x(1)))/h1; %maju
der(n)=(feval('fun',x(n))-feval('fun',x(n)-hn))/hn; %mundur
for k=2:n-1 %indeks titik interior
    h1=x(k)-x(k-1); h2=x(k+1)-x(k);
    der(k)=(feval('fun',x(k)+h2)-feval('fun',x(k)-h1))/((h1+h2));
end
%fungsi yang dideferensialkan
function y=fun(x)
y=exp(-x.^2);