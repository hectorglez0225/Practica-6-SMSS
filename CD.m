function dx=CD(t, x)

R = 10;
L = 2e-3;
C = 10e-6;
Uin = 32;

w=4e-6; %0.0000004
P=1e-5; %0.000001
d=0:P:t;
oldparam = sympref('HeavisideAtOrigin', 1);

%d = pulstran(t-1.9999e-6, d, 'rectpuls', w)*Uin;
d = heaviside(t)*Uin*0.385;

dx = zeros(2,1);

dx(1) = (1/L)*d - (1/L)*(x(2));
dx(2) = (1/C)*(x(1)) - (1/(R*C))*(x(2));

