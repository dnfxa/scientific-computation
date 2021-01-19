function[x derf]=dertab(xdata,ydata)
x=xdata;y=ydata;
n=length(x);
h=x(2:end)-x(1:end-1);
derf(1)=(y(2)-y(1))/h(1);derf(n)=(y(end)-y(end-1))/h(n-1);
for k=2:n-1
    derf(k)=(y(k+1)-y(k-1))/(h(k-1)+h(k));
end