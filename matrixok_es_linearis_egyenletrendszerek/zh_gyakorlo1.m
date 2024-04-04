## zh_gyakorlo
clc;
clear;

x = [-2; 4; 1; 1];

x_1_norm = sum(abs(x));
x_inf_norm = max(abs(x));
x_2_norm = sqrt(sum(x.^2));

# ========

A = [1 2 4; 2 0 1; 3 -3 -1];
# B = [2 4 8; 4 0 2; 6 -3 -1]; # Kell legyen

B = A;
B(B > 0) = B(B > 0) * 2;

# ========

# Ha főátló 1-es, akkor egyértelmű
# Ha ellentmondás van egy sorban, akkor ellentmondásos
# Ha az összes többi, akkor végtelen sok megoldása van

A1 = [-63 54 -18; 133 -249 -232; -63 18 -90];
b1 = [-261; 1361; -45];
x1 = rref([A1,b1])
#x1 = A1\b1

A2 = [-63 54 -72; 133 -249 17; -63 18 -108];
b2 = [-45; 366; 27];
x2 = rref([A2,b2])
#x2 = A2\b2

A3 = [-63 54 108; 133 -249 -423; -63 18 46];
b3 = [-765; 2125; -589];
x3 = rref([A3,b3])
x3 = A3\b3;

# ========

function h = solveit(n)
	h = sum(abs(((1:n) - 5) ./ (1 + (1:n) .^ 2)));
end

solveit(3);
solveit(1);

# ========

clear;
t = [1, 2, 4];
t = t(:);
A = [(1:length(t))', (1:length(t))' ./ t, exp(t)]


























