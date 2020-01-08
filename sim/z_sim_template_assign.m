function [par] = z_sim_template_assign(par=[], templates, component_name, values, fid=1)
    
    % find template from the list
    template = z_sim_template_find(templates, component_name);    
    
    % sort source and destination
    [snames, sid] = sort(fieldnames(values));        
    [dnames, did] = sort(template.parameter_ref);       
    
    % extract frequency from frequency dependent data
    values = cell2mat(struct2cell(values)(sid).');
    values = num2cell(values(1,:)).';
    
    % assign source to destinations
    params = cell2struct(values,template.parameter_name(did));
    
    % eventually merge with existing source struct
    if ~isempty(par)
        par = cell2struct([struct2cell(par);struct2cell(params)],[fieldnames(par);fieldnames(params)]);
    else
        par = params;
    endif    
    
endfunction