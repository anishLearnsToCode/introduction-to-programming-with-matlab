function charnum = char_counter(file_name, character)
    file = fopen(file_name, 'rt');
    if file < 0 || ~ischar(character)
        charnum = -1;
        return;
    end
    
    charnum = 0;
    line = fgets(file);
    while ischar(line)
        charnum = charnum + frequency(line, character);
        line = fgets(file);
    end
end

function count = frequency(line, character)
    count = sum(line == character);
end
