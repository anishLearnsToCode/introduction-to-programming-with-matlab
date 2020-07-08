function indices = saddle(M)
    indices = zeros(0, 2);
    [rows, columns] = size(M);
    for row = 1:rows
        for column = 1 : columns
            point = M(row, column);
            if isGreaterThan(point, M(row, :)) && isSmallerThan(point, M(:, column))
                indices(end + 1, :) = [row, column]; %#ok<AGROW>
            end
        end
    end
end

function predicate = isGreaterThan(point, vector) 
    predicate = sum(point >= vector) == length(vector);
end

function predicate = isSmallerThan(point, vector)
    predicate = sum(point <= vector) == length(vector);
end
