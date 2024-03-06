% Egyenletrendszer
A = [-2 1 4; 2 3 -1; -4 -10 -5];
b = [3; 1; -12];
x = A\b;
rref([A, b]); % Gauss elimináció, utolsó oszlop a megoldás

##megoldhato(A,b)

function megoldhato(A,b)
  x = A\b;
  if rank(A) ~= rank([A,b]) % != womp womp
    display('Nincs megoldás');
  elseif rank([A,b]) ~= length(x)
    display('Végtelen sok megoldás');
  else
    display('Egyértelmű megoldás!')
  end
end

megoldhato(A,b)

% 4. feladat
##a. nem tudjuk eldönteni
##b. nem tudjuk eldönteni
##c. igaz
##d. nem tudjuk eldönteni
##e. igaz, mert A * x = b == x = A^1 * b

% 5. feladat - Folyós
t1 = 4 % óra
t2 = 3 % óra
s1 = 140 % km
s2 = 75 % km
% sebesség = s / t
% Ezeket kell kiszámolni
v_hajo = 0; % Parthoz viszonyított állandó sebessége.
v_folyo = 0; %
odafele = v_hajo + v_folyo; % 140/4 (s1 / t1)
visszafele = v_hajo - v_folyo; % 75 / 3 (s2 / t2)

A = [1, 1; 1, -1]
b = [s1/t1; s2/t2]
x = rref([A, b])
v_hajo = x(:,end)(1) % km/h
v_folyo = x(:,end)(2)% km/h

%% LU-felbontás
##[L, U, P] = lu(A)
% L - alsó háromszög
% U - felső háromszög
% P - Permutáció

[L, U] = lu(a);
x = U\(L\b);

%% Cholesky-felbontás
% Ha A pozitív definit, és szimmetrikus csak akkor működik.
% HAAAAAA
















