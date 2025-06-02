function [u, v] = ordinauv(u, v)

    % Controllo lunghezza
    if not(length(u) == length(v))
        error('I vettori u e v non sono della stessa lunghezza');
    end

    for i = 1:length(u)
        if u(i) < v(i)
            temp = u(i);
            u(i) = v(i);
            v(i) = temp;
        end
    end

endfunction
