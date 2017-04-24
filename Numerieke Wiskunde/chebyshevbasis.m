%

function v chebyshevbasis (y, j)
    v = 1:1:length(y);
    
    for i = 1:length(y)
    
        switch j
            case 0
                v(i) = 1;
            case 1
                v(i) = y(i);
            otherwise 
                a = 1;
                b = y(i);
            
                for k = 3:j
                    c = 2*y(i)*a - b;
                    a = b;
                    b = c;
                end
            
                v(i) = c;
        end
        
    end
    
end
