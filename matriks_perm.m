function P = matriks_perm(n,k,l)
I = eye(n);
P=I;
P(:,k) = I(:,1);P(:,1) = I(:,k);