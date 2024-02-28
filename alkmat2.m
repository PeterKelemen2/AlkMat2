clear
clear all;
s = 1;
for i = 1:100
    s = s*i;
end

s = 0;
a = [4 2 -1 5];
for i = a
    s=s+1/i;
end
s

%%
%tic toc között rész megméri a futási időt

tic
% Ezzel sokkal gyorsabb
x = rand(1, 1e6);
y = x + 1;
toc

clear all;

tic
% For ciklus lassabb vektorokon
x = rand(1, 1e6);
for i = 1:1e6
    y(i) = x(i) + 1;
end
toc
%%
all(A) % Megnézi, hogy minden 0-tól különböző
any(A) % Ha legalább egy nem 0
all(A, 2) % 2-től különböző-e


ind = find(A) % index értéket ad vissza
[row, col] = find(A) % sor-oszlopot ad vissza

%%
% a > 1 számok alapja
% t - mantissza hossza (számjegy db)
% k- <= k <= k+ - karakterisztika
% 0 m1 m2 ... mt - mantissza (számjegyek)
format; % Reset
format long; % Hosszú format
format short; % 4 tizedesjegy
format shortE; % Normál alak, 4 tizedes

format;


% a = 2
% t = 4
% k_min = -3
% k_pls = 2

% E0 = + | k- | 10000...0 = 0.1 * 2^(k-)  -- legkisebb szám
%Minf = + | k+ | 111...1 = 0.111...1 * 2^(k+) -- legnagyobb szám
E1 = eps(1)

% Tetszőleges szám jobboldali szomszédja
n = 0.0703125

% 0.0703125 * 2 = 0.140625 ↓
% 0.140625 * 2 = 0.28125 ↓
% 0.28125 * 2 = 0.5625 ↓
% 0.5625 * 2 = 1.125 ↓
% 0.125 * 2 = 0.25 ↓
% 0.25 * 2 = 0.5 ↓
% 0.5 * 2 = 1

% bin_n = 0.0001001 * 2^0 
% bin_n_norm = 0.1001 * 2^(-3)

% + | -3 | 1001
% 0.0001 * 2^-3

% + | -3 | 1010
% 0.1010 * 2^-3

x = 1/3
for i=1:40
    x = 4 * x - 1;
end
x 

2^66 + 1 == 2^66

% help eps

eps(0)
eps(1)
eps(2^66)

%%
% Mátrixok

A = [1,2,3; 
     4,5,6; 
     7,8,9]
% row, col
A(1,2)

a = [1, -2, 0]
b = [2, -11, 7]
% Csak ha rendben van a dimenzió
B = [a;b] % Egymás alá pontosvessző
B = [a,b] % Egymás mellé vessző

ones (2,3)

eye(2,2) % ilyen kereszt faszom

A(1,:) % egy sorvektor, az A i-edik sora
A(:,1) % oszlopvektor, az A i-edik oszlopa
A([3,1],:) % 3. és 1. sor 

% Törölni vagy teljes sor vagy oszlopra lehet

% Felcserélés
A
A([1,3], :) = A([3,1], :)

numel(A) % Hány elem van benne
sum(A) % Oszloponkénti összeg, sorvektor
sum(A') % = sum(A,2) Soronkénti összeg, sorvektor
sum(A, 'all') % Összes elem összege

C = [1:3, 4:5]
max(C,3) % Mindet hasonlítja 3-al és a nagyobbat hagyja meg
max(C,4)

diag(1:4) % Főátlóba beteszi ezt a vektort
diag(1:4, 0) % 0. átló
diag(1:4, 2) % 2. átló
diag(1:4, -2) % -2. átló

tril(A) % Alsó háromszög, kinullázza a többi részt
triu(A) % Felső háromszög










