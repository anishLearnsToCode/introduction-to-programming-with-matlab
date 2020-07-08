function [output] = blur(A, w)
    [rows, columns] = size(A);
    B = nan(size(A) + 2 * w);
    B(w + 1 : end - w, w + 1 : end - w) = A;
    output = 0 * A;
    
    for i = w + 1 : rows + w
      for j = w + 1 : columns + w
        tmp = B(i - w : i + w, j - w : j + w);
        output(i - w, j - w) = mean(tmp(~isnan(tmp)));
      end
    end
end
