function [res] = z_sim_cell(job)

    % sweep spots
    f_list = job.swp.f;
    
    
    Z2 = [];
    dZ = [];
    dph = [];
    dRs = [];
    dXs = [];
    

    % --- for each sweep spot        
    for k = 1:numel(f_list)
    
        % try to simulate measurement sequence
        try
            % simulate
            [md, Z2(k), dZ(k), dph(k), dRs(k), dXs(k)] = z_brg_sim(job.md, job.par, f_list(k), job.swp, job.cfg);
            
        catch err
            % failed - terminate spice
            try
                md.ngspice = spice_terminate(md.ngspice);
            end
            rethrow(err);            
        end 
    
    endfor
    
    % return stuff
    res.f = f_list;
    res.Z2 = Z2;
    res.dZ  = dZ;
    res.dph = dph;
    res.dRs = dRs;
    res.dXs = dXs;
      
    % close of NGspice process
    try
        md.ngspice = spice_terminate(md.ngspice);
    end  
        
end