function [x nop k] = GaussSeidel(n,t,r,d,b,tol,xz,rel)

nop = 0;
k=0;
dif = 99999;
x = xz;
crel = 1-rel;

while dif > tol && k < 500
  k++;

  i=1;
  x(i) = crel*x(i) + rel*(b(i) - d(i)*x(i+1))/r(i);
  nop+=6;
  for i=2:n-1
    x(i) = crel*x(i) + rel*(b(i) - t(i)*x(i-1) - d(i)*x(i+1))/r(i);
    nop+=8;
  end
  i=n;
  x(i) = crel*x(i) + rel*(b(i) - t(i)*x(i-1))/r(i);
  nop+=6;

  dif = max(abs(x .- xz));
  nop+=n;

  xz = x;
end %while


end
