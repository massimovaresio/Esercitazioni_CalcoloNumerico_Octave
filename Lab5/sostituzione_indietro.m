function x = sostituzione_indietro(A, b)
  % Risolve un sistema lineare A*x = b
  % con A matrice triangolare superiore, usando il metodo delle sostituzioni all'indietro
  %
  % Input:
  %   A - matrice triangolare superiore (n*n)
  %   b - vettore dei termini noti (n*1)
  %
  % Output:
  %   x - vettore soluzione (n*1)

  n = length(b);           % Numero di incognite
  x = zeros(n, 1);         % Inizializzo il vettore soluzione x, dimensione n*1, con tutti 0

  % Ciclo che va dalla riga n (ultima) alla riga 1 (prima)
  for i = n:-1:1
    % Inizializzo la somma dei termini noti già noti sul lato destro dell'equazione
    somma = 0;

    % Calcolo la somma dei prodotti A(i,j)*x(j) per j > i
    % Questi x(j) sono già stati calcolati nelle iterazioni precedenti
    for j = 2:n
      somma = somma + A(i,j) * x(j);
    end

    % Calcolo il valore di x(i) isolando l'incognita:
    % A(i,i) * x(i) = b(i) - somma --> x(i) = (b(i) - somma) / A(i,i)
    x(i) = (b(i) - somma) / A(i,i);
  end
end

% VERSIONE ALTERNATIVA CON PRODOTTI ELEMENTO*ELEMENTO
% risulta più compatta e sfrutta le operazioni vettoriali invece di for annidati

##  for i = n:-1:1
##    % Estrai la parte della riga A(i,:) che va da j = i+1 a n
##    % e i corrispondenti valori x(j) già calcolati
##    if i < n
##      prodotti = A(i, i+1:n) .* x(i+1:n) ;  % prodotto elemento per elemento
##      somma = sum(prodotti);               % somma dei prodotti
##    else
##      somma = 0;  % ultimo elemento non ha nulla a destra
##    end
##
##    % Calcolo x(i)
##    x(i) = (b(i) - somma) / A(i,i);
##  end
