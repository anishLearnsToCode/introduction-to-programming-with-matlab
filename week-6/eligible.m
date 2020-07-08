function admit = eligible(verbal, quant)
    admit = mean([verbal quant]) >= 92 && verbal > 88 && quant > 88;
end
