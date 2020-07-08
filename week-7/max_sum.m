function [summa, index] = max_sum(v, n)
    [~, len] = size(v);
    summa = -inf;
    if n > len
        summa = 0;
    end
    index = -1;
    for i = 1:(len - n + 1)
        s = sum(v(i : i + n - 1));
        if s > summa
            summa = s;
            index = i;
        end
    end
end
