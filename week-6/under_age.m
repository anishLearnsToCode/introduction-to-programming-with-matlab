function too_young = under_age(age, limit)
    if nargin == 1
        limit = 21;
    end
    too_young = age < limit;
end
