function x = radici(b, c)
    % Calcola le radici reali del polinomio x^2 + 2bx + c

    delta = b^2 - c;

    if delta < 0
        error('Il polinomio non ammette radici reali');
    end

    x1 = -b + sqrt(delta);
    x2 = -b - sqrt(delta);

    x = [x1, x2];
endfunction
