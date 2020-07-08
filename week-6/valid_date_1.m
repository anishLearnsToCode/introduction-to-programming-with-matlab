function predicate = valid_date(year, month, day)
    predicate = is_positive_integer(year) ...
        && is_positive_integer(month) ...
        && is_positive_integer(day) ...
        && 1 <= month && month <= 12;
    predicate = predicate && (1 <= day && day <= max_date(month, year));
end

function m = max_date(month, year)
    leap = is_leap_year(year);
    if month == 1 || month == 3 || month == 5 || month == 7 ...
            || month == 8 || month == 10 || month == 12
        m = 31;
    elseif month == 2
        if leap
            m = 29;
        else
            m = 28;
        end
    elseif month == 2 || month == 4 || month == 6 || month == 9 || ...
            month == 11
        m = 30;
    else
        m = -1;
    end
end

function predicate = is_leap_year(year)
    if year % 4 == 0
        if year % 100 == 0
            if year % 400 == 0
                predicate = 1;
            else
                predicate = 0;
            end
        else
            predicate = 1;
        end
    else
        predicate = 0;
    end
end

function predicate = is_positive_integer(val)
    predicate = val > 0 && val == floor(val);
end
