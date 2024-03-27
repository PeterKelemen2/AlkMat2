t = [-2, -1, 0, 2];
f = [-5, 3, 1, 15];
p = polyfit(t, f, length(t) - 1); # Csökkenő fokszámok (legnagyobbtól konstansig)

xx = linspace(-2.5, 2.5);
yy = polyval(p,xx);

# figure;
# plot(t,f, 'r*', xx, yy, '-')

# Interpoláció (11. dia / 1. feladat) __________________________________________
fun = @(x) exp(x) - sin(pi * x);
t = linspace(0,1,3);
f = fun(t);
p = polyfit(t, f, 2);

xx = linspace(0,1);
y_pol = polyval(p, xx);

# plot(t, f, '*', xx, fun(xx), 'r-', xx, y_pol, 'b-')

# Interpoláció (11. dia / 2. feladat) __________________________________________
t = [2, 4, 5];
f = [16, 38, 52];
p = polyfit(t, f, length(t) - 1) # x^2 + 5x + 2 | (1, 5, 2)

xx = linspace(2, 5);
yy = polyval(p, xx);

s_null = polyval(p, 0)
#v_null =
# figure;
# plot(t, f, 'r*', xx, yy, 'b-')

# Interpoláció (12. dia / 3. feladat) __________________________________________
F = @(x) 1 ./ (1 + 25 * x.^2);
x = linspace (-1,1);
plot(x, F(x), 'k');
hold on;

xx = linspace(-1,1, 11);
f = F(xx);
p = polyfit(xx, f, length(xx)-1);
plot(x, polyval(p, x), 'r');


k = [1:11];
#C = @(k) cos(((2*k - 1) / 22) * pi);
xx =  cos(((2*k - 1) / 22) * pi);
f = 1 ./ (1 + 25 * xx.^2);
p = polyfit(xx, f, length(xx)-1);
plot(x, polyval(p, x), 'g');

# Interpoláció (14. dia / 5. feladat) __________________________________________
# Horner-algoritmus - polyval basically

function y = Horner(p, t)
	c = p(1);
	for egyutthato = p(2:end)
		c = c * t + egyutthato;
	end
	y = c;
end

p = [1 2 3 4];

polyval(p, 2) # Ugyanzt adja vissza
Horner(p, 2)























