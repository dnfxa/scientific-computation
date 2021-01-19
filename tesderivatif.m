function[h,r,err]=tesderivatif(M)
h=1;a=sqrt(2);
F1=feval('fun3',a);
h=zeros(M,1);h(1)=1;
r=zeros(M,1);
for k=1:M
    F2=feval('fun3',a+h);
    d=F2-F1;
    r(k)=d(k)/h(k);
    h(k+1)=h(k)/2;
end
h(end)=[];
err=abs(r-1/3); %pendefinisian galat
[(1:M)',h,r,err] %menampilkan data keluaran
%fungsi yang dideferensialkan
function y=fun3(x)
y=atan(x);