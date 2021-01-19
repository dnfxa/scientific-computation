function x=subt_maju(A,b)
%input:matriks A dan vektor b
%output:vektor penyelesaian x
n = length(b);%ukuran sisitem
x=zeros(n,1);%menyiapkan vektor penyelesaian
x(1)=b(1)/A(1,1);
for k=2:n
    sum=0;
    for j=1:k-1
        sum=sum+A(k,j)*x(j);
    end
    x(k)=(b(k)-sum)/A(k,k);
end