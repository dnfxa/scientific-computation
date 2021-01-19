function T1 = int_tab(datax,datay)
%input = datax adalah array para x_k, datay adalah array para y_k
a1=datax(2:end); a2=datax(1:end-1); h=a1-a2; %mendefinisikan array h
b1=datay(1:end-1); b2=datay(2:end); yy=b1+b2; %mendefinisikan array yy
T1 = sum((h/2).*yy);