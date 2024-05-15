clc;
clear;
# 1. Feladat
f1 = @(x) sin(3*x -1) .* cos(2*x);
#fplot(f1)
fminbnd(f1, -1, 0);# 0 körüli intervallum
fminsearch(f1, 0);

# Amelyik közelebbi nullához
fminsearch(f1, 1);
fminsearch(f1, -1);

# 2. Feladat
f2 = @(x) cos(2*x.^2 -3) - sin(x.^3 - x.^2 + 3);
#fplot(f2)
fsolve(f2, 1);
fsolve(f2, -1);
# abszolut értékek közül amelyik közelebb áll

# 3. Feladat
f3 = @(x) x(1).^6 + x(1).^4 .* x(2).^2 - 3.*x(1).^4 + x(1).^2 .*x (2).^2 -1;
#f3 = @(x1, x2) x1.^6 + x1.^4 .* x2.^2 - 3.*x1.^4 + x1.^2 .*x2.^2;
#surf(f3)
[mins, aux] = fminsearch(f3, [-2 2]);
# aux a válasz

# 6. Feladat
p = [1 -12 21 242 -1152 1440];
roots(p);
