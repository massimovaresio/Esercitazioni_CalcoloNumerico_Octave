function [L, U, success] = fattorizzazione_LU(A)
  % FATTORIZZAZIONE_LU Esegue la fattorizzazione LU: A = L * U
  % con L triangolare inferiore a diagonale unitaria
  % e U triangolare superiore, usando eliminazione di Gauss
  %
  % Input:
  %   A - matrice quadrata n x n
  %
  % Output:
  %   L - matrice triangolare inferiore con 1 sulla diagonale
  %   U - matrice triangolare superiore
  %   success - true se la fattorizzazione ha successo, false altrimenti

  [n, m] = size(A);
  success = true;

  if n ~= m
    error('La matrice A deve essere quadrata');
  end

  L = eye(n);  % Inizializzo L come matrice identità n x n

  fprintf('\nInizio fattorizzazione LU della matrice A:\n');
  disp(A);

  for i = 1:n-1
    fprintf('\n Eliminazione colonna %d (pivot = A(%d,%d) = %.2f)\n', i, i, i, A(i,i));

    if A(i,i) == 0
      error('Pivot nullo alla riga %d. Impossibile procedere.', i);
    end

    for s = i+1:n
      gsi = A(s,i) / A(i,i);     % Calcolo il moltiplicatore
      L(s,i) = gsi;              % Lo salvo in L

      fprintf(' Sto annullando A(%d,%d) usando riga %d\n', s, i, i);
      fprintf(' g(%d,%d) = %.2f\n', s, i, gsi);
      fprintf(' Aggiorno A(%d,j) = A(%d,j) - g(%d,%d) * A(%d,j)\n\n', s, s, s, i, i);

      for j = i+1:n
        fprintf(' Aggiorno A(%d,%d): %.2f - %.2f * %.2f = ', ...
                s, j, A(s,j), gsi, A(i,j));
        A(s,j) = A(s,j) - gsi * A(i,j);
        fprintf('%.2f\n', A(s,j));
      end

      A(s,i) = 0;  % Azzero esplicitamente il termine sotto la diagonale
    end
  end

  U = triu(A);  % Estraggo la parte triangolare superiore come U

  fprintf('\nFattorizzazione completata!\n');
  fprintf('\nMatrice L:\n');
  disp(L);
  fprintf('Matrice U:\n');
  disp(U);
end
