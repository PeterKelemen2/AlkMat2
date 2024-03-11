clear;

t = [1; 2; 4];
e = exp(1);


function A = fun(t)
  if size(t,2) > 1
    t = t';
  end

  n = length(t);
  i = (1:n)';
  A = [i, i./t, exp(t)];
end

fun(t);

A = [1 -4 -4; 4 -15 -16; 1 -6 -3];
b = [6; -25; -23];
x = A\b;
rref([A, b]);

norm_b = norm(b,1);
norm_x = norm(x,1);
rel_error_b = norm(b - (A .* x), 1) / norm_b;
rel_error_x = norm_x / norm_b;
result = rel_error_x / rel_error_b;
result_rounded = round(result)

b_norm = sum(abs(b))
max_rel_error = 0.3;

max_error_b = b_norm * max_rel_error
result = max_error_b;

x = [2;2;-3;1]
x_1 = sum(x)
x_2 = sqrt(sum(x.^2))
x_inf = max(abs(x))

n = 3;
i = 1:n;
x = abs(i-3) .* cos(i)
x_inf = max(abs(x))

A1 = [35 -10 -60;
     -77 134 20;
     -84 63 105];
b1 = [-1005; 1315; 2105];
x1 = rref([A1,b1])

A2 = [35 -130 -60;
     -77 174 20;
     -84 273 105];
b2 = [-1365; 1435; 2730];
x2 = rref([A2,b2])

A3 = [35 -30 -60;
     -77 -60 20;
     -84 45 105];
b3 = [-1065; 733; 2046];
x3 = rref([A3,b3])
x3 = A3\b3

