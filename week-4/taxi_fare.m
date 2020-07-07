function fare = taxi_fare(distance, time)
    fare = 5 + 2 * (ceil(distance) - 1) + 0.25 * ceil(time);
end
