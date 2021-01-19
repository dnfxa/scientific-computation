function [A1,b1]=spl_segitiga_atas(A,b)
A1=A;b1=b;
n=length(b1);
for i=1:n-1
    for j=i+1:n
        if A1(i,i)==0
            error('metode eliminasi gagal')
        end
        lambda=A1(j,i)/A1(i,i);
        for k=i:n
            A1(j,k)=A1(j,k)-lambda*A1(i,k)
        end
        b1(j)=b1(j)-lambda*b1(i)
    end
end

       