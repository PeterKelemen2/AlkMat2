clc;
clear;
t = [-1 0 1 2]';
f = [0 -1 0 2.5]';

p = polyfit(t,f,2);
x = linspace(-1,2,16);

y = polyval(p,x);

# ====

t = [4 5 7 9 10]';
f = [7.99 9.78 13.34 16.93 18.68]';

p = polyfit(t,f,1);
x = polyval(p, 0.5);

# ====

clear;
t = [2 7 10 10 10]';
f = [1.71 1.07 1.02 1.08 1.06]';

A = [ones(size(t)), 1./t];
x = (A' * A) \ (A' * f);
y = polyval(x, 5.5);
y = x(1) + x(2) / 5.5

# ====
clear;
function [x,y]=fun(t,f,z)
	A = [ones(size(t)), exp(-1 * t.^2), cos(pi * t)];
	x = (A' * A) \ (A' * f);
	y = x(1) + x(2) * exp(-1 * z.^2) + x(3) * cos(pi .* t);
end

t=(1:0.5:4)';
f=[0.0713, 1.2781,2.5880,1.1313,-0.4786,1.1888,2.4853]';
z=[1.2,2.9];

A = [ones(size(t)), exp(-1 * t.^2), cos(pi * t)];
x = (A' * A) \ (A' * f)
y = x(1) +     x(2) * exp(-1 .* z.^2) +     x(3) * cos(pi * z);









