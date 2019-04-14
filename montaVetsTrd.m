function [t r d] = montaVetsTrd(a,n)

  i=1;
  r(i) = a(1,1); d(i) = a(1,2);

  for i=2:n-1
    t(i) = a(i,i-1); r(i) = a(i,i); d(i) = a(i,i+1);
  end

  i=n;
  t(i) = a(i,i-1); r(i) = a(i,i);

  t(1) = NaN; d(n) = NaN;

end
