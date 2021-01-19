function x=gaussian2(A,b)
A1=A;b1=b;
n=length(b);
%membentuk sistem segita atas 
for i=1:n-1
    for j=i+1:n
        if A1(i,i)==0
            error('metode eliminasi gagal')
        end
        lambda=A1(j,i)/A1(i,i);
        for k=i:n
            A1(j,k)=A1(j,k)-lambda*A1(i,k);
        end
        b1(j)=b1(j)-lambda*b1(i);
    end
end
%menjalankan substitusi mundur pada SPL A1x=b1
x=zeros(n,1);%menyiapkan vektor penyelesaian
x(n)=b1(n)/A1(n,n);
for k=n-1:-1:1
    sum=0;
    for j=k+1:n
        sum=sum+A1(k,j)*x(j);
    end
    x(k)=(b1(k)-sum)/A1(k,k);
end
            
    