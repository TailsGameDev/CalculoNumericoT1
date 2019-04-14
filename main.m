format long

n = 10;

%1a)
[a b] = montaAB(n);

printf('a2)\n');
[x nop] = fLUCrout(n,a,b);
printf('x(1) = %.16f\n', x(1));
printf('x(n) = %.16f\n', x(n));
%res
r = a * transpose(x) - transpose(b);
residuoMaximo = max(abs(r))

printf('a3)\n');
printf('Numero de operacoes medido: %d\n', nop);
nopt = (4*n^3 + 15*n^2 - 7*n - 6) / 6;
printf('Numero de operacoes teorico: %d\n', nopt);
