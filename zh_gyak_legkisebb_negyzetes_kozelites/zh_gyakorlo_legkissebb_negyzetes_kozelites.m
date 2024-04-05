# zh_gyakorlo_legkissebb_negyzetes_kozelites
clc;
clear;

t = [2 4 6 8 9];
f = [1.92 1.59 1.42 1.4 1.34];

t = t(:);
f = f(:);

A = [ones(size(t)), 1./t];
x = (A' * A) \ (A' * f);

y = x(1) + x(2) / 6.5;

# ====

t = [2 4 5 6 8];
f = [4.48 8.43 10.46 12.34 16.3];
t = t(:);
f = f(:);

A = [t, ones(size(t))];
x = (A' * A) \ (A' * f);

meredekseg = x(1);
konstans = x(2);

2.5 * x(1) + x(2);

# ====

t=(0:0.2:1)';
f=[1.0938, 2.1506, 2.1504, 2.5142, 2.6118, 2.8889]';
z=[0.1,0.3];

t = t(:);
f = f(:);

A = [ones(size(t)), sqrt(t)];
x = (A' * A) \ (A' * f);

y = x(1) + x(2) .* sqrt(z);

# ====

t = [-1 0 1 2];
f = [0.5 -1 0 3];
t = t(:);
f = f(:);

xx = linspace(-1,2,17);

A = [t, ones(size(t))];
#x = (A' * A) \ (A' * f)
x = polyfit(t, f, 2)

yy = x(1) .* xx.^2 + x(2) .* xx + x(3);

























