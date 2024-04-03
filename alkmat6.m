# +----------------------+
# | Hermite-interpoláció |
# +----------------------+

#-1 | 7
#-1 | 7
# 1 | 3
# 1 | 3

# (0,0) - (1,1) - egy egyenes
# (2,2) - (3,2) - még egy egyenes
# Ezeket kellene összekötni

t = [1, 1];
f = [2, 2];
f_1_derivalt = [1, 0]; # Meredeksége basically

# 1 | 1
#   |     1
# 1 | 1	      0
#   |	  1      -1
# 2 | 2		 -1
#   |	  1
# 2 | 2
#
# H3(t) = 1 + 1(t-1) + 0(t-1)(t-1) + -1(t-1)(t-1)(t-2)
# H3(t) = -t^3 + 4*t^2 - 4*t + 2

plot([0,1], [0,1], 'b-', [2,3], [2,2], 'b-');
hold on;
xx = linspace(1,2);
yy = polyval([-1, 4, -4, 2], xx);

plot(xx, yy, 'r-');


# Taylor polinom (Hermitehez)
# f(x0) + f'(x0) / 1! * (x - x1) + f''(x0) / 2! * (x - x1)^2 +
# + f('*n)(x0) / n! * (x - x1) ^ n

F = @(x) sin(pi * x) .^2 + exp(x);
F_d1 = @(x) 2*sin(pi * x) .* cos(pi * x)*pi + exp(x);
F_d2 = @(x) -2*pi^2*sin(pi*x).^2 + 2*pi^2*cos(pi*x).^2 + exp(x);

xx = linspace(0, 1);
taylor_pol = @(x) F(x0) + F_d1(x0) * (x - x0) + F_d2(x0) / 2 * (x - x0).^2;

kis_kornyezet = (maxx-minx) * 0.2;
xx = linspace(x0 - kis_kornyezet, x0 + kis_kornyezet);
plot(xx, taylor_pol(xx));






















