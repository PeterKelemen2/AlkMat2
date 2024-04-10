# +----------------------+
# | Sajátérték feladatok |
# +----------------------+

clc;clear;
A = [0 1 1; 0.8 0 0;0 0.25 0];
[V, U] = eig(A);
x = V(:,1);
x = x/sum(x)

# ==== 1. feladat / sajátérték feladatok =====================
clc;clear;
A = [69 180 30; -28 -73 -12; 11 30 8];
[V,U] = eig(A)

# A 3. oszlopban van a legnagyobb szám, ezért ez az oszlop kell
x = V(:,3);
x = x/sum(x)

x/x(3) # 1 lesz az x_3, ha elosztjuk azzal az elemével az x-nek

# ==== 2. feladat / sajátérték feladatok =====================

clc;clear;
A =[0 6 8;
    0.5 0 0;
	0 0.5 0];
[V, U] = eig(A)
x = V(:,1)
x = x/sum(x)

x = A * x; 	 # Megszorozzuk A-val,
x = x/sum(x) # majd ha ugyanaz lesz az x,
             # akkor stabil a koreloszlás


# ==== 3. feladat / sajátérték feladatok =====================

# PageRank feladat
# Oszlopok: honnan érkezik a súly
# Sorok: Hová érkezik a súly
clc;clear;
A = [0    1/3  1/2  0; # 1-es pontból 1-be, 2-be, 3-ba, 4-be
	 0    0    1/2  0;
	 1/2  1/3  0    1;
	 1/2  1/3  0    0]
	# Oszlopok összege 1 kell legyen
[V, U] = eig(A);
U
x = V(:,1);
x = x/sum(x)

x = A * x;
x = x/sum(x)
# Egyforma a két x, ezért stabil

# Stabil-e?
v = [0.3077 0.2308 0.2308 0.2308]';
v = A*v
v = A*v
v = A*v
v = A*v
# Többször lefuttatva visszaáll az x-re, de nem stabil

# ==== 4. feladat / sajátérték feladatok =====================

clc;clear;
# Oszlop: ahonnan
# Sor: ahova
A = [0.1 0.5 0.4; # A sor telephelyre az oszlop index th megy
     0.3 0.1 0.6;
	 0.6 0.4 0.1];
[V, U] = eig(A)
x = V(:,1);
x = x/sum(x)

x = A * x
# Nem ugyanaz, nem stabil

# ==== 5. feladat / sajátérték feladatok =====================
clc;clear;
# Mennyi eséllyes tud az oszlopindex ugrani a sorindexbe?
# Mennyi eséllyel tud 1 a 1-be ugrani? = 0
# 1 a 2-be? 1/3
A = [0   1/3  1/2  0    0;
	1/2  0    0    1/3  1/2;
	1/2  0    0    1/3  0;
	0    1/3  1/2  0    1/2;
	0    1/3  0    1/3  0];
[V, U] = eig(A);
x = V(:,1);
x = x/sum(x)




























