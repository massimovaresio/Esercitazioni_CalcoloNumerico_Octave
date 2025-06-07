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
      x = x_new;
      return;
    end

    x = x_new;
  end
end
