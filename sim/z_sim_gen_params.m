function [par] = z_sim_gen_params(f, Z1, Z2, is_mcc)
% This generates Spice model parameters for each frequency of the sweep

    % sweep freq. count
    F = numel(f);

    % define nominal cable parameters:
    rg58.R   = 0.05;
    rg58.u_R = 0.02;
    rg58.L1m   = 1.5e-6;
    rg58.u_L1m = 0.2e-6;
    rg58.L   = 250e-9;
    rg58.u_L = 25e-9;
    rg58.C   = 105e-12;
    rg58.u_C = 10e-12;
    rg58.D   = 0.0015;
    rg58.u_D = 0.001;
    rg58.hlr   = 0.7; % live to return path ratio
    rg58.u_hlr = 0.2; % live to return path ratio
    
    % source ground lug
    src.Rsrc = 0.5  + 0.5*randn*is_mcc;
    src.Lsrc = 1e-6 + 1e-6*randn*is_mcc;
    
    % source cable
    ca_sup = z_sim_rand_cable(rg58, is_mcc);
    ca_sup.len = 0.5 + 0.1*randr*is_mcc;
    ca_sup.ch_L = 0;
    ca_sup.ch_R = 1e-6;
    ca_sup.ch_len = 0;
    
    % joint cable
    ca_joint = z_sim_rand_cable(rg58, is_mcc);
    ca_joint.len = 0.3 + 0.1*randr*is_mcc;
    ca_joint.ch_L = 0;
    ca_joint.ch_R = 1e-6;
    ca_joint.ch_len = 0;
        
        
    % Z1 cable
    ca_Z1 = z_sim_rand_cable(rg58, is_mcc);
    ca_Z1.len = (1.0 + 0.2*randr*is_mcc);
    ca_Z1.ch_L = 0e-3;
    ca_Z1.ch_R = 1e-6;
    ca_Z1.ch_len = 0;
    
    
    % Z2 potential lugs
    par.Rpc1 = 0.05   + 0.05*randn*is_mcc;
    par.Lpc1 = 0.1e-6 + 0.1e-6*randn*is_mcc;
    par.Rpc2 = 0.05   + 0.05*randn*is_mcc;
    par.Lpc2 = 0.1e-6 + 0.1e-6*randn*is_mcc;
    
    % Z2 cable
    ca_Z2 = z_sim_rand_cable(rg58, is_mcc);
    ca_Z2.len = (1.0 + 0.2*randr*is_mcc);
    ca_Z2.ch_L = 0;
    ca_Z2.ch_R = 1e-6;
    ca_Z2.ch_len = 0;
    
    % Hpot buffer
    buf_hpot.CgA = repmat(10e-12 + 10e-12*randn*is_mcc,[F 1]);
    buf_hpot.CgB = repmat(10e-12 + 10e-12*randn*is_mcc,[F 1]);
    buf_hpot.RgA = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
    buf_hpot.RgB = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
    buf_hpot.LoA = repmat(1e-6 + 1e6*randr*is_mcc,[F 1]);
    buf_hpot.LoB = repmat(1e-6 + 1e6*randr*is_mcc,[F 1]);
    buf_hpot.RoA = repmat(0.01 + 0.005*randr*is_mcc,[F 1]);
    buf_hpot.RoB = repmat(0.01 + 0.005*randr*is_mcc,[F 1]);       
    
    % Lpot buffer
    buf_lpot.CgA = repmat(10e-12 + 10e-12*randn*is_mcc,[F 1]);
    buf_lpot.CgB = repmat(10e-12 + 10e-12*randn*is_mcc,[F 1]);
    buf_lpot.RgA = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
    buf_lpot.RgB = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
    buf_lpot.LoA = repmat(1e-6 + 1e6*randr*is_mcc,[F 1]);
    buf_lpot.LoB = repmat(1e-6 + 1e6*randr*is_mcc,[F 1]);
    buf_lpot.RoA = repmat(0.01 + 0.005*randr*is_mcc,[F 1]);
    buf_lpot.RoB = repmat(0.01 + 0.005*randr*is_mcc,[F 1]);
    
    % digitizer 1
    adc1.Cin = repmat(270e-12 + 50e-12*randn*is_mcc,[F 1]); 
    adc1.Rin = repmat(1e9     + 5e8*randr*is_mcc,[F 1]);
    adc1.Csh = repmat(1e-9 + 0.5e-9*randn*is_mcc,[F 1]); 
    adc1.Rsh = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
    adc1.Csg = repmat(1e-9 + 0.1e-9*randn*is_mcc,[F 1]); 
    adc1.Rsg = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
    adc1.Rgnd = 0.5 + 0.5*randn*is_mcc;
    adc1.Lgnd = 1e-6 + 1e-6*randn*is_mcc;
    adc1.Rgrd = 0.01 + 0.01*randn*is_mcc;
    adc1.Lgrd = 0.1e-6 + 0.1e-6*randn*is_mcc;
    
    % digitizer 2
    adc2.Cin = repmat(270e-12 + 10e-12*randn*is_mcc,[F 1]); 
    adc2.Rin = repmat(1e9     + 5e8*randr*is_mcc,[F 1]);
    adc2.Csh = repmat(1e-9 + 0.1e-9*randn*is_mcc,[F 1]); 
    adc2.Rsh = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);    
    adc2.Csg = repmat(1e-9 + 0.1e-9*randn*is_mcc,[F 1]); 
    adc2.Rsg = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
    %adc2.Cbuf = repmat(10e-12 + 10e-12*randn*is_mcc,[F 1]); 
    %adc2.Rbuf = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);    
    adc2.Rgnd = 0.5 + 0.5*randn*is_mcc;
    adc2.Lgnd = 1e-6 + 1e-6*randn*is_mcc;
    adc2.Rgrd = 0.01 + 0.01*randn*is_mcc;
    adc2.Lgrd = 0.1e-6 + 0.1e-6*randn*is_mcc;
    
    % digitizer 3
    adc3.Cin = repmat(270e-12 + 10e-12*randn*is_mcc,[F 1]); 
    adc3.Rin = repmat(1e9     + 5e8*randr*is_mcc,[F 1]);
    adc3.Csh = repmat(1e-9 + 0.1e-9*randn*is_mcc,[F 1]); 
    adc3.Rsh = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);    
    adc3.Csg = repmat(1e-9 + 0.1e-9*randn*is_mcc,[F 1]); 
    adc3.Rsg = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
    %adc3.Cbuf = repmat(10e-12 + 10e-12*randn*is_mcc,[F 1]); 
    %adc3.Rbuf = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);    
    adc3.Rgnd = 0.5 + 0.5*randn*is_mcc;
    adc3.Lgnd = 1e-6 + 1e-6*randn*is_mcc;
    adc3.Rgrd = 0.01 + 0.01*randn*is_mcc;
    adc3.Lgrd = 0.1e-6 + 0.1e-6*randn*is_mcc;
    
    % --- Z1 standard
    % current lugs
    Z1.Rc = 1e-6;
    Z1.Lc = 1e-12;
    Z1.Rcg = 1e-6;
    Z1.Lcg = 1e-12;
    Z1.Ccs = 1e-15;
    Z1.Rcs = 1e9;
    Z1.kc = 0.999;
    % potential lugs
    Z1.Rp = 1e-6;
    Z1.Lp = 1e-12;
    Z1.Rpg = 1e-6;
    Z1.Lpg = 1e-12;
    Z1.Cps = 1e-15;
    Z1.Rps = 1e9;
    Z1.kp = 0.999;
    % impedance element
    Z1 = z_gen_imp_equ(Z1, f);
    
    
    % --- Z2 standard
    % current lugs    
    if isfield(Z2,'Cport')
        len = Z2.Cport.len + Z2.Cport.u_len*randr*is_mcc;
        Rs  = len*(Z2.Cport.Rs + Z2.Cport.u_Rs*randr*is_mcc);
        Ls  = len*(Z2.Cport.Ls + Z2.Cport.u_Ls*randr*is_mcc);
        L1m = len*(Z2.Cport.L1m + Z2.Cport.u_L1m*randr*is_mcc)*2;
        Cp  = len*(Z2.Cport.Cp + Z2.Cport.u_Cp*randr*is_mcc);
        hlr = Z2.Cport.hlr + Z2.Cport.u_hlr*randr*is_mcc;        
        Z2.Lc = 0.5*L1m;
        Z2.Rc = hlr*Rs;
        Z2.Lcg = (1-0.5)*L1m;
        Z2.Rcg = (1-hlr)*Rs;
        Z2.Ccs = Cp;
        Z2.Rcs = 1e9;               
        M = 0.5*L1m - Ls/2;
        Z2.kc = min(M/sqrt(Z2.Lc*Z2.Lcg),0.999);
    else
        Z2.Rc = 1e-6;
        Z2.Lc = 1e-12;
        Z2.Rcg = 1e-6;
        Z2.Lcg = 1e-12;
        Z2.Ccs = 1e-15;
        Z2.Rcs = 1e9;
        Z2.kc = 0.999;                
    endif   
    % potential lugs
    if isfield(Z2,'Pport')
        len = Z2.Pport.len + Z2.Pport.u_len*randr*is_mcc;
        Rs  = len*(Z2.Pport.Rs + Z2.Pport.u_Rs*randr*is_mcc);
        Ls  = len*(Z2.Pport.Ls + Z2.Pport.u_Ls*randr*is_mcc);
        L1m = len*(Z2.Pport.L1m + Z2.Pport.u_L1m*randr*is_mcc)*2;
        Cp  = len*(Z2.Pport.Cp + Z2.Pport.u_Cp*randr*is_mcc);
        hlr = Z2.Pport.hlr + Z2.Pport.u_hlr*randr*is_mcc;        
        Z2.Lp = 0.5*L1m;
        Z2.Rp = hlr*Rs;
        Z2.Lpg = (1-0.5)*L1m;
        Z2.Rpg = (1-hlr)*Rs;
        Z2.Cps = Cp;
        Z2.Rps = 1e9;               
        M = 0.5*L1m - Ls/2;
        Z2.kp = min(M/sqrt(Z2.Lc*Z2.Lcg),0.999);
    else
        Z2.Rp = 1e-6;
        Z2.Lp = 1e-12;
        Z2.Rpg = 1e-6;
        Z2.Lpg = 1e-12;
        Z2.Cps = 1e-15;
        Z2.Rps = 1e9;
        Z2.kp = 0.999;                
    endif    
    % impedance element
    Z2 = z_gen_imp_equ(Z2, f);
    
    
    % define stray groups
     par.stray = {};
     %par.stray{end+1} = z_sim_gen_stray({'coax_Z1','U7'}, 1e-9, 0, is_mcc);
%     par.stray{end+1} = z_sim_gen_stray({'U3','U4'}, 100e-9, 0, is_mcc);
%     par.stray{end+1} = z_sim_gen_stray({'coax_sup','coax_joint'}, 100e-9, 0, is_mcc);
    %par.stray{end+1} = z_sim_gen_stray({'U2','coax_Z1'}, 100e-9, 0, is_mcc);
    %par.stray{end+1} = z_sim_gen_stray({'U2','coax_sup'}, 50e-9, 0, is_mcc);
    
%     par.stray{end+1} = z_sim_gen_stray({'coax_joint','coax_Z1'}, 100e-9, 0, is_mcc);
%     par.stray{end+1} = z_sim_gen_stray({'coax_joint','coax_Z2'}, 100e-9, 0, is_mcc);
%     par.stray{end+1} = z_sim_gen_stray({'coax_sup','coax_Z1'}, 100e-9, 0, is_mcc);
%     par.stray{end+1} = z_sim_gen_stray({'coax_sup','coax_Z2'}, 100e-9, 0, is_mcc);
                
    
    % store simulation parameters
    par.src = src;
    par.ca_sup = ca_sup; 
    par.ca_joint = ca_joint;
    par.ca_Z1 = ca_Z1;
    par.ca_Z2 = ca_Z2;
    par.buf_hpot = buf_hpot;
    par.buf_lpot = buf_lpot;
    par.adc1 = adc1;
    par.adc2 = adc2;
    par.adc3 = adc3;
    par.Z1 = Z1;
    par.Z2 = Z2;
    
endfunction


function [Z] = z_gen_imp_equ(Z,f)
    % convert Z in equ. cct to Rs-Ls
    w = 2*pi*f;
    if strcmpi(Z.mode,'Z-phi')
        Z.R = Z.Z.*cos(Z.phi)*ones(size(w));
        Z.L = Z.Z.*sin(Z.phi)./w;
    elseif strcmpi(Z.mode,'Rs-Ls')
        Z.R = Z.Rs*ones(size(w));
        Z.L = Z.Ls*ones(size(w));
    else
        error(sprintf('Impedance equivalent circuit ''%s'' not known!',Z.mode));
    endif
endfunction


function [stray] = z_sim_gen_stray(names, u_M, u_C, is_mcc)
% make random strays
    stray.names = names;    
    M   = 1e-12;
    C   = 1e-15;
    stray.M_names = {};
    stray.M = M + u_M*randn(nchoosek(numel(stray.names),2),1)*is_mcc;
endfunction


function [cab] = z_sim_rand_cable(cab, is_mcc)
% randomize cable parameters
    cab.R += cab.u_R*randn*is_mcc;
    cab.L1m += cab.u_L1m*randn*is_mcc;
    cab.L += cab.u_L*randn*is_mcc;
    cab.C += cab.u_C*randn*is_mcc;
    cab.D += cab.u_D*randn*is_mcc;
    cab.hlr += cab.u_hlr*randr*is_mcc;
endfunction