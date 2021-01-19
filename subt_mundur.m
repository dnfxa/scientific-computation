function x=subt_mundur(A,b)
%input:matriks A dan vektor b
%output:vektor penyelesaian x
n = length(b);%ukuran sistem
x = zeros(n,1);%menyiapkan vektor penyelesaian
x(n)= b(n)/A(n,n);
for k=n-1:-1:1
    sum=0;
    for j=k+1:n
        sum=sum+A(k,j)*x(j);
    end
    x(k)=(b(k)-sum)/A(k,k);
end