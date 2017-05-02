function p interpolerende_veelterm(x, fun, type)
   coef = 1:1:length(x);
   
   switch type
        case "monomiaal"
            coef = coefMonomiaal(x, fun);            
        case "lagrange"
            coef = coefLagrange(x, fun);
        case "newton"
            coef = coefNewton(x, fun);
        case "chebyshev"
            coef = coefChebyshev(x, fun);
   end 
   p = struct(coef, val);
   
end
