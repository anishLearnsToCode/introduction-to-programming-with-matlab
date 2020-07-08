function M = trio(n, m)
    M = ones(3 * n, m);
    M(n + 1 : 2 * n, :) = 2 * ones(n, m);
    M(2 * n + 1 : end, :) = 3 * ones(n, m);
end
