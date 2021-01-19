function q = gauss2_bersusun(a,b)
%input = a dan b batas integral, N banyak subinterval
%output =  nilai aproksimasi dengan integrasi gauss bersusun
N = 0;
while N<1000
    N=N+1;
    h = (b-a)/N;
    xx = a:h:b; %partisi domain
    t = [0.5773502692,-0.5773502692]; %absis
    c = [1,1]; %bobot
    q = 0;
    eksak = asin(2/pi)-asin(1/pi);
    for k = 2:N+1;
        x=(h*(t+1)+2*xx(k-1))/2; %absis hasil transformasi
        q0 = (h/2)*sum(c.*feval('fun',x));
        q = q+q0;
    end
    if (abs(eksak-q))<=0.00000001
        break
    end
end
disp(N)
%fungsi yang diintegralkan
function y = fun(x)
y=1./(x.*sqrt((x.^2)-1));