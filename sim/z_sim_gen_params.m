function [par] = z_sim_gen_params(f, Z1, Z2, cfg, unc)
% This generates Spice model parameters for each frequency of the sweep

    is_mcc = unc.is_mcc;
    % randomize strays?
    rnd_strays = is_mcc && unc.rnd_strays;
    % randomize crosstalks?
    rnd_ct = is_mcc && unc.rnd_ct;
    % randomize linearity?
    rnd_lin = is_mcc && unc.rnd_lin;
    
    % is HP3458A?
    is_3458 = strcmpi(cfg.digitizer,'3458');
    is_9238 = strcmpi(cfg.digitizer,'9238');
    if ~any(strcmpi(cfg.digitizer,{'3458','9238'}))
        error(sprintf('ADC type ''%s'' not supported!',cfg.digitizer));
    endif
    
    % double 4T mode?
    is_2x4T = strcmpi(cfg.mode,'2x4T');


    % sweep freq. count
    f = f(:);
    w = 2*pi*f;
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
    
    % load twinax model
    persistent twax = [];
    if isempty(twax) 
        twax = load('femm\tasker_C121_shield.mat');
        twax = twax.cab;
        
        twax.u_Ls = 0.1*twax.Ls;
        twax.u_Rs = 0.1*twax.Rs;
        twax.u_LsG = 0.1*twax.LsG;
        twax.u_RsG = 0.1*twax.RsG;
        twax.u_LsS = 0.1*twax.LsG;
        twax.u_RsS = 0.1*twax.RsG;
        twax.u_Mlg = 0.1*twax.Mlg;
        twax.u_Mll = 0.1*twax.Mll;
        twax.u_Mgg = 0.1*twax.Mgg;
        twax.u_Mls = 0.1*twax.Mls;
        twax.u_Mgs = 0.1*twax.Mgs;
        twax.u_Mlg2 = 0.1*twax.Mlg2;
        twax.u_Cp = 0.1*twax.Cp;
        twax.u_Dp = 0.1*twax.Dp;
        twax.u_CpS = 0.1*twax.CpS;
        twax.u_DpS = 0.1*twax.DpS;
        twax.u_CpGG = 0.1*twax.CpGG;
        twax.u_DpGG = 0.1*twax.DpGG;                
    endif
    
    % source ground lug
    src.Rsrc = 0.5  + 0.5*randn*is_mcc;
    src.Lsrc = 1e-6 + 1e-6*randn*is_mcc;
    % source low-to-ground parallel Z
    src.Rpsrc = 1e3  + 0.5e3*randr*is_mcc;
    src.Cpsrc = 10e-9 + 9e-9*randr*is_mcc;
    
    % reference ground point lug impedance
    src.Rgref = 0.5  + 0.5*randn*is_mcc;
    src.Lgref = 1e-6 + 1e-6*randn*is_mcc;
    
    % source cable
    ca_sup = z_sim_rand_cable(rg58, is_mcc);
    ca_sup.len = 0.5 + 0.1*randr*is_mcc;
    ca_sup.ch_L = 10e-3;
    ca_sup.ch_R = 1e-6;
    ca_sup.ch_len = 0;
    
    % joint cable
    ca_joint = z_sim_rand_cable(rg58, is_mcc);
    ca_joint.len = 0.3 + 0.2*randr*is_mcc;
    ca_joint.ch_L = 0e-6;
    ca_joint.ch_R = 1e-6;
    ca_joint.ch_len = 0;
        
        
    % Z1 cable
    ca_Z1 = z_sim_rand_cable(rg58, is_mcc);
    ca_Z1.len = (1.0 + 0.2*randr*is_mcc);
    ca_Z1.ch_L = 10e-3;
    ca_Z1.ch_R = 1e-6;
    ca_Z1.ch_len = 0;
    
    
    % Z2 potential lugs
    par.Rpc1 = 0.05   + 0.05*randn*is_mcc;
    par.Lpc1 = 0.1e-6 + 0.1e-6*randn*is_mcc;
    par.Rpc2 = 0.05   + 0.05*randn*is_mcc;
    par.Lpc2 = 0.1e-6 + 0.1e-6*randn*is_mcc;
    
    % Z2 cable (diff mode)
    ca_Z2 = z_sim_rand_cable(rg58, is_mcc);
    ca_Z2.len = (1.0 + 0.2*randr*is_mcc);
    ca_Z2.ch_L = 0;
    ca_Z2.ch_R = 1e-6;
    ca_Z2.ch_len = 0;
    
    
    % 4TP to 2x4T convertor
    ca_2hi = z_sim_rand_cable(rg58, is_mcc);
    ca_2hi.len = (0.07 + 0.03*randr*is_mcc);
    ca_2hi.ch_L = 0.0e-3;
    ca_2hi.ch_R = 1e-6;
    ca_2hi.ch_len = 0;
    ca_2lo = z_sim_rand_cable(rg58, is_mcc);
    ca_2lo.len = (0.07 + 0.03*randr*is_mcc);
    ca_2lo.ch_L = 0.0e-3;
    ca_2lo.ch_R = 1e-6;
    ca_2lo.ch_len = 0;
    ca_2live = z_sim_rand_cable(rg58, is_mcc);
    ca_2live.len = (0.03 + 0.02*randr*is_mcc);
    ca_2live.ch_L = 0.05e-3;
    ca_2live.ch_R = 1e-6;
    ca_2live.ch_len = 0;
    ca_2sh = z_sim_rand_cable(rg58, is_mcc);
    ca_2sh.len = (0.03 + 0.02*randr*is_mcc);
    ca_2sh.ch_L = 0.05e-3;
    ca_2sh.ch_R = 1e-6;
    ca_2sh.ch_len = 0;
       
    
    % Z2 potential cables (4TP twinax mode) 
    ca_HpotA = z_sim_rand_twinax(twax, 0.5, 0.05, f, is_mcc);    
    ca_HpotB = z_sim_rand_twinax(twax, 0.5, 0.05, f, is_mcc);
    ca_LpotA = z_sim_rand_twinax(twax, 0.5, 0.05, f, is_mcc);    
    ca_LpotB = z_sim_rand_twinax(twax, 0.5, 0.05, f, is_mcc);  
    
    % Hpot buffer
    buf_hpot.CgA = repmat(10e-12 + 3e-12*randn*is_mcc,[F 1]);
    buf_hpot.CgB = repmat(10e-12 + 3e-12*randn*is_mcc,[F 1]);
    buf_hpot.RgA = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
    buf_hpot.RgB = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
    buf_hpot.LoA = repmat(1e-6 + 0.5e-6*randr*is_mcc,[F 1]);
    buf_hpot.LoB = repmat(1e-6 + 0.5e-6*randr*is_mcc,[F 1]);
    buf_hpot.RoA = repmat(0.01 + 0.005*randr*is_mcc,[F 1]);
    buf_hpot.RoB = repmat(0.01 + 0.005*randr*is_mcc,[F 1]);       
    
    % Lpot buffer
    buf_lpot.CgA = repmat(10e-12 + 3e-12*randn*is_mcc,[F 1]);
    buf_lpot.CgB = repmat(10e-12 + 3e-12*randn*is_mcc,[F 1]);
    buf_lpot.RgA = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
    buf_lpot.RgB = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
    buf_lpot.LoA = repmat(1e-6 + 0.5e-6*randr*is_mcc,[F 1]);
    buf_lpot.LoB = repmat(1e-6 + 0.5e-6*randr*is_mcc,[F 1]);
    buf_lpot.RoA = repmat(0.01 + 0.005*randr*is_mcc,[F 1]);
    buf_lpot.RoB = repmat(0.01 + 0.005*randr*is_mcc,[F 1]);
    
    U_lin = logspace(log10(1e-7),log10(1),100);
    
    NI9238_ct_min = 10^(-140/20);
    NI9238_ct_max = 10^(-130/20);
    
    % digitizer 1
    adc1.guard = is_3458;
    if is_3458
        adc1.m_Cin = 270e-12;
        adc1.m_Rin = 1e9;
        adc1.Cin = repmat(adc1.m_Cin + 10e-12*randn*is_mcc,[F 1]); 
        adc1.Rin = repmat(adc1.m_Rin + 5e8*randr*is_mcc,[F 1]);
        adc1.Clg = repmat(1e-9 + 0.1e-9*randn*is_mcc,[F 1]); 
        adc1.Rlg = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
        adc1.Cgs = repmat(1e-9 + 0.1e-9*randn*is_mcc,[F 1]); 
        adc1.Rgs = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
        adc1.ct = repmat(1e-8*(rand + j*rand)*rnd_ct,[F 1]);
        [adc1.tf_k,adc1.tf_phi] = z_sim_rand_lin_9238(f,U_lin,~is_2x4T,rnd_lin);
        adc1.tf_U = U_lin;
    else
        adc1.m_Cin = 10e-12;
        adc1.m_Rin = 1e9;
        adc1.Cin = repmat(adc1.m_Cin + 5e-12*randn*is_mcc,[F 1]); 
        adc1.Rin = repmat(adc1.m_Rin + 5e8*randr*is_mcc,[F 1]);       
        adc1.Clg = repmat(20e-12 + 10e-12*randn*is_mcc,[F 1]); 
        adc1.Rlg = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
        adc1.Cgs = repmat(1e-15,[F 1]); 
        adc1.Rgs = repmat(1e9,[F 1]);
        adc1.ct = z_sim_rand_ct(NI9238_ct_min,NI9238_ct_max,5000.0,2.0,f,1)*rnd_ct;        
        [adc1.tf_k,adc1.tf_phi] = z_sim_rand_lin_9238(f,U_lin,~is_2x4T,rnd_lin);
        adc1.tf_U = U_lin;
    endif
    adc1.Rgnd = 0.5 + 0.5*randn*is_mcc;
    adc1.Lgnd = 1e-6 + 1e-6*randn*is_mcc;
    adc1.Rgrd = 0.01 + 0.01*randn*is_mcc;
    adc1.Lgrd = 0.1e-6 + 0.1e-6*randn*is_mcc;
        
    % digitizer 2
    if is_3458
        adc2.m_Cin = 270e-12;
        adc2.m_Rin = 1e9;
        adc2.Cin = repmat(adc2.m_Cin + 10e-12*randn*is_mcc,[F 1]); 
        adc2.Rin = repmat(adc2.m_Rin + 5e8*randr*is_mcc,[F 1]);
        adc2.Clg = repmat(1e-9 + 0.1e-9*randn*is_mcc,[F 1]); 
        adc2.Rlg = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
        adc2.Cgs = repmat(1e-9 + 0.1e-9*randn*is_mcc,[F 1]); 
        adc2.Rgs = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
        adc2.ct = repmat(1e-8*(rand + j*rand)*rnd_ct,[F 1]);
        [adc2.tf_k,adc2.tf_phi] = z_sim_rand_lin_9238(f,U_lin,~is_2x4T,rnd_lin);
        adc2.tf_U = U_lin;    
    else
        adc2.m_Cin = 10e-12;
        adc2.m_Rin = 1e9;
        adc2.Cin = repmat(adc2.m_Cin + 5e-12*randn*is_mcc,[F 1]); 
        adc2.Rin = repmat(adc2.m_Rin + 5e8*randr*is_mcc,[F 1]);
        adc2.Clg = repmat(20e-12 + 10e-12*randn*is_mcc,[F 1]); 
        adc2.Rlg = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
        adc2.Cgs = repmat(1e-15,[F 1]); 
        adc2.Rgs = repmat(1e9,[F 1]);
        adc2.ct = z_sim_rand_ct(NI9238_ct_min,NI9238_ct_max,5000.0,2.0,f,1)*rnd_ct;
        [adc2.tf_k,adc2.tf_phi] = z_sim_rand_lin_9238(f,U_lin,~is_2x4T,rnd_lin);
        adc2.tf_U = U_lin;      
    endif
    adc2.Rgnd = 0.5 + 0.5*randn*is_mcc;
    adc2.Lgnd = 1e-6 + 1e-6*randn*is_mcc;
    adc2.Rgrd = 0.01 + 0.01*randn*is_mcc;
    adc2.Lgrd = 0.1e-6 + 0.1e-6*randn*is_mcc;
    adc2.guard = is_3458;
    
    % digitizer 3
    if is_3458
        adc3.m_Cin = 10e-12;
        adc3.m_Rin = 1e9;
        adc3.Cin = repmat(adc3.m_Cin + 5e-12*randn*is_mcc,[F 1]); 
        adc3.Rin = repmat(adc3.m_Rin + 5e8*randr*is_mcc,[F 1]);
        adc3.Clg = repmat(1e-9 + 0.1e-9*randn*is_mcc,[F 1]); 
        adc3.Rlg = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
        adc3.Cgs = repmat(1e-9 + 0.1e-9*randn*is_mcc,[F 1]); 
        adc3.Rgs = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
        adc3.ct = repmat(1e-8*(rand + j*rand)*rnd_ct,[F 1]);
        [adc3.tf_k,adc3.tf_phi] = z_sim_rand_lin_9238(f,U_lin,~is_2x4T,rnd_lin);
        adc3.tf_U = U_lin;    
    else
        adc3.m_Cin = 10e-12;
        adc3.m_Rin = 1e9;
        adc3.Cin = repmat(adc3.m_Cin + 5e-12*randn*is_mcc,[F 1]); 
        adc3.Rin = repmat(adc3.m_Rin + 5e8*randr*is_mcc,[F 1]);
        adc3.Clg = repmat(20e-12 + 10e-12*randn*is_mcc,[F 1]); 
        adc3.Rlg = repmat(1e9  + 5e8*randr*is_mcc,[F 1]);
        adc3.Cgs = repmat(1e-15,[F 1]); 
        adc3.Rgs = repmat(1e9,[F 1]);
        adc3.ct = z_sim_rand_ct(NI9238_ct_min,NI9238_ct_max,5000.0,2.0,f,1)*rnd_ct;
        [adc3.tf_k,adc3.tf_phi] = z_sim_rand_lin_9238(f,U_lin,~is_2x4T,rnd_lin);
        adc3.tf_U = U_lin;        
    endif
    adc3.Rgnd = 0.5 + 0.5*randn*is_mcc;
    adc3.Lgnd = 1e-6 + 1e-6*randn*is_mcc;
    adc3.Rgrd = 0.01 + 0.01*randn*is_mcc;
    adc3.Lgrd = 0.1e-6 + 0.1e-6*randn*is_mcc;
    adc3.guard = is_3458;
    
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
    % buffer cables couplings
    M_pot_pot = 100e-9;
    C_pot_pot = 10e-12; 
    par.stray{end+1} = z_sim_stray_values({'Hpot_A','Lpot_A'},{}, 0,M_pot_pot, 0,C_pot_pot, rnd_strays);
    par.stray{end+1} = z_sim_stray_values({'Hpot_B','Lpot_B'},{}, 0,M_pot_pot, 0,C_pot_pot, rnd_strays);
    par.stray{end+1} = z_sim_stray_values({'Hpot_A','Lpot_A'},{'Hpot_B','Lpot_B'}, 0,10e-9, 0,5e-12, rnd_strays);
    % Z2 to Z1 couplings
    M_Z12 = 50e-9;
    C_Z12 = 10e-12;
    par.stray{end+1} = z_sim_stray_values({'Hpot_A','Lpot_A','Hpot_B','Lpot_B'},{'coax_Z1'}, 0,M_Z12, 0,C_Z12, rnd_strays);
    % to supply cables couplings
    M_sup = 30e-9;
    C_sup = 10e-12; 
    par.stray{end+1} = z_sim_stray_values({'Hpot_A','Lpot_A','Hpot_B','Lpot_B','coax_Z1'},{'coax_sup','coax_joint'}, 0,M_sup, 0,C_sup, rnd_strays);    
    par.stray{end+1} = z_sim_stray_values({'coax_sup','coax_joint'},{}, 0,M_sup, 0,C_sup, rnd_strays);
        
    if is_2x4T
        % strays for 4TP to 2x4T convertor
        par.stray{end+1} = z_sim_stray_values({'coax_2hi','coax_2lo'},{},   0,5e-9, 0,5e-12, rnd_strays);
        par.stray{end+1} = z_sim_stray_values({'coax_2live','coax_2sh'},{}, 0,5e-9, 0,5e-12, rnd_strays);
        par.stray{end+1} = z_sim_stray_values({'coax_2live','coax_2sh'},{'coax_2hi','coax_2lo'}, 0,5e-9, 0,5e-12, rnd_strays);
        % strays to other stuff
        M_adA = 10e-9;
        C_adA = 5e-12;
        M_adB = 10e-9;
        C_adB = 5e-12;
        par.stray{end+1} = z_sim_stray_values({'coax_2hi','coax_2lo'},{'Hpot_A','Lpot_A','coax_Z1'},   0,M_adA, 0,C_adA, rnd_strays);
        par.stray{end+1} = z_sim_stray_values({'coax_2live','coax_2sh'},{'Hpot_A','Lpot_A','coax_Z1'}, 0,M_adB, 0,C_adB, rnd_strays);                                
        M_adC = 5e-9;
        C_adC = 5e-12;
        M_adD = 5e-9;
        C_adD = 5e-12;
        par.stray{end+1} = z_sim_stray_values({'coax_2hi','coax_2lo'},{'coax_sup','coax_joint'},   0,M_adC, 0,C_adC, rnd_strays);
        par.stray{end+1} = z_sim_stray_values({'coax_2live','coax_2sh'},{'coax_sup','coax_joint'}, 0,M_adD, 0,C_adD, rnd_strays);
    endif
    
    if is_9238
        % stray capacitances between ADC channels
        par.stray{end+1} = z_sim_stray_values({'wa1lo','wa2lo','wa3lo'},{}, 0,0, 0,10e-12, rnd_strays);        
        par.stray{end+1} = z_sim_stray_values({'wa1lo','wa2lo','wa3lo'},{'wa1hi','wa2hi','wa3hi'}, 0,0, 0,3e-12, rnd_strays);
    endif
    
    % ground lugs coupling
    par.stray{end+1} = z_sim_stray_values({'lug_refg','lug_gr1','lug_srcg'},{'coax_joint','coax_sup','coax_Z1','Lpot_A','Hpot_A','Lpot_B','Hpot_B'}, 0,0, 0,3e-12, rnd_strays);
    
                
    
    % store simulation parameters
    par.src = src;
    par.ca_sup = ca_sup; 
    par.ca_joint = ca_joint;
    par.ca_Z1 = ca_Z1;
    par.ca_Z2 = ca_Z2;
    par.buf_hpot = buf_hpot;
    par.buf_lpot = buf_lpot;
    par.ca_HpotA = ca_HpotA;
    par.ca_HpotB = ca_HpotB;
    par.ca_LpotA = ca_LpotA;
    par.ca_LpotB = ca_LpotB;
    par.ca_2hi = ca_2hi;
    par.ca_2lo = ca_2lo;
    par.ca_2live = ca_2live;
    par.ca_2sh = ca_2sh;
    par.adc1 = adc1;
    par.adc2 = adc2;
    par.adc3 = adc3;
    par.Z1 = Z1;
    par.Z2 = Z2;
    
endfunction


function [ct] = z_sim_rand_ct(ct_min,ct_max,f_max,f_power,f,is_rand)
    % generate some crosstalk data, where ct_min is minimum crosstalk, ct_max is crosstalk at f_max and f_power is rise of ct. with freq (1-linear, 2-square of f) 
    ct = (ct_min.^2 + (ct_max.*(f/f_max).^f_power).^2).^0.5;
    if is_rand
        ct = ct.*(randr(size(ct)) + j*randr(size(ct)));
    endif        
endfunction

function [k,phi] = z_sim_rand_lin_9238(f,U,mode,is_rand)
    
    if mode
        phi_min = 0.5e-6;
        phi_ref = 1e-6;
        phi_fact = 2.0;    
        phi_lev_ref = 0.01;
        phi_lev_pow = 0.5;
        
        k_min = 3e-6;
        k_ref = 5e-6;
        k_fact = 1.5;    
        k_lev_ref = 0.001;
        k_lev_pow = 0.5;
    else
        phi_min = 0.5e-6;
        phi_ref = 1e-6;
        phi_fact = 2.0;    
        phi_lev_ref = 0.01;
        phi_lev_pow = 0.5;
        
        k_min = 15e-6;
        k_ref = 10e-6;
        k_fact = 1.5;    
        k_lev_ref = 0.002;
        k_lev_pow = 0.5;
    endif
    
    phi = (phi_min^2 + (phi_ref*(f/1000).^phi_fact).^2).^0.5.*max(1,(phi_lev_ref./U).^phi_lev_pow); 
    k   = (k_min^2 + (k_ref*(f/1000).^k_fact).^2).^0.5.*max(1,(k_lev_ref./U).^k_lev_pow);
    
    if is_rand > 0
        phi = phi.*randr(size(phi));
        k   = k.*randr(size(k));
    elseif is_rand == 0
        phi = 0*phi;
        k = 0*k;    
    endif
            
endfunction

function [cab] = z_sim_rand_twinax(twax, len, u_len, f, is_mcc)
% randomize twinax cable parameters   

    F = numel(f);    
    w = 2*pi*f;
    
    % to repmat all elements to vectors
    E = ones(size(f));
    
    % randomize length
    len = len + u_len*randn()*is_mcc;

    % try wiggle the constants a little so coupling system is positively definite
    for n = 1:10
    
        Ls  = (twax.Ls + twax.u_Ls*randn()*is_mcc)*len;
        LsG = (twax.LsG + twax.u_LsG*randn()*is_mcc)*len; 
        LsS = (twax.LsS + twax.u_LsS*randn()*is_mcc)*len;
        Mlg = (twax.Mlg + twax.u_Mlg*randn()*is_mcc)*len;
        Mll = (twax.Mll + twax.u_Mll*randn()*is_mcc)*len;
        Mgg = (twax.Mgg + twax.u_Mgg*randn()*is_mcc)*len;
        Mls = (twax.Mls + twax.u_Mls*randn()*is_mcc)*len;
        Mgs = (twax.Mgs + twax.u_Mgs*randn()*is_mcc)*len;
        Mlg2 = (twax.Mlg2 + twax.u_Mlg2*randn()*is_mcc)*len;       
        
        rnd_noise = 0.05;
        
        for m = 1:100
        
            k1 = Mlg./sqrt(Ls.*LsG);
            k2 = Mll./sqrt(Ls.*Ls);
            k3 = Mgg./sqrt(LsG.*LsG);
            k4 = Mls./sqrt(Ls.*LsS) - rand*rnd_noise*(m > 1);
            k5 = Mgs./sqrt(LsS.*LsG) - rand*rnd_noise*(m > 1);
            k6 = Mlg2./sqrt(Ls.*LsG) - rand*rnd_noise*(m > 1);
            
            % coupling matrix
            %    l1   g1   l2   g2   s
            M = [1    k1   k2   k6   k4;
                 k1   1    k6   k3   k5;
                 k2   k6   1    k1   k4;
                 k6   k3   k1   1    k5;
                 k4   k5   k4   k5   1];
            
            % positive definite matrix test
            is_pd = all(eig(M) > 0.01);
            if is_pd
                break;
            endif
        
        endfor
        
        if is_pd
            break;
        else
            % small randomization faild - enable bigger one
            rnd_noise = 0.1;        
        endif
    
    endfor
    
    Mlg = k1.*sqrt(Ls.*LsG);
    Mll = k2.*sqrt(Ls.*Ls);
    Mgg = k3.*sqrt(LsG.*LsG);
    Mls = k4.*sqrt(Ls.*LsS);
    Mgs = k5.*sqrt(LsG.*LsS);
    Mlg2 = k6.*sqrt(Ls.*LsG);
    
    cab.Ls = Ls.*E;
    cab.Rs = (twax.Rs + twax.u_Rs*randn()*is_mcc)*len.*E;
    cab.LsG = LsG.*E;
    cab.RsG = (twax.RsG + twax.u_RsG*randn()*is_mcc)*len.*E;
    cab.LsS = LsS.*E;
    cab.RsS = (twax.RsG + twax.u_RsS*randn()*is_mcc)*len.*E;
    cab.Mlg = Mlg.*E;
    cab.Mll = Mll.*E;
    cab.Mgg = Mgg.*E;
    cab.Mls = Mls.*E;
    cab.Mgs = Mgs.*E;
    cab.Mlg2 = Mlg2.*E;
    cab.Cp = (twax.Cp + twax.u_Cp*randn()*is_mcc)*len.*E;
    cab.Rp = 1./(w.*cab.Cp.*(twax.Dp + twax.u_Dp*randn()*is_mcc));
    cab.CpS = (twax.CpS + twax.u_CpS*randn()*is_mcc)*len.*E;
    cab.RpS = 1./(w.*cab.CpS.*(twax.DpS + twax.u_DpS*randn()*is_mcc));
    cab.CpGG = (twax.CpGG + twax.u_CpGG*randn()*is_mcc)*len.*E;
    cab.RpGG = 1./(w.*cab.CpGG.*(twax.DpGG + twax.u_DpGG*randn()*is_mcc)); 
    
    %error('stop')
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
    elseif strcmpi(Z.mode,'Cp-D')
        Zx = 1./(w*Z.Cp*(j + Z.D));
        Z.R = real(Zx);
        Z.L = imag(Zx)./w;
    else
        error(sprintf('Impedance equivalent circuit ''%s'' not known!',Z.mode));
    endif
    
    
    % 4TP ground modes:
    if isfield(Z,'gmode') && Z.gmode == 1
        % isolate potential and current side
        Z.Rb = 1e-6;
        Z.Lb = 1e-9;
    elseif isfield(Z,'gmode')
        % regular 4TP mode with equal ground impedances between ports
        Z.Rb = Z.Rg;
        Z.Lb = Z.Lg;
        % make correction so 4TP impedance matches desdired value
        Z.R -= Z.Rg;
        Z.L -= Z.Lg;
    else
        Z.Rg = 0;
        Z.Lg = 0;
    endif
    
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