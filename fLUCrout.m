function [x nop] = fLUCrout(n,a,b)
% a = L * U ->
[lu nop] = decomposicaoLU(a,n);
[x nop] = substituicaoLU(lu,b,n,nop);

end
