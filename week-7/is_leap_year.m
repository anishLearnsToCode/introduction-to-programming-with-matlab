function p = is_leap_year(year)
    if mod(year, 4) == 0
        if mod(year, 100) == 0
            if mod(year, 400) == 0
                p = true;
            else
                p = false;
            end
        else
            p = true;
        end
    else
        p = false;
    end
end
