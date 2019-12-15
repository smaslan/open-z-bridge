function [y] = randr(dimz)
    if ~nargin
        dimz = 1;
    end
    y = (2*rand(dimz) - 1);
end