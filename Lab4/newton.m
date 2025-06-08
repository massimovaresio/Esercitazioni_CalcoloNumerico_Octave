function [x, i] = newton(f, df, x0, tol, nmax)
  % Metodo di Newton-Raphson
  %
  % Input:
  %   f: funzione f(x)
  %   df: derivata f'(x)
  %   x0: punto iniziale scelto vicino alla radice
  %   tol: tolleranza (criterio di arresto; incremento |xn+1 - xn| < tol)
  %   nmax: numero massimo di iterazioni
  %
  % Output:
  %   x: approssimazione della radice
  %   i: numero di iterazioni fatte

  x = x0;

  for i = 1:nmax
    fx = f(x);
    dfx = df(x);

    % Aggiornamento di Newton
    x_new = x - fx / dfx;

    % Controllo di arresto
    if abs(x_new - x) < tol
      x = x_new; % Se la condizione if è vera aggiorno x un'ultima volta
      return; % Esco dalla funzione
    end

    x = x_new; % Se non ho raggiunto la tolleranza, preparo il prossimo ciclo
  end
end
