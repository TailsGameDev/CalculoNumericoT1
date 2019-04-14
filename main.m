%format long

n = 40;

%a)
[a b] = montaAB(n);

printf('\na2)\n');
%mostrar x
[x nop] = fLUCrout(n,a,b);
printf('x(1) = %.16f\n', x(1));
printf('x(n) = %.16f\n', x(n));
%residuos
r = a * transpose(x) - transpose(b);
residuoMaximo = max(abs(r))

printf('a3)\n');
printf('Numero de operacoes medido: %d\n', nop);
nopt = (4*n^3 + 15*n^2 - 7*n - 6) / 6;
printf('Numero de operacoes teorico: %d\n', nopt);

%b
%b1)
[t r d] = montaVetsTrd(a,n);
[x nop] = GaussOtimTrd(t, r, d, b, n);

printf('\nb2)\n');
%mostrar x
printf('x(1) = %.16f\n', x(1));
printf('x(n) = %.16f\n', x(n));
%residuos
r = a * transpose(x) - transpose(b);
residuoMaximo = max(abs(r))

printf('b3)\n');
printf('Numero de operacoes medido: %d\n', nop);
nopt = 8*n-7;
printf('Numero de operacoes teorico: %d\n', nopt);
