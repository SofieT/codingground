%

function v = monomiaalbasis (j, y)
    v = (y .^ (j-1))';
end