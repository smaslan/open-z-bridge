% Generate 'dimz' uniformly distributed numbers <-1;1>.
% 'dimz' has the same meaning as in rand(dimz) function. 
%
% Usage:
%   [y] = rand()
%   [y] = randr(dimz)                 
%
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
%   
function [y] = randr(dimz)
% generate uniform ditribution random number
    if ~nargin
        dimz = 1;
    end
    y = (2*rand(dimz) - 1);
end