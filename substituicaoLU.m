function x = substituicaoLU (lu,b,n)

%LC = B
c(1) = b(1)/lu(1,1);
for i=2:n
  soma = 0;
  for j=1:i-1;
    soma += lu(i,j)*c(j);
  end %j
  c(i) = (b(i) - soma)/lu(i,i);
end

c

% UX = C
x(n) = c(n);
for i=n-1:-1:1
  soma = 0;
  for j=i+1:n
    soma+=lu(i,j)*x(j);
  end
  x(i) = c(i) - soma;
end

end
