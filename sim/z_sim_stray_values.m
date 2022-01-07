% Make random stray couplings. If 'names2' is empty, it will generate all
% combinations between 'names' elements. If 'names2' is cell array, it will 
% generate combinations between elements 'names' and 'names2'.
%
% usage:
%   [stray] = z_sim_stray_values(names, names2, M, u_M, C, u_C)
%   [stray] = z_sim_stray_values(names, names2, M, u_M, C, u_C, is_mcc=1)
%
% params:
%   names - cell array of string names of model elements (usually cables and lugs)
%   names2 - secondary cell array of string names of model elements (usually cables and lugs)
%   M - mean mutual inductance between for all possible couplings (scalar)
%   u_M - random inductance variation range for 'M' (rectangular distrib)
%   C - mean stray capacitnace between for all possible couplings (scalar)
%   u_M - random capacitance variation range for 'C' (rectangular distrib)
%   is_mcc - optional mask for uncertainty randomization (0 to disable), by default enabled
%
% returns:
%   stray - structure with stored input name lists and generated values of M and C:
%     stray.names - copy of 'names'
%     stray.names2 - copy of 'names2'
%     stray.M - vector of mutual inductances, one value for each possible combination
%     stray.C - vector of stray capacitances, one value for each possible combination
%
% This is part of open-z-bridge project: https://github.com/smaslan/open-z-bridge
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
% 
function [stray] = z_sim_stray_values(names, names2, M, u_M, C, u_C, is_mcc=1)

    
    stray.names = names;    
    stray.names2 = names2;
    if ~isempty(names2)
        % two array mode        
        Np = numel(names)*numel(names2);
        stray.M = M + u_M*randr([Np,1])*is_mcc;
        stray.C = C + u_C*randr([Np,1])*is_mcc;
    else
        % single array mode   
        stray.M = M + u_M*randr([nchoosek(numel(stray.names),2),1])*is_mcc;
        stray.C = C + u_C*randr([nchoosek(numel(stray.names),2),1])*is_mcc;
    endif
    
endfunction