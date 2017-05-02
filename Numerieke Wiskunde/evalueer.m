function v evalueer(x, coef, type, y)
  
  switch type
      case 'monomiaal'
          A = evalbasis(y, length(x), @monomiaalbasis);
      case 'langrange'
          A = evalbasis(y, length(x), @lagrangebasis, x);
      case 'newton'
          A = evalbasis(y, length(x), @newtonbasis, x);
      otherwise
          A = evalbasis(y, length(x), @chebyshevbasis);
  end
  
  v = A*coef;
  
end
