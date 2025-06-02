function [xi, i, imax] = bisezione(fun, a, b, tol)
  % BISEZIONE Implementa il metodo di bisezione per trovare una radice di f(x) = 0.
  %
  % Input:
  %   fun: function handle di f(x)
  %   a, b: estremi dell'intervallo iniziale [a, b]
  %   tol: tolleranza per l'accuratezza richiesta (|b-a| < tol)
  %
  % Output:
  %   xi: approssimazione della radice
  %   i: numero di iterazioni eseguite
  %   imax: numero massimo di iterazioni teoriche per raggiungere la tolleranza

  % Verifica che l'intervallo iniziale contenga un cambio di segno
  if fun(a) * fun(b) > 0
    error('L''intervallo iniziale [a, b] non contiene un cambio di segno. Il metodo di bisezione non è applicabile.');
  end

  % Calcola il numero massimo di iterazioni teoriche
  imax = ceil(log2((b - a) / tol));

  i = 0;
  fa = fun(a);
  fb = fun(b);

  while (b - a) / 2 > tol
    i = i + 1;
    xi = (a + b) / 2;
    fxi = fun(xi);

    if fxi == 0
      % Trovata la radice esatta
      return;
    elseif fa * fxi < 0
      % La radice si trova nell'intervallo [a, xi]
      b = xi;
      fb = fxi;
    else
      % La radice si trova nell'intervallo [xi, b]
      a = xi;
      fa = fxi;
    end

    % Controllo opzionale per evitare loop infiniti
    if i > imax * 2 % Scelgo un multiplo ragionevole di imax
      warning('Raggiunto un numero elevato di iterazioni senza convergenza alla tolleranza richiesta.');
      return;
    end
  end

  % Al termine del ciclo, xi è una buona approssimazione della radice
  xi = (a + b) / 2;

end
