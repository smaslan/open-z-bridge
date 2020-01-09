function [res] = z_sim_cell(job)

    % sweep spots
    f_list = job.swp.f;
    
    
    Z2 = [];
    dZ = [];
    dph = [];
    dRs = [];
    dXs = [];
    
    try
    
        % --- for each sweep spot        
        for k = 1:numel(f_list)
        
            % simulate
            [Z2(k), dZ(k), dph(k), dRs(k), dXs(k)] = z_brg_sim(job.md, job.par, f_list(k), job.swp);
        
        endfor
        
        % return stuff
        res.f = f_list;
        res.Z2 = Z2;
        res.dZ  = dZ;
        res.dph = dph;
        res.dRs = dRs;
        res.dXs = dXs;
    
    catch err
        
        disp('--- Simulator error ---');
        disp(err.message)
        %warning(err.identifier, err.message);
        
        res = [];    
        
    end
        
end