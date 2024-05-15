clc;
clear;
# Sajátérték gyakorlás

# 1. Feladat
#A = [0,   0,   0,   1/2;
#	 1/2, 0,   1/2, 0;
#	 1/2, 1/2, 0,   1/2;
#	 0,   1/2, 1/2, 0];
#[V, U] = eig(A);
#x = V(:,1)
#
#A*x
#y = [0.2217 0.0308 0.4102 0.3373]';
#y = A*y
#y = A*y
#y = A*y
#y = A*y
#y = A*y

# 2. Feladat
#A = [0 4 5;
#	 0.8 0 0;
#	 0 0.4 0];

# 3. Feladat
#A = [-1 1 0; 3 -3 1; 1 3 0];
#v = [4 0 1]';

# 4. Feladat
#A = [0.5  0.4  0.1;
#	 0.3  0.4  0.2;
#	 0.2  0.2  0.7];
#[U,V] = eig(A);
#x = abs(U(:,1));

# 5. Feladat
# Egészítse ki az alábbi x vektort úgy, hogy az A mátrix abszolútértékben
# legkisebb sajátértékéhez tartozó sajátvektor legyen!
#A = [73 32 19 10;
#	 -73 -32 -17 -11;
#	 -116 -50 -32 -16;
#	 -88 -40 -26 -9];
## Megoldás: x = [-1 2 0 1]'
#
#[V,U] = eig(A);
#V
#v = V(:,2)
#l = 1/v(4) # 3. nem 0
#x = v*l # x = [-1 2 -6.8783e-13 1]'

# 6. Feladat
A = [0 6 1; 0.6 0 0; 0 0.5 0];
[V, U] = eig(A);
V
x = V(:,1)

#x = x/sum(x)
#x = A * x;
#x = x/sum(x)

# 7. Feladat
#A = [0 4 2;
#	0.7 0 0;
#	0 0.6 0];
#
#[V, U] = eig(A);
#V
#x = V(:,1)
#x = x / sum(x)
#
#A * x
#v = [0.6596 0.2555 0.0849]';
#v = A * v
#v = A * v
#v = A * v
#v = A * v



































