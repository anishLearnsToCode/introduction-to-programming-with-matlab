function [r, s] = randRange(rangeNumbers, dimension)
    r = rand(dimension);
    a = rangeNumbers(1);
    b = rangeNumbers(2);
    r = a + (b - a) * r;
    s = sum(sum(r));
end