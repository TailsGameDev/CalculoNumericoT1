format long

n = 10;

%1a)
[a b] = montaAB(n);

%a2)
x = fLUCrout(n,a,b);
printf('x(1) = %.16f\n', x(1));
printf('x(n) = %.16f\n', x(n));
%res
r = a * transpose(x) - transpose(b);
residuoMaximo = max(abs(r))

%a3
