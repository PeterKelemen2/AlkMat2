% Ctrl + Enter
% format rat - tört alakban írja ki
% format - visszaállítja a simát

a = [-1.2, 3.1, 4.7, 1.9]
% a(0) Nincs
a(1) % 1. elem
a([2,3]) % 2. és 3. elem

% első elem : utolsó elem
% első elem: lépésköz : utolsó elem
b1 = [1:5]
b2 = [5:-1:1]
b3 = [5:1] % baj
b4 = [2:0.2:3]

% linspace(első elem, utolsó elem, [elemek száma=100])
c1 = linspace(5,1)
c2 = linspace(1,2,10)
size(c2) % 1 10
numel(c2) % 10

% páratlan számok (1-10)
d1 = [1:2:10]

% 1-10 5db elem
e1 = linspace(1,10,5)

% oszlopvektor
oszlop = [1; 2; 3; 4; 5]

sima = [1 2 3 4 5]
transzponalt = sima'
transponalt2 = transpose(sima)

% sor, oszlop
ones(2,3) 
zeros(2,3)

% Törlés
v = linspace(1,2,10)
v(2) = [] % Elhagyja a 2. elemet
v([2,4]) = [] % Elhagyja a 2. és 4. elemet
v(2:4) = [] % 2-től 4-ig hagy el elemet

% Kicserélés
v(2) = -5
v(2:4) = 20 % 2-4 között mindet
v([2,4]) = 10 % csak 2. és 4.

% 
v(9) = 10 % Ha az index nagyobb, mint a v, akkor kinullázza addig

% Több vektor
a = [1, 2, 3]
b = [4, 5, 6]
a_b = [a b] % Összefűzi őket
[-10 a_b 31, 40] % Bele lehet építeni új vektorba

a+b % Elemei összeadása
a+1 % Minden elemhez hozzáad egyet
a.^2 % Minden elemét négyzetre emelei
a./b % a és b elemenkénti hányadosa
1./a % a elemenkénti reciproka

sort(a)
sort(a, 'descend')
min(a); max(a);

A = ones(10,5)
size(A) % x és y mérete
length(A) % A nagyobbik hosszat írja ki
% length(A) = max(size(A))
prod(A)

% Feladatok
% 1.
a = [0:30]
b = [2:2:100]
c = [2:-0.1:0]
d = [0:3:30 ,-100, 30:-3:0]
e1 = [2:20].^-1
e2 = 1./[2:20]
f = [1:19]./[2:20]


x = [1:100]
ay = flip(x) % vagy y = x(-1)
by = x(1:5)

cy1 = x
cy1(4) = []
cy2 = x([1:3, 5:end])

dy = x
dy([5,72,93]) = []

ey1 = x(1:2:end) % páratlat elemek
ey2 = x(2:2:end) % páros elemek

% 2.
a = x+2
b = x.^2
c = 1./x
d = sin(x.^3 - 1)
e = x - [1:length(x)]




