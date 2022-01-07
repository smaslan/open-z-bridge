% Generate N uniform distribution random number(s) in range <A_min;A_max>.
% 'N' has the same meaning as in rand(N) function. 
%
% Usage:
%   [rnd] = linrand(A_min, A_max)
%   [rnd] = linrand(A_min, A_max, N)                   
%
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
%   
function [rnd] = linrand(A_min,A_max,N)
    if nargin < 3
        N = [1 1];
    end
    rnd = rand(N)*(A_max - A_min) + A_min;
end