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
## @deftypefn {} {@var{retval} =} radici (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: UTENTE <UTENTE@LAPTOP-BQBHR837>
## Created: 2025-05-01

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
