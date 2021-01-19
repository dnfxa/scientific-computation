function v=eksp_kdasar(a,b)
%input : batas integrasi a dan b
%output : vektor v seperti diatas
M=(b-a)*feval('fun',(a+b)/2);
T=(b-a)/2*(feval('fun',a)+feval('fun',b));
S=(b-a)/6*(feval('fun',a)+4*feval('fun',(a+b)/2)+feval('fun',b));
eksak = feval('fun1',b)-feval('fun1',a);
v=[eksak M abs(M-eksak) T abs(T-eksak) S abs(S-eksak)];
%fungsi yang diintegralkan
function y=fun (x)
y=x*exp(x^2);
%fungsi hasil integral
function y = fun1(x)
y=0.5*exp(x^2);