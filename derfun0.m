function [dyf,dyb,dyc]=derfun0(x0,h)
dyf = (feval('fun',x0+h)-feval('fun',x0))/h
dyb = (feval('fun',x0)-feval('fun',x0-h))/h
dyc = (feval('fun',x0+h)-feval('fun',x0-h))/(2*h)
function y =fun(x)
y = exp(-x.^2);