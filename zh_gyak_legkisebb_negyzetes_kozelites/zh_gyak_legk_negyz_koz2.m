clc;
clear;

t = [3 4 5 7 9];
f = [1.18 1.02 1.01 0.99 0.91];
t = t(:);
f = f(:);

A = [ones(size(t)), 1 ./ t];

x = (A' * A) \ (A' * f);

y = x(1) + x(2) / 4.5;

# ====
clear;

t=(1:0.5:4)';
f=[2.6538,2.6167,2.3741,1.9862,1.2985,1.5407,2.0566]';
z=[1.3,2.4];

t = t(:);
f = f(:);

A = [ones(size(t)), cos(pi * t), 1./t];

x = (A' * A) \ (A' * f);

y = x(1)    +    x(2) * cos(pi * z)    +    x(3) ./ z;


# ====

t = [0 5 8 9 10];
f = [1.02 7.57 11.54 12.84 14.17];
t = t(:);
f = f(:);

A = [ones(size(t)), t];
x = (A' * A) \ (A' * f)

meredekseg = x(2);
konstant = x(1);

helyettesites = x(2) * 0.5 + x(1)

# ====

t = [-1 0 1]';
f = [-1 0.5 1]';

xx = linspace(-1, 1, 18);

x = polyfit(t,f,1);
y = x(1) .* xx + x(2);


























