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
## @deftypefn {} {@var{retval} =} funzionef (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: UTENTE <UTENTE@LAPTOP-BQBHR837>
## Created: 2025-04-29

function y = funzionef(x)
    y = zeros(size(x));

    for i = 1:length(x)
        t = x(i);

        if t <= -1
            y(i) = 0;
        elseif t > -1 && t <= 0
            y(i) = 1 + t;
        elseif t > 0 && t < 1
            y(i) = 1 - t;
        else
            y(i) = 0;
        end
    end
end
