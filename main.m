format long

n = 40;

%a) decomposicao LU
[a b] = montaAB(n);

%a2)
printf('\na2)\n');
%mostrar x
[x nop] = fLUCrout(n,a,b);
printf('x(1) = %.16f\n', x(1));
printf('x(n) = %.16f\n', x(n));
%residuos
res = a * transpose(x) - transpose(b);
residuoMaximo = max(abs(res))

%a3)
printf('a3)\n');
printf('Numero de operacoes medido: %d\n', nop);
nopt = (4*n^3 + 15*n^2 - 7*n - 6) / 6;
printf('Numero de operacoes teorico: %d\n', nopt);
nopLU=nop;


%b) gauss otimizado pra tridiagonais
%b1)
[t r d] = montaVetsTrd(a,n);
[x nop] = GaussOtimTrd(t, r, d, b, n);

%b2)
printf('\nb2)\n');
%mostrar x
printf('x(1) = %.16f\n', x(1));
printf('x(n) = %.16f\n', x(n));
%residuos
res = a * transpose(x) - transpose(b);
residuoMaximo = max(abs(res))

%b3)
printf('b3)\n');
printf('Numero de operacoes medido: %d\n', nop);
nopt = 8*n-7;
printf('Numero de operacoes teorico: %d\n', nopt);
nopTrid = nop;


%c
%c1
tol = 1e-4;
for i=1:n xz(i) = 0; end
rel = 1;
[x nop k] = GaussSeidel(n,t,r,d,b,tol,xz,rel);

%c2
printf('\nc2)\n');
%mostrar x
printf('x(1) = %.16f\n', x(1));
printf('x(n) = %.16f\n', x(n));
%residuos
res = a * transpose(x) - transpose(b);
residuoMaximo = max(abs(res))

%c3
printf('c3)\n');
printf('Numero de iteracoes: %d\n', k);
printf('Numero de operacoes medido: %d\n', nop);
nopGS = nop;

%c4
printf('c4)\n');
[xe nop k] = GaussSeidel(n,t,r,d,b,tol*tol,xz,rel);
erroTruncamentoMaximo = max(abs(xe-x))

%d
printf('\nd)\n');
printf('operacoes metodo LU: %d\n', nopLU);
printf('operacoes metodo Gauss Tridiagonal: %d\n', nopTrid);
printf('operacoes metodo Gauss-Seidel: %d\n', nopGS);
printf('Melhor metodo: Gauss-Otimizado para matriz tridiagonal\n');
