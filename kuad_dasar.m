function [M,T,S]=kuad_dasar(a,b)
%input: batas integrasi a dan b
%output: ketiga metode kuadratur dasar, M adalah midpoint
%T untuk trapesium, S untuk simpson
M=(b-a)*feval('fun',(a+b)/2);
T=(b-a)/2*(feval('fun',a)+feval('fun',b));
S=(b-a)/6*(feval('fun',a)+4*feval('fun',(a+b)/2)+feval('fun',b));
%fungsi yang diintegralkan
function y=fun(x)
y = x*exp(x^2);