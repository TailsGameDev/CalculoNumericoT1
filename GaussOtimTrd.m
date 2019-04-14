function [x nop] = GaussOtimTrd(t, r, d, b, n)
nop=0;

for i = 2:n
  aux = t(i)/r(i-1);
  r(i) = r(i) - aux*d(i-1);
  b(i) = b(i) - aux*b(i-1);
  nop+=5;
end

x(n) = b(n)/r(n);
nop++;
for i = n-1: -1: 1
  x(i) = (b(i) - d(i)*x(i+1))/r(i);
  nop+=3;
end

end
