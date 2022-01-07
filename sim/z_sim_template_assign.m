% This is helper function to automatically assign Spice model parameters using 
% template(s) loaded by function z_sim_prep_spice().
% It takes structure 'values' containing generic template names, renames it accordingly 
% and stores them to 'par' struture of all model parameters.
%
% Example:
%  Template:
%   <lug>
%     Ls={R%} Rs={L%}
%   </lug>
%  Spice model contains lug of name 'my_lug' with value <template=lug>.
%  z_sim_prep_spice() replaces <template=lug> with parameters Rmy_lug, Lmy_lug
%  This function will take loaded templates from z_sim_prep_spice(), looks for the
%  one called 'lug', based on it will assign content of 'values':
%   values.Rs = value_of_resistance
%   values.Ls = value_of_inductance
%  to 'par' structure as:
%   par....
%   par.Rmy_lug = values.Rs
%   par.Lmy_lug = values.Ls
%  The names in the 'values' must match exactly the names in the template and there cannot 
%  be any extra item in the struct!
%
% usage:
%   [par] = z_sim_template_assign(par=[], templates, component_name, values)
%   [par] = z_sim_template_assign(par=[], templates, component_name, values, fid)
%
% params:
%   par - input struct with parameters
%   templates - templates loaded by z_sim_prep_spice()
%   component_name - name of component in the spice model to process
%   values - struct of template parameters matching the template definition and no extra elements!
%            the elements may be vectors (for each frequency), in which case 'fid' index
%            can be used to select frequency 
%   fid - index of frequency (for indexing vector values), default is 1   
%
% returns:
%   par - structure of model parameters extended by new params from template 
%
% This is part of open-z-bridge project: https://github.com/smaslan/open-z-bridge
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
% 
function [par] = z_sim_template_assign(par=[], templates, component_name, values, fid=1)
    
    % find template from the list
    template = z_sim_template_find(templates, component_name);    
    
    % sort source and destination
    [snames, sid] = sort(fieldnames(values));        
    [dnames, did] = sort(template.parameter_ref);       
    
    % extract frequency from frequency dependent data
    values = cell2mat(struct2cell(values)(sid).');
    values = num2cell(values(fid,:));
    
    % assign source to destinations
    params = cell2struct(values,template.parameter_name(did),2);
    
    % eventually merge with existing source struct
    if ~isempty(par)
        par = cell2struct([struct2cell(par);struct2cell(params)],[fieldnames(par);fieldnames(params)]);
    else
        par = params;
    endif    
    
endfunction