function [r, s] = randRange(rangeNumbers, dimension)
    r = rand(dimension);
    a = rangeNumbers(1);
    b = rangeNumbers(2);
    r = a + (b - a) * r;
    s = sumElements(r);
    myTest();
end

function myTest()
    disp('hello world');
end

function s = sumElements(M)
    s = sum(sum(M));
end