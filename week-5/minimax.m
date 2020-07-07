function [max_min_diff, total_max_min_diff] = minimax(M)
    max_rows = max(M');
    min_rows = min(M');
    max_min_diff = max_rows - min_rows;
    total_max_min_diff = max(max_rows) - min(min_rows);
end
