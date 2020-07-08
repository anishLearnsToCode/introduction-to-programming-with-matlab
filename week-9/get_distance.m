function distance = get_distance(x,y)
    persistent raw;
    if isempty(raw)
        [~, ~, raw] = xlsread('Distances.xlsx');
    end
    
    state1_index = state2index(raw, x);
    state2_index = state2index(raw, y);
    
    if state1_index > 1 && state2_index > 1
        distance = cell2mat(raw(state1_index, state2_index));
    else 
        distance = -1;
    end
end

function index = state2index(raw, state)
    [~, states] = size(raw);
    index = -1;
    for i = 2:states
        if strcmp(cell2mat(raw(1, i)), state)
            index = i;
        end
    end
end
