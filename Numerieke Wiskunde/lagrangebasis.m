%
function v lagrangebasis (y, j, x)
    x1 = x;
    x1(j) = [];
    v = 1:1:length(y);
    
    for i = 1:length(y)
        a = y(i);
        b = 1;
        
        for k = 1:length(x1)
            c = x1(k);
            d = x(j);
            
            e = (a - c)/(d - c);
            b = b * e;
        end
        
        v(i) = b;
    end
end 