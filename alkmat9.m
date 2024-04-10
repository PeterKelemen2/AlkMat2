# +------------------------+
# | Nemlineáris egyenletek |
# +------------------------+

clc;clear;
f = @(x) 4 * cos(x) - x;
fzero(f,-4)
fzero(f,-2)
fzero(f,1)

clc;clear;
f = @(x) 13 - 9*cos(x).^2 - 12*sin(x);
x = fsolve(f,0);

#x = fminbnd(f, xmin, xmax
x = fminbnd(f,0,1);
[x,fval] = fminbnd(f,2,3)

clc;clear;
p = [2 0 -1 1];
r = roots(p)

# ==== 1. feladat =========================
clc;clear;
a = @(x) 3*x - cos(x);
fzero(a, 3)
fsolve(a, 3)
# fplot(a) # Ilyenkor nem kell linspace után kiértékelni

f_p = [1 -1 -2 -2 4]; # Mert ez csak egy sima polinom
# [xopt, fopt] = fzero(f_p, 0);

# +----------------------------------------+
# | Nemlineáris egyenletrendszer megoldása |
# +----------------------------------------+

clc;clear;
f = @(x) [x(1)^2 + 2*x(2)^2/x(1) - 5,
		  x(2)^2 - x(1)*x(2) + 1];
x0 =0 ;
[gyok, fvertek] = fsolve(f, x0)




























