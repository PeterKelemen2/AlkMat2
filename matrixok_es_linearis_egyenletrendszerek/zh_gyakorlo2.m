# ZH gyakorló 2
clc;
clear;

# ======

function h=solveit(n)
	h = max(abs(cos(1:n) .* sin((1:n)-1)));
end

solveit(3);

# ======

A1 = [42 -63 -14;
      54 -63 -96;
	  48 -90 101];
b1 = [749; 249; 1882];
x1 = rref([A1, b1]) # Egyértelmű

A2 = [42 -63 -168;
	  54 -63 -180;
	  48 -90 -228];
b2 = [-651; -639; -942];
x2 = rref([A2, b2]) # Végtelen sok megoldás

A3 = [42 -63 -210;
      54 -63 -234;
	  48 -90 -276];
b3 = [-987; -1071; -326];
x3 = rref([A3, b3]) # Ellentmondásos

# ======

clear;
A = [1 2 4; 2 0 1; 3 -3 -1];
B = A;
B(B<0) = B(B<0) - 1;

# ======

function A = fun(t)
	t = t(:);
	i = (1:length(t))';
	A = [1 ./ i, t.^3, exp(-1*t)];
end

fun([1,2,4]);

# ======

x = [3; -5; 3; -2]
x_1_norm = sum(abs(x))
x_inf_norm = max(abs(x))
x_2_norm = sqrt(sum(x.^2))















