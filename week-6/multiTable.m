function [table, s] = multiTable(n, m)
    if nargin == 1
        m = n;
    end
    
    table = (1 : n)' * (1 : m);
    
    if nargout == 2
        s = sum(sum(table));
    end
end