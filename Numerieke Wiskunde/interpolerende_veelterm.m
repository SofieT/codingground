function p interpolerende_veelterm(x, fun, type)
   coef = 1:1:length(x);
   
   v = 1:1:length(x);
   for i = 1:length(x)
         v(i) = feval(fun, x(i));
   end
   
   switch type
        case "monomiaal"
            A = evalbasis(x, length(x), @monomiaalbasis);            
        case "lagrange"
            A = evalbasis(x, length(x), @langrangebasis, x);
        case "newton"
            A = evalbasis(x, length(x), @newtonbasis, x);
        case "chebyshev"
            A = evalbasis(x, length(x), @chebyshevbasis);
   end 
   
   coef = A\v;
   val = @evalueer;
   p = struct(coef, val);
   
end
