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
## @deftypefn {} {@var{retval} =} ordinauv (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: UTENTE <UTENTE@LAPTOP-BQBHR837>
## Created: 2025-04-29

function [u, v] = ordinauv(u, v)

    % Controllo lunghezza
    if not(length(u) == length(v))
        error('I vettori u e v non sono della stessa lunghezza');
    end

    for i = 1:length(u)
        if u(i) < v(i)
            temp = u(i);
            u(i) = v(i);
            v(i) = temp;
        end
    end

endfunction
