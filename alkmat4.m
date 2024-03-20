## Legkisebb n´egyzetes k¨ozel´ıt´esek 2


# polyfit(t,f, 1) - számol
#	t -
# 	f -
#	1 - polinom foka
# polyval() - megjelenít
#
# t = t(:) # Ha oszlopvektor, akkor nem bántja, ha sorvektor, akkor transzponálja!
#
# ones(9); #  9x9 egységmátrix
# ones(9,1); #  9 sorú oszlopvektor
grid on;


t = [0.1, 0.5, 1.2, 1.5, 2, 2.1, 2.4, 3, 3.2]'; #  Információ a folyamatról
f = [3.9, 2.6, -0.8, 0.3, 3.2, 3.8, 3.2, -0.7, -0.9]';
A = [ones(9,1), cos(pi*t), sin(pi*t)];
#plot(t, f, '*--')

x = (A' * A) \ (A' * f);
xx = linspace(0, 3.5);

# Modell:
# F(t) = x1 + x2 cos(pi * t) + x3 sin(pi * t)
# 		(fi1)		  (fi2)           (fi3)

#A = [fi1(t(1)), fi2(t2), fi3(t3);
#	...
#	fi1(t(n)), fi2(n), fi3(n)];
yy = x(1) + x(2)*cos(pi * xx) + x(3)*sin(pi * xx);

plot(t, f, '*', xx, yy)

## Feladatok
# 7. dia - 1. feladat
t = [1 1.2 1.4 1.4 1.5 1.7 1.9 2 2.1 2.2];
f = [4.2 3.8 3.4 3.3 3.3 3 2.8 2.8 2.75 2.7];
t = t(:); # Ez mindenre működik, tegyük oda inkább
f = f(:);
# Modell: f(t) = a + b/t

A = [ones(size(t)), 1 ./ t];
x = (A' * A) \ (A' * f);

xx = linspace(0.9, 2.3); # Szélesebb intervallumot, mint a t vektor

yy = x(1) + x(2) ./ xx; # Itt az xx = t a modellből

plot(t, f, '*', xx, yy);

# 7. dia - 2. feladat
t = [0.1, 0.5, 1.2, 1.5, 2, 2.1, 2.4, 3, 3.2, 3.4, 3.8, 4, 4.2, 4.6, 5];
f = [1, 4.1, 3, 1, -1.5, -1.6, -1.7, -0.4, 0.1, 0.7, 1.6, 1.8, 1.6, 0.2, -2.5];
t = t(:);
f = f(:);
# Modell: f(t) = x1*sin(t) + x2*sin(2*t) + x3*sin(3t)
A = [sin(t), sin(2*t), sin(3*t)];
x = (A' * A) \ (A' * f)

xx = linspace(0, 5.1);

yy = x(1)*sin(xx) + x(2)*sin(2*xx) + x(3)*sin(3*xx);

plot(t, f, '*', xx, yy);

# 8. dia - 3. feladat
t = [15, 46, 74, 105, 135, 166, 196, 227, 258, 288, 319, 349];
f = [-1.7, 0.1, 5.2, 10.3, 15.8, 18.9, 21.1, 20.3, 16.1, 10.2, 4.2, 0.5];
t = t(:);
f = f(:);
# Modell: f(t) = x1 + x2*cos(2*pi * ((t-14) / 365)

A = [ones(size(t)), cos(2*pi * ((t-14) ./ 365))];
x = (A' * A) \ (A' * f);

xx = linspace(14, 350);
yy = x(1) + x(2)*cos(2*pi * ((xx-14) ./ 365));

plot(t, f, '*', xx, yy);

# 9. dia - 4. feladat
clear;
hold off;
pkg load io
trees_src = 'C:\Users\student\Downloads\trees.xlsx'; # Elearning / adatok mappa
trees = xlsread(trees_src);

treeGirth = trees(:,1); # Girth
treeHeight = trees(:,2); # Height
treeVolume = trees(:,3); # Volume
figure;
plot3(treeGirth, treeHeight, treeVolume, '*');
hold on;
xlabel('Girth');
ylabel('Height');
zlabel('Volume');

p = polyfit(treeGirth, treeVolume, 1); # Kiértékelés

xx = linspace(min(treeGirth), max(treeGirth));
yy = polyval(p,xx);

# plot(treeGirth, treeVolume, '*', xx, yy)

# Négyzetes hiba kiszámolása:
v = polyval(p, treeGirth); # Kiértékeljük
mean((v - treeVolume) .^ 2) # Ez az érték valamiért nekünk nem jó

A = [ones(31,1), treeGirth, treeHeight];
x = (A' * A) \ (A' * treeVolume);
mean((A * x - treeVolume) .^ 2) # Na eeez

xx = linspace(min(treeHeight), max(treeHeight), 50); # Height intervallum
yy = linspace(min(treeGirth), max(treeGirth), 50); # Girth intervallum
[X,Y] = meshgrid(xx,yy);
Z = x(1) + x(2)*X + x(3) * Y;
mesh(X,Y,Z);




































