# legkisebb négyzetes értelemben illeszkedő másodfokú polinom
# 18 egyforma lépésközű pont [-1, 2]

t = [-1, 0, 1, 2];
f = [0, -1, 0.5, 3];
t = t(:);
f = f(:);

# Modell i guess: f(t) = x1*t + x2
A = [t, ones(size(t))];
##x = (A' * A) \ (A' * f);
x = polyfit(t,f,2);
xx = linspace(-1, 2, 18);

yy = x(1) .* xx.^2 + x(2) .* xx + x(3);

##plot(t, f, 'r*', xx, yy);

#_______________________________________________________________________________
# Milyen alakot vesz fel a 9.5 helyen F(t) = a * b/t

t = [1, 3, 5 6, 6];
f = [1.98 1.24 1.11 1.15 1.12];
t = t(:); # Ez mindenre működik, tegyük oda inkább
f = f(:);
# Modell: f(t) = a + b/t
##disp('Modell: f(t) = a + b/t')

A = [ones(size(t)), 1 ./ t];
x = (A' * A) \ (A' * f);

xx = linspace(1, 6); # Szélesebb intervallumot, mint a t vektor

yy = x(1) + x(2) ./ xx; # Itt az xx = t a modellből
yy2 = str2double(sprintf('%.2f', x(1) + x(2) / 8.0));
##x(1) + x(2) / 8.0

##plot(t, f, '*', xx, yy);

a = str2double(sprintf('%.2f', x(1)));
b = str2double(sprintf('%.2f', x(2)));

#_______________________________________________________________________________

t = [0, 2, 3, 4, 6];
f = [0.62, 3.44, 4.82, 6.21, 9.06];
t = t(:);
f = f(:);

A = [t, ones(size(t))];
x = (A' * A) \ (A' * f);

xx = linspace(0,6);

yy = x(1).* xx + x(2);

yy2 = x(1) * 5.0 + x(2);

##plot(t, f, '*', xx, yy)

#_______________________________________________________________________________

t = (0:0.2:1)';
f = [1.1333, 2.3943, 3.0939, 2.9088, 2.3317, 1.0205]';
z=[0.1,0.3];

t = t(:);
f = f(:);
##z = z(:);
# Modell: x(1) + x(2) * sin(pi .* xx)

A = [ones(size(t)), sin(pi .* t)];
x = (A' * A) \ (A' * f);

xx = linspace(0, 1);

yy = x(1) + x(2) * sin(pi .* z);

#_______________________________________________________________________________

# Meredekseg, konstans, helyettesített érték

t = [0, 2, 6, 9, 10];
f = [0.7, 2.77, 6.91, 10.06, 11.11];

t = t(:);
f = f(:);

A = [t, ones(size(t))];
x = (A' * A) \ (A' * f);


meredekseg = str2double(sprintf('%.2f', x(1)));
konstans = str2double(sprintf('%.2f', x(2)));

xx = linspace(0,10);
yy = x(1) .* xx + x(2);
ertek = 3.0;
helyettesitett = str2double(sprintf('%.2f',x(1) * ertek + x(2)));


































