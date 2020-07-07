function [r, s] = randInt(rangeNums, dimensions)
    start = rangeNums(1);
    last = rangeNums(2);
    r = start + (last - start) * rand(dimensions);
    r = round(r);
    s = sum(sum(r));
end