% Looks for parameters template of component of given name
% It's subfunction of z_sim_template_assign().
%
% This is part of open-z-bridge project: https://github.com/smaslan/open-z-bridge
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
% 
function [template] = z_sim_template_find(templates, component_name)
 

    cid = find(strcmp({[templates{:}].component},component_name));
    if isempty(cid)
        error(sprintf('Component template parameters assignement: Component name ''%s'' not found in the loaded templates!',component_name));
    endif    
    template = templates{cid};

endfunction