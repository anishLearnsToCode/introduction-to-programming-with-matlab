function s = halfsum(M)
   [n, m] = size(M);
   s = 0;
   for row = 1:n
       for column = row:m
           s = s + M(row, column);
       end
   end
end
