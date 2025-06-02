## Copyright (C) 2025 UTENTE
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} risolvi_sistema (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: UTENTE <UTENTE@LAPTOP-BQBHR837>
## Created: 2025-05-02

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
