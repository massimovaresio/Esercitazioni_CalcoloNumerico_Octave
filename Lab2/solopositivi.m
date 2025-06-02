function [v_pos] = solopositivi(v)

    v_pos = [];

    % Cicla gli elementi del vettore v
    for i = 1:length(v)
        if v(i) > 0
            v_pos = [v_pos, v(i)];
        end
    end

endfunction
