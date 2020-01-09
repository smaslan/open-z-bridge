function [par] = z_sim_gen_params(f, Z1, Z2, is_mcc)
% This generates Spice model parameters for each frequency of the sweep

    % sweep freq. count
    f = f(:);
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
        
        twax.u_Ls = 0.2*twax.Ls;
        twax.u_Rs = 0.2*twax.Rs;
        twax.u_LsG = 0.2*twax.LsG;
        twax.u_RsG = 0.2*twax.RsG;
        twax.u_LsS = 0.2*twax.LsG;
        twax.u_RsS = 0.2*twax.RsG;
        twax.u_Mlg = 0.2*twax.Mlg;
        twax.u_Mll = 0.2*twax.Mll;
        twax.u_Mgg = 0.2*twax.Mgg;
        twax.u_Mls = 0.2*twax.Mls;
        twax.u_Mgs = 0.2*twax.Mgs;
        twax.u_Mlg2 = 0.2*twax.Mlg2;
        twax.u_Cp = 0.2*twax.Cp;
        twax.u_Dp = 0.2*twax.Dp;
        twax.u_CpS = 0.2*twax.CpS;
        twax.u_DpS = 0.2*twax.DpS;
        twax.u_CpGG = 0.2*twax.CpGG;
        twax.u_DpGG = 0.2*twax.DpGG;        
    endif

    % source ground lug
    src.Rsrc = 0.5  + 0.5*randn*is_mcc;
    src.Lsrc = 1e-6 + 1e-6*randn*is_mcc;
    
    % source cable
    ca_sup = z_sim_rand_cable(rg58, is_mcc);
    ca_sup.len = 0.5 + 0.1*randr*is_mcc;
    ca_sup.ch_L = 0e-3;
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
    
    % Z2 cable (diff mode)
    ca_Z2 = z_sim_rand_cable(rg58, is_mcc);
    ca_Z2.len = (1.0 + 0.2*randr*is_mcc);
    ca_Z2.ch_L = 0;
    ca_Z2.ch_R = 1e-6;
    ca_Z2.ch_len = 0;
    
    % Z2 potential cables (4TP twinax mode) 
    ca_HpotA = z_sim_rand_twinax(twax, 0.5, f, is_mcc);    
    ca_HpotB = z_sim_rand_twinax(twax, 0.5, f, is_mcc);
    ca_LpotA = z_sim_rand_twinax(twax, 0.5, f, is_mcc);    
    ca_LpotB = z_sim_rand_twinax(twax, 0.5, f, is_mcc);  
    
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
    
    % digitizer 1
    adc1.Cin = repmat(270e-12 + 10e-12*randn*is_mcc,[F 1]); 
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
    par.stray{end+1} = z_sim_gen_stray({'Hpot_A','Lpot_A'}, 100e-9, 20e-12, is_mcc);
    par.stray{end+1} = z_sim_gen_stray({'Hpot_B','Lpot_B'}, 100e-9, 20e-12, is_mcc);
    par.stray{end+1} = z_sim_gen_stray({'Hpot_B','U2'}, 100e-9, 20e-12, is_mcc);
    par.stray{end+1} = z_sim_gen_stray({'Hpot_B','U3'}, 100e-9, 20e-12, is_mcc);
    par.stray{end+1} = z_sim_gen_stray({'Lpot_B','U2'}, 100e-9, 20e-12, is_mcc);
    par.stray{end+1} = z_sim_gen_stray({'Lpot_B','U3'}, 100e-9, 20e-12, is_mcc);
    par.stray{end+1} = z_sim_gen_stray({'Hpot_A','coax_sup'}, 100e-9, 20e-12, is_mcc);
    par.stray{end+1} = z_sim_gen_stray({'Hpot_B','coax_sup'}, 100e-9, 20e-12, is_mcc);
    par.stray{end+1} = z_sim_gen_stray({'Hpot_A','coax_joint'}, 100e-9, 20e-12, is_mcc);
    par.stray{end+1} = z_sim_gen_stray({'Hpot_B','coax_joint'}, 100e-9, 20e-12, is_mcc);     
    par.stray{end+1} = z_sim_gen_stray({'Hpot_A','coax_Z1'}, 100e-9, 20e-12, is_mcc);
    par.stray{end+1} = z_sim_gen_stray({'Hpot_B','coax_Z1'}, 100e-9, 20e-12, is_mcc);
    par.stray{end+1} = z_sim_gen_stray({'Lpot_A','coax_Z1'}, 100e-9, 20e-12, is_mcc);
    par.stray{end+1} = z_sim_gen_stray({'Lpot_B','coax_Z1'}, 100e-9, 20e-12, is_mcc);
    %par.stray{end+1} = z_sim_gen_stray({'coax_joint','coax_Z1'}, 100e-9, 20e-12, is_mcc);
    %par.stray{end+1} = z_sim_gen_stray({'coax_sup','coax_Z1'}, 100e-9, 20e-12, is_mcc);
     
     par.stray{end+1} = z_sim_gen_stray({'U3','U4'}, 100e-9, 0, is_mcc);
     par.stray{end+1} = z_sim_gen_stray({'coax_sup','coax_joint'}, 100e-9, 0, is_mcc);
                
    
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
    par.adc1 = adc1;
    par.adc2 = adc2;
    par.adc3 = adc3;
    par.Z1 = Z1;
    par.Z2 = Z2;
    
endfunction


function [cab] = z_sim_rand_twinax(twax, len, f, is_mcc)
% randomize twinax cable parameters   

    F = numel(f);    
    w = 2*pi*f;
    
    % to repmat all elements to vectors
    E = ones(size(f));
    len = len.*E;

    % trye wiggle the constants a little so coupling system is positively definite
    for n = 1:10
    
        Ls = (twax.Ls + twax.u_Ls*randn()*is_mcc)*len;
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
        
            k1 = (Mlg./sqrt(Ls.*LsG))(1);
            k2 = (Mll./sqrt(Ls.*Ls))(1);
            k3 = (Mgg./sqrt(LsG.*LsG))(1);
            k4 = (Mls./sqrt(Ls.*LsS))(1)-rand*rnd_noise*(m > 1);
            k5 = (Mgs./sqrt(LsS.*LsG))(1)-rand*rnd_noise*(m > 1);
            k6 = (Mlg2./sqrt(Ls.*LsG))(1)-rand*rnd_noise*(m > 1);
            
            %    l1   g1   l2   g2   s
            M = [1    k1   k2   k6   k4;
                 k1   1    k6   k3   k5;
                 k2   k6   1    k1   k4;
                 k6   k3   k1   1    k5;
                 k4   k5   k4   k5   1];
            
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
    
    cab.Ls = Ls;
    cab.Rs = (twax.Rs + twax.u_Rs*randn()*is_mcc)*len;
    cab.LsG = LsG;
    cab.RsG = (twax.RsG + twax.u_RsG*randn()*is_mcc)*len;
    cab.LsS = LsS;
    cab.RsS = (twax.RsG + twax.u_RsS*randn()*is_mcc)*len;
    cab.Mlg = Mlg;
    cab.Mll = Mll;
    cab.Mgg = Mgg;
    cab.Mls = Mls;
    cab.Mgs = Mgs;
    cab.Mlg2 = Mlg2;
    cab.Cp = (twax.Cp + twax.u_Cp*randn()*is_mcc)*len;
    cab.Rp = 1./(w.*cab.Cp.*(twax.Dp + twax.u_Dp*randn()*is_mcc));
    cab.CpS = (twax.CpS + twax.u_CpS*randn()*is_mcc)*len;
    cab.RpS = 1./(w.*cab.CpS.*(twax.DpS + twax.u_DpS*randn()*is_mcc));
    cab.CpGG = (twax.CpGG + twax.u_CpGG*randn()*is_mcc)*len;
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
    else
        error(sprintf('Impedance equivalent circuit ''%s'' not known!',Z.mode));
    endif
endfunction


function [stray] = z_sim_gen_stray(names, u_M, u_C, is_mcc)
% make random strays
    stray.names = names;    
    M   = 1e-12;
    C   = 1e-15;
    %stray.M_names = {};
    stray.M = M + u_M*randn(nchoosek(numel(stray.names),2),1)*is_mcc;
    stray.C = C + u_C*randn(nchoosek(numel(stray.names),2),1)*is_mcc;
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