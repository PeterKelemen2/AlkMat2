clc;
clear;

t = [2 5 7 8 10]';
f = [1.51 1.22 1.12 1.14 1.15]';

A = [ones(size(t)), 1./t];
x = (A' * A) \ (A' * f);
y = x(1) + x(2) / 6.5;

# ====

p = polyfit(-1:2,[0 -1 0.5 3],2);
               # [0 -1 0.5 3]
x = linspace(-1,2, 18);
y = polyval(p,x)

# ====

t=(0:0.2:1)';
f=[1.1333, 2.3943, 3.0939, 2.9088, 2.3317, 1.0205]';
z=[0.1,0.3];

A = [ones(size(t)), sin(pi * t)];
x = (A' * A) \ (A' * f);
y = x(1) + x(2) * sin(pi * z);

# ====

t = [4 4 6 8 10];
f = [8.07 8.11 11.84 15.51 19.23];
p = polyfit(t, f, 1);
polyval(p,8.5);