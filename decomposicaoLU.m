function lu = decomposicaoLU(a, n)

k=1;
for i=1:n
  lu(i,1) = a(i,1);
end

for j=2:n
  lu(1,j) = a(1,j)/lu(1,1);
end

for k=2:n-1
  j=k;
  for i=k:n
    soma = 0;
    for r=1:j-1
      soma+=lu(i,r)*lu(r,j);
    end %r
    lu(i,j) = a(i,j) - soma;
  end %i
  i = k;
  for j=k+1:n
    soma=0;
    for r=1:i-1
      soma+=lu(i,r)*lu(r,j);
    end
    lu(i,j) = (a(i,j) - soma)/lu(i,i);
  end %j
end %k

k=n; j=n; i=n;
soma = 0;
for r=1:j-1
  soma+=lu(i,r)*lu(r,j);
end %r
lu(i,j) = a(i,j) - soma;

end
