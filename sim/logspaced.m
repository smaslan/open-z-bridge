% Generate logspace() from 'a' to 'b', with 'n' steps and optionally rounds to 'digits' 
% count. 'n' meaning is the same as in logspace(..., n) function. 
%
% Usage:
%   [y] = logspaced(a, b, n)
%   [y] = logspaced(a, b, n, digits)                   
%
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
%
function [y] = logspaced(a,b,n,digits)
	
    y = logspace(log10(a),log10(b),n);
    
    if exist('digits','var') && digits          
        % round to digits count
        digz = ceil(log10(y));    
        round_base = 10.^-(digz - digits);    
        y = round(y.*round_base)./round_base;
    end
    y = unique(y);
    
end