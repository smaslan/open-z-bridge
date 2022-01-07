% Nasty solution for scovint() where mean value of histogram lies outside 
% calculated boundaries. It will take the far-most boundary to mean distance 
% as kind of worst case uncertainty, but it is not nice solution...
% 'x' is input vector (real numbers)
% 'loc' is level of confidence (0;1)
% 'avg' is explicit mean value of the 'x' quantity  
%
% Usage:
%   unc = scovint_ofs(x, loc, avg)               
%
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
%   
function unc = scovint_ofs(x, loc, avg)
% scovint for offsetted histogram
    [slen,sql,sqr] = scovint(x, loc);
    unc = max(abs([sqr sql] - avg));
end
