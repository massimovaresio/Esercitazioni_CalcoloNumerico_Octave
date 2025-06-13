function J = trapezi(f, a, b, m)
  % TRAPEZI Calcola l'integrale approssimato della funzione f su [a, b]
  % usando la formula dei trapezi generalizzata con m sottointervalli
  %
  % Input:
  %   f - function handle della funzione da integrare
  %   a - estremo sinistro dell'intervallo
  %   b - estremo destro dell'intervallo
  %   m - numero di sottointervalli (m deve essere >= 1)
  %
  % Output:
  %   J - approssimazione dell'integrale ∫_a-b f(x) dx

  h = (b - a) / m;  % passo di discretizzazione
  x = a + h * (1:m-1);  % nodi interni xs con s=1,...,m-1

  % Applico la formula:
  % J = h/2 * [f(a) + 2 * sum(f(x)) + f(b)]
  J = h / 2 * (f(a) + 2 * sum(f(x)) + f(b));
end
