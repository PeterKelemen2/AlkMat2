clc;
clear;

function A = fun(t)
	t = t(:);
	i = (1:length(t))';
	A = [i, 1 ./ t, exp(-1 .* t)];
end

fun([1 2 4]);

# ======

clear;
A = [-77, 66, -209;
	 147, -261, 669;
	 -63, -18, -27];
b = [-385; 1680; 190];
x1 = rref([A,b])

clear;
A = [-77, 66, 132;
	 147, -261, -447;
	 -63, -18, -1];
b = [979; -2784; 293];
x2 = rref([A,b])

# ======

clear;
x = [3; -4; 4; 5];
x_1_norm = sum(abs(x))
x_inf_norm = max(abs(x))
x_2_norm = sqrt(sum(x .^2))

# ======

function h = solveit(n)
	h = sum(abs(1 ./ (2 + (1:n) .^ 2)));
end

solveit(3)
