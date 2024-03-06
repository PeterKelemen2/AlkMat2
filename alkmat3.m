A = [1:4; 5:8; 9:12]
B = A(2:end,:)
B = A(:, [1,3])
B = A
% B(end, end) = [] % Vagy teljes oszlopot vagy sort tudunk törölni, csak elemet nem
% Utolsó sor és oszlop törlése
B(end,:) = [];
B(:,end) = [];
% vagy
B = A(1:(end-1), 1:(end-1))

% Oszlop csere
B(:, [2,1]) = B(:, [1,2])

% Négyzetre emelés
% B = A^2 nem működik
B = A .^ 2
B = A + 3
B = sqrt(A) % Minden elemét meggyökerezi
B = sin(A) % Hálistennek működik mátrixra is

B(1,2) = -2
B(2,:) = [-1, 0, -2, 3]

##A =
##
##     1     2     3     4     5     6     7     8
##    20    18    16    14    12    10     8     6
##     2     4     8    16    32    64   128   256
A = [
    1:8;
    20:-2:6;
    2.^[1:8]
    ]

          sum(A) % oszloponkénti összeg
        sum(A,2) % soronkénti összeg
reshape(A, 6, 4) % átcsinálás
          max(A) % oszloponkénti max
   max(A, [], 2) % soronkénti max
       max(A, 2) % összehasonlít, a nagyobbikat tartja meg
       flipud(A) % alulról felfordítja
       fliplr(A) % balról jobbra fordít
         size(A) % széle hossza
       length(A) % szélesség


% Kívül 100 vastagon 0, bent 1
C = zeros(500,500);
C(101:400, 101:400) = 0.5;
imshow(C)

