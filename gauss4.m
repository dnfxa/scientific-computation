function q = gauss4(a,b)
%input = a dan b sebagai batas integral
%output = q nili aproksimasi dengan integral gauss
c = [0.8611363116, 0.3399810436, -0.3399810436, -0.8611363116]; %absis
t = [0.3478548451, 0.6521451549, 0.6521451549, 0.3478548451]; %bobot
x = ((b-a)*t+b+a)/2; %absis hasil transformasi
q=(b-a)/2*sum(c.*feval('fun',x));
%fungsi yang diintegralkan
function y = fun(x)
y=x.*exp(x.^2);