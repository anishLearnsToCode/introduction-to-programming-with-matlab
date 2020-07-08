function number = next_prime(number)
    while ~isprime(number + 1)
        number = number + 1;
    end
    number = number + 1;
end
