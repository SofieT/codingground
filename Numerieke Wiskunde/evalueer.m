function v evalueer(x, basisfun, coef, type, y)
  
  switch type
      case ('monomiaal' || 'chebyshev')
          A = evalbasis(y, length(y), @basisfun);
      otherwise
          A = evalbasis(y, length(y), @basisfun, x);
  end
  
  v = A*coef;
  
end
