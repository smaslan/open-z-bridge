function [template] = z_sim_template_find(templates, component_name)
% looks for parameters template of component of given name 

    cid = find(strcmp({[templates{:}].component},component_name));
    if isempty(cid)
        error(sprintf('Component template parameters assignement: Component name ''%s'' not found in the loaded templates!',component_name));
    endif    
    template = templates{cid};

endfunction