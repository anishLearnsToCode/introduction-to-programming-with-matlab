function valid = valid_date(y,m,d)
    if nargin == 3
        if ~isscalar(y) || y < 1 || y ~= fix(y)
            valid = false;
            return
        elseif ~isscalar(m) || m < 1 || m ~= fix(m)
            valid = false;
            return
        elseif ~isscalar(d) || d < 1 || d ~= fix(d)
            valid = false;
            return
        end
    end
    a=y/4;b=y/400;c=y/100;
    M1 = [1 3 5 7 8 10 12];
    M2 = [4,6,9,11];
    F1 = (1:29);
    F2 = (1:28);
    D1 = (1:31);
    D2=(1:30);
    if a ~= fix(a) || (b ~= fix(b) && c == fix(c))
        if ismember(m,M1) && ismember(d,D1)
                valid = true;
        elseif ismember(m,M2) && ismember(d,D2)
                valid = true;
        elseif m==2 && ismember(d,F2)
                valid = true;
        else
            valid = false;
        end
    elseif a == fix(a) || b == fix(b)
        if ismember(m,M1) && ismember(d,D1)
                valid = true;
        elseif ismember(m,M2) && ismember(d,D2)
                valid = true;
        elseif m==2 && ismember(d,F1)
                valid = true;
        else
            valid = false;
        end   
    end
end 