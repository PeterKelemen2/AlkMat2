clc;
clear;

# 2.
#1*x1 + 6*x2 < 72
#5*x1 + 4*x2 < 74
#6*x1 + 2*x2 < 72

#Meredekségeket kiszámolni

# 3.
A = [1 7; 3 6; 6 2];
also = [0 0];
b = [70 75 90]';
c = [4 12]';
c = c*(-1); # mert maximum keresés, a linprog pedig csak minimumot tud keresni

[x, fval, ~, ~, lambda] = linprog(c, A, b, [], [], also, [])
# lambda.ineqlin # Az ötödik változó az árnyékárak


