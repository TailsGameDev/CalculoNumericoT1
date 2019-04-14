function x = fLUCrout(n,a,b)

% a = L * U ->
lu = decomposicaoLU(a,n)
x = substituicaoLU(lu,b,n)

end
