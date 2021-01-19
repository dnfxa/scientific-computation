%LU dengan pivoting
function x = lu_pivoting(A,b)
n = length(A);
AA = A; bb = b;
m = [];
for i=1:n-1
    t = find(abs(A(i:end,i))==max(abs(A(i:end,i))));
    p = t(1)+i-1;
    A1 = A; b1 = b;
    A1(i,:) = A(p,:);A1(p,:)=A(i,:);
    b1(i)=b(p);b1(p)=b(i);
    m = [m;p];
    for j=i+1:n
        lambda = A1(j,i)/A1(i,i);
        for k=i:n
            A1(j,k)=A1(j,k)-lambda*A(i,k);
        end
        b1(j)=b1(j)-lambda*b1(i);
    end
    A = A1;b=b1;
end
A1 = AA; b1 = bb;
for k=1:n-1
    I = eye(n);
    P=I;
    P(k,:)=I(m(k),:);P(m(k),:) = I(k,:);
    A1 = P*A1;b1 = P*b1;
end
x = dekom_lu(A1,b1)