n = 10;

i=1;
x(i,i) = 1; x(i,i+1) = 1; B(1) = 1.5;

%i=2:n/2
for i=2 : n/2
  x(i,i-1) = 1; x(i,i) = 4; x(i,i+1) = 1; B(i) = 1;
end

for i=(fix(n/2) + 1) : n-1
  x(i,i-1) = 1; x(i,i) = 5; x(i,i+1) = 1; B(i) = 2;
end

i = n;
  x(i,i-1) = 1; x(i,i) = 1; B(i) = 3;

x
