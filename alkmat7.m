# Spline interpoláció
clear;
x = [-2 -1  0  1  2  3];
s = [15, 4  1  7  4 12  9, 8];

xx = linspace(-2.1, 3.1);
yy = spline(x,s,xx);
plot(x,s(2:end-1), '*', xx, yy);

# p = spline(x,s)

# 4. Feladat ===================================================================
clear;

F = @(x) 1 ./ (1 + 25 * x.^2);
x = linspace(-1,1);
plot(x, F(x), 'k')
hold on;

xx = -1:0.2:1;
p = polyfit(xx, F(xx), length(xx)-1);
plot(x, polyval(p,x), 'r');

xx = -1:0.2:1;
y = [0, F(xx), 0];
plot(x, spline(xx,y,x), 'g');
legend('f', 'Lagrange', 'Spline');

hold off;

# 5. Feladat (szorgalmi) =======================================================
clear;
# A(0,0)-ig egyenes
# B(1,1) ponton áthalad
# C(2, 2.5) ponttól megint egyenes

x = [0, 1, 2];
y = [0, 0, 1, 2.5, 0]; # A Két szélén az egyenesek deriváltja (meredeksége)
# Mivel egyenesek, ezért 0 a meredekségük

xx = linspace(0,2);
yy = spline(x, y, xx);

plot(xx, yy);
