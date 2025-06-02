function x = risolvi_sistema(d, b)
    % Controllo che i vettori siano della stessa lunghezza
    if not(length(d) == length(b))
        error('I vettori d e b devono avere la stessa lunghezza');
    end

    % Verifica che la matrice diagonale non sia singolare (ovvero nessun elemento zero)
    if any(d == 0)
        error('La matrice diagonale è singolare (almeno un elemento di d è zero)');
    end

    % Risoluzione efficiente: x(i) = b(i) / d(i)
    x = b ./ d;

endfunction
