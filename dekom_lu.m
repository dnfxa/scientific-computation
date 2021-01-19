function x = dekom_lu(A,b)
n = length(A);
%membangun matriks L dan U
L = eye(n);U = eye(n);
for k=1:n-1
    R=zeros(n);
    R(k+1:n,k)=A(k+1:n,k)/A(k,k);
    M = eye(n)-R;
    U = M*A;
    L = L+R;
    A=U;
end
%Menyelesaikan Ly=b dengan substitusi maju
y = subt_maju(L,b);
x = subt_mundur(U,y)