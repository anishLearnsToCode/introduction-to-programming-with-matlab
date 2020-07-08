function matrix = sparse2matrix(sparse_matrix)
    dimensions = cell2mat(sparse_matrix(1));
    n = dimensions(1); m = dimensions(2);
    default = cell2mat(sparse_matrix(2));
    matrix = default * ones(n, m);
    
    [~, len] = size(sparse_matrix);
    for i = 3:len
       element = cell2mat(sparse_matrix(i));
       matrix(element(1), element(2)) = element(3);
    end
end
