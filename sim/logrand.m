% Generate N uniformly distributed random number(s) in logarithmic scale 
% in range <A_min;A_max>. 'N' has the same meaning as in rand(N) function. 
%
% Usage:
%   [rnd] = logrand(A_min, A_max)
%   [rnd] = logrand(A_min, A_max, N)                   
%
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
%
function [rnd] = logrand(A_min,A_max,N)
    if nargin < 3
        N = [1 1];
    end
    rnd = 10.^(log10(A_min) + (log10(A_max) - log10(A_min))*rand(N));
end