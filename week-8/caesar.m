function coded = caesar(sequence, shift)
    sequence = double(sequence);
    sequence = sequence + shift;
    coded = char(loop(32, 126, sequence));
end

function val = loop(start, stop, val)
    r = stop - start + 1;
    val = mod(val - start + r, r) + start;
end
