%
function v newtonbasis(y, j, x)
    v = 1:1:length(y);
    
    for i = 1:length(y)
    a = y(i);
    b = 1;
    
        if (j > 0)
            for k = 1:j
                c = x(k);
                b = b * (a - c);
            end
        end 
        
        v(i) = b;
    end 
end
