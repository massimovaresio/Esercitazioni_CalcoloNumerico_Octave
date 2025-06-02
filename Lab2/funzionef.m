function y = funzionef(x)
    y = zeros(size(x));

    for i = 1:length(x)
        t = x(i);

        if t <= -1
            y(i) = 0;
        elseif t > -1 && t <= 0
            y(i) = 1 + t;
        elseif t > 0 && t < 1
            y(i) = 1 - t;
        else
            y(i) = 0;
        end
    end
end
