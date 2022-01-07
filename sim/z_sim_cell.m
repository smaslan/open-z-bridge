% This is root function of multicore processing called for each cell of the 
% multicore jobs batch.
% It just unpacks job parameters from 'job', calls one simulation
% z_brg_sim() for each frequency spot sequentially, collects and returns result. 
%
% Usage:
%   [res] = z_sim_cell(job)
%
% Params:
%   job - contains the stuff needed by z_brg_sim():   
%     job.md - Spice simulation session (model struct)
%     job.par - model parameters defined in 'sim.m'
%     job.swp - sweep setup defined in 'sim.m'
%     job.cfg - simulation config defined in 'sim.m'
%
% Returns:
%   res.f - vector of freq spots
%   res.Z2 - vector of simulated measurements of Z2 value for each freq
%   d_Z - vector of relative deviations of Z2 modulus (simulation - expected)
%   d_ph - vector of absolute deviations of Z2 phase (simulation - expected)
%   d_Rs - vector of absolute deviations of Z2 real (simulation - expected)
%   d_Xs - vector of absolute deviations of Z2 imag (simulation - expected)
%
% This is part of open-z-bridge project: https://github.com/smaslan/open-z-bridge
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
% 
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