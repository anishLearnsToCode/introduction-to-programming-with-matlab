function count = persistent_variables(n)
    if nargin == 0
        n = 1;
    end

    persistent acc;
    if isempty(acc)
        acc = 1;
    else
        acc = acc + n;
    end
    count = acc;
end
