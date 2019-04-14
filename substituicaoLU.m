function [x nop] = substituicaoLU(lu,b,n,nop);

%LC = B
c(1) = b(1)/lu(1,1);
nop++;
for i=2:n
  soma = 0;
  for j=1:i-1;
    soma = soma + lu(i,j)*c(j);
    nop++;nop++;
  end %j
  c(i) = (b(i) - soma)/lu(i,i);
  nop++;nop++;
end

% UX = C
x(n) = c(n);
for i=n-1:-1:1
  soma = 0;
  for j=i+1:n
    soma = soma + lu(i,j)*x(j);
    nop++;nop++;
  end
  x(i) = c(i) - soma;
  nop++;
end

end
