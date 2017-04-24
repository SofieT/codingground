% Evalueer n basisfuncties in de punten y, waarbij de basisfuncties
% gedefinieerd zijn door de function handle basisfun en de optionele
% parameter x met interpolatiepunten.
% 
% b = EVALBASIS(y,n,basisfun,x) geeft de matrix b terug, waarbij b(i,j) de
% waarde bevat van de j-de basisfunctie in het punt y(i).

function b = evalbasis( y,n,basisfun,x )
    b = zeros(length(y),n);
    for j = 1:n
        if nargin < 4
            b(:,j) = basisfun(y,j);
        else
            b(:,j) = basisfun(y,j,x);
        end
    end
end

