% This removes temporary files generated by Spice-Octave interface.
% 'model' is the structure defined in main 'sim.m' script.
%
% Usage:
%   unc = spice_clear_temps(model)               
%
% This is part of open-z-bridge project: https://github.com/smaslan/open-z-bridge
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
%  
function [] = spice_clear_temps(model)


    % parameter files
    list = spice_search_key(model.spice_temp, 'param_*.cir', 'param_\d+\.cir');
    % raw result files
    list = cat(1,list,spice_search_key(model.spice_temp, 'rawdata_*.out', 'rawdata_\d+\.out'));
    
    % remove files
    for f = 1:numel(list)    
        unlink(list{f});
    endfor

endfunction


function [list] = spice_search_key(folder, wildcard, regular)
% search files in 'folder' by 'wildcard' key and then filter file names by 'regular' expression,
% returns absolute paths 
    list = dir(fullfile(folder,wildcard));
    fid = regexp({list.name},regular);
    list = list(~cellfun(@isempty,fid,'UniformOutput',true));        
    if ~isempty(list)
        list = cellfun(@fullfile,{folder},{list.name}(:),'UniformOutput',false);
    else
        list = {};
    endif
    list = list(:);    
endfunction