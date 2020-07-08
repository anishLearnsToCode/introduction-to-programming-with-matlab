function output = echo_gen(in,fs,delay,gain)
    samples = round(fs * delay) ;
    ds = floor(samples);
    signal = zeros(length(in) + ds, 1);
    signal(1:length(in)) = in;
    echo_signal = zeros(length(in) + ds, 1);
    echo_signal(ds + (1:length(in*gain))) = in * gain;
    output = signal + echo_signal;
    p = max(abs(output));
    if p > 1
        output = output ./ p;
    end
end
