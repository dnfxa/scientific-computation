function x=gaussian1(A,b)
[A1,b1]=spl_segitiga_atas(A,b);%menjadikan bentuk segitiga atas
x=subt_mundur(A1,b1);%menerapkan subtitusi mundur