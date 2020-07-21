function [stray] = z_sim_stray_values(names, names2, M, u_M, C, u_C, is_mcc=1)
% Make random stray couplings. If 'names2' is empty, it will generate all
% combinations between 'names' elements. If 'names2' is cell array, it will 
% generate combinations between elements 'names' and 'names2'.
    
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