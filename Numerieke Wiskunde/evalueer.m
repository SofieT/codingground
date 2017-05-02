function v evalueer(x, coef, type, y)
  
  switch type
      case 'monomiaal'
          A = evalbasis(y, length(y), @monomiaalbasis);
      case 'langrange'
          A = evalbasis(y, length(y), @lagrangebasis, x);
      case 'newton'
          A = evalbasis(y, length(y), @newtonbasis, x);
      otherwise
          A = evalbasis(y, length(y), @chebyshevbasis);
  end
  
  v = A*coef;
  
end
