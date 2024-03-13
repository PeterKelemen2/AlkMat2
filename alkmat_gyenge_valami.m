A = [1 1 0;
     3 4 -1;
     3 5 -1];

b = [7; 10; -2];

cond(A, inf)
max(sum(A))
rel_err = 0.01;

# rel_err_megoldas <= cond(A) * rel_err_jobboldal

##matrix = ones(5,5)
matrix = eye(5,5) % Átlót ki-egyesezi
triu((ones(5).*-1) + (eye(5).*3))

##n = 100;
##A = eye(n) - triu(ones(n), 1);
##b1 = (-98:1)';
##x = A \ b1;

% perturbált
##b2 = b1;
##b2(100) = b1(100) + 1e-6
##y = A \ b2;

function y = vektornorma (x, p)
  if p == 1 || p == 2
    y = (sum(abs(x).^p)).^(1/p)
  elseif p == 'inf'
    y = max(abs(x))
  end
end


vektornorma((1:3), 1);
vektornorma((1:3), 'inf');

oszlopnorma = max(sum(abs(A),1));
sornorma = max(sum(abs(A),2));

x = [-1 1 2 4];
y = [2 1 3 0];
# plot(x,y, 'mh--');

x = linspace(-1,2);
y = x.^3 - x;
# plot(x,y,'m');

linspace(-1, 2);
# Anonim function
f = @(x) x.^3 - x;
# plot(x, f(x), 'm')
# f(2) az anoním function hívása
# axis([-1.2, 2.2, -1, 6.5]);
# legend('HAAAAAAAAAAA')


##alfa = linspace(0, 2*pi);
##figure
##plot(cos(alfa), sin(alfa));
##ax = gca;
##ax.XAxisLocation = 'origin';
##ay.YAxisLocation = 'origin';
##axis equal;

clear all;

### Kör
##alfa = linspace(0, 2*pi);
##x = cos(alfa);
##y = sin(alfa);
##figure
##plot(x,y,'b-')
##axis equal;
##hold on;

##M = alfa;
##xy = M .* [x;y];
##plot(xy(1,:), xy(2,:), 'r-');
##cond(M)

t = [1 1.1 1.1:0.1:2];

f = [8 8.9 9 9.8 10 11 11.5 11.5 12.5 13 13.7 14];

p = polyfit(t,f,1) # Kiírja, hogy: 5.8235   2.5338;
# Ennek értelmezése: f(t) = 5.8235 (p(1)) * t + 2.5338 (p(2))
# meredekdség / főegyüttható: p(1)
# konstans tag: p(2)






















