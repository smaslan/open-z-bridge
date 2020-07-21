function [y] = randr(dimz)
% generate uniform ditribution random number
    if ~nargin
        dimz = 1;
    end
    y = (2*rand(dimz) - 1);
end