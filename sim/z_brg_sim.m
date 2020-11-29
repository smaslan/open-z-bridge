function [model, Z2,d_Z,d_ph,d_Rs,d_Xs] = z_brg_sim(model, par, f, swp, cfg)
    
    % double 4T mode?
    is_4TP = strcmpi(cfg.mode,'4TP');
    is_2x4T = strcmpi(cfg.mode,'2x4T');
    
    % get this frequency ID in the f_list
    %  ###note: 'fid' used to pick the right frequency of freq. dependent quantities
    [v,fid] = min(abs(swp.f - f));
    w = 2*pi*f;

    % --- Z1
    % current port
    p.Rc1 = par.Z1.Rc;
    p.Lc1 = par.Z1.Lc;
    p.Rc1r = par.Z1.Rcg;
    p.Lc1r = par.Z1.Lcg;    
    p.Cc1s = par.Z1.Ccs;
    p.Rc1s = par.Z1.Rcs;
    p.kco1 = par.Z1.kc;
    % potential port
    p.Rp1 = par.Z1.Rp;
    p.Lp1 = par.Z1.Lp;
    p.Rp1r = par.Z1.Rpg;
    p.Lp1r = par.Z1.Lpg;    
    p.Cp1s = par.Z1.Cps;
    p.Rp1s = par.Z1.Rps;
    p.kpo1 = par.Z1.kp;
    % impedance
    p.R1 = par.Z1.R(fid);
    p.L1 = par.Z1.L(fid);
    
    % --- Z2
    % current ports
    p.Rc2 = par.Z2.Rc;
    p.Lc2 = par.Z2.Lc;
    p.Rc2r = par.Z2.Rcg;
    p.Lc2r = par.Z2.Lcg;    
    p.Cc2s = par.Z2.Ccs;
    p.Rc2s = par.Z2.Rcs;
    p.kco2 = par.Z2.kc;
    % potential ports
    p.Rp2 = par.Z2.Rp;
    p.Lp2 = par.Z2.Lp;
    p.Rp2r = par.Z2.Rpg;
    p.Lp2r = par.Z2.Lpg;    
    p.Cp2s = par.Z2.Cps;
    p.Rp2s = par.Z2.Rps;
    p.kpo2 = par.Z2.kp;
    % impedance
    p.R2 = par.Z2.R(fid);
    p.L2 = par.Z2.L(fid);
    % ground Z
    p.R2g = par.Z2.Rg;
    p.L2g = par.Z2.Lg;
    p.R2b = par.Z2.Rb;
    p.L2b = par.Z2.Lb;
        

    % source ground lug
    p.Rsrc = par.src.Rsrc;
    p.Lsrc = par.src.Lsrc;
    % low-to-ground impedance
    p.Rpsrc = par.src.Rpsrc;
    p.Cpsrc = par.src.Cpsrc;
    
    % reference ground lug impedance
    p.Rgref = par.src.Rgref;
    p.Lgref = par.src.Lgref;

    % make supply cable
    [p.Rc4h,p.Rc4g,p.Lc4h,p.Lc4g,p.Cc4sh,p.Rc4sh,p.kc4,p.Rc4ch] = gen_cable(par.ca_sup, f);
    
    % make joint cable
    [p.Rc3h,p.Rc3g,p.Lc3h,p.Lc3g,p.Cc3sh,p.Rc3sh,p.kc3,p.Rc3ch] = gen_cable(par.ca_joint, f);
    
    % make Z1 cable
    [p.Rc1h,p.Rc1g,p.Lc1h,p.Lc1g,p.Cc1sh,p.Rc1sh,p.kc1,p.Rc1ch] = gen_cable(par.ca_Z1, f);
    
    
    % make Z2 potential lugs
    %p.Rpc1 = par.Rpc1;
    %p.Lpc1 = par.Lpc1;
    %p.Rpc2 = par.Rpc2;
    %p.Lpc2 = par.Lpc2;    
    % make Z2 cable
    %[p.Rc2h,p.Rc2g,p.Lc2h,p.Lc2g,p.Cc2sh,p.Rc2sh,p.kc2,p.Rc2ch] = gen_cable(par.ca_Z2, f);
    
    % 4TP to 2x4T convertor
    if is_2x4T
        p = z_sim_template_assign(p, par.templates, 'coax_2hi', gen_cable(par.ca_2hi,f));
        p = z_sim_template_assign(p, par.templates, 'coax_2lo', gen_cable(par.ca_2lo,f));
        ca2live = gen_cable(par.ca_2live,f);
        p = z_sim_template_assign(p, par.templates, 'coax_2live', ca2live);
        p = z_sim_template_assign(p, par.templates, 'coax_2sh', gen_cable(par.ca_2sh,f));
    endif
        
    % make Z2 potential cables (4TP twinax mode)
    p = z_sim_template_assign(p, par.templates, 'Hpot_A', par.ca_HpotA, fid);
    p = z_sim_template_assign(p, par.templates, 'Hpot_B', par.ca_HpotB, fid);
    p = z_sim_template_assign(p, par.templates, 'Lpot_A', par.ca_LpotA, fid);
    p = z_sim_template_assign(p, par.templates, 'Lpot_B', par.ca_LpotB, fid); 
         
    % make buffer for Hpot
    p = z_sim_template_assign(p, par.templates, 'buf_hpot', par.buf_hpot);
    
    % make buffer for Lpot
    p = z_sim_template_assign(p, par.templates, 'buf_lpot', par.buf_lpot);
    
    % make ADC input wires (just for strays simulation)
    adc_lug.Ls = 10e-9;
    adc_lug.Rs = 1e-3;
    p = z_sim_template_assign(p, par.templates, 'wa1lo', adc_lug);
    p = z_sim_template_assign(p, par.templates, 'wa1hi', adc_lug);
    p = z_sim_template_assign(p, par.templates, 'wa2lo', adc_lug);
    p = z_sim_template_assign(p, par.templates, 'wa2hi', adc_lug);
    p = z_sim_template_assign(p, par.templates, 'wa3lo', adc_lug);
    p = z_sim_template_assign(p, par.templates, 'wa3hi', adc_lug);
        
    % make ADC 1
    p.Ca1in = par.adc1.Cin(fid);
    p.Ra1in = par.adc1.Rin(fid);
    p.Ca1lg = par.adc1.Clg(fid);
    p.Ra1lg = par.adc1.Rlg(fid);
    p.Ca1gs = par.adc1.Cgs(fid);
    p.Ra1gs = par.adc1.Rgs(fid);
    p.grda1 = par.adc1.guard;
    p.Rgnd1 = par.adc1.Rgnd;
    p.Lgnd1 = par.adc1.Lgnd;
    p.Rgrd1 = par.adc1.Rgrd;
    p.Lgrd1 = par.adc1.Lgrd;
    % ADC 1 input impedance estimate
    Zin1 = 1./(j*w*par.adc1.m_Cin + 1./par.adc1.m_Rin);
    Zin1 = 1/(1/Zin1 + j*w*p.Cc1sh + 1./p.Rc1sh);
    
    % make ADC 2
    p.Ca2in = par.adc2.Cin(fid);
    p.Ra2in = par.adc2.Rin(fid);
    p.Ca2lg = par.adc2.Clg(fid);
    p.Ra2lg = par.adc2.Rlg(fid);
    p.Ca2gs = par.adc2.Cgs(fid);
    p.Ra2gs = par.adc2.Rgs(fid);
    p.grda2 = par.adc2.guard;
    p.Rgnd2 = par.adc2.Rgnd;
    p.Lgnd2 = par.adc2.Lgnd;
    p.Rgrd2 = par.adc2.Rgrd;
    p.Lgrd2 = par.adc2.Lgrd;
    % ADC 2 input impedance estimate
    Zin2 = 1./(j*w*par.adc2.m_Cin + 1./par.adc2.m_Rin);
    
    % make ADC 3
    p.Ca3in = par.adc3.Cin(fid);
    p.Ra3in = par.adc3.Rin(fid);
    p.Ca3lg = par.adc3.Clg(fid);
    p.Ra3lg = par.adc3.Rlg(fid);
    p.Ca3gs = par.adc3.Cgs(fid);
    p.Ra3gs = par.adc3.Rgs(fid);
    p.grda3 = par.adc3.guard;
    p.Rgnd3 = par.adc3.Rgnd;
    p.Lgnd3 = par.adc3.Lgnd;
    p.Rgrd3 = par.adc3.Rgrd;
    p.Lgrd3 = par.adc3.Lgrd;
    % ADC 3 input impedance estimate
    Zin3 = 1./(j*w*par.adc3.m_Cin + 1./par.adc3.m_Rin);    
    if is_2x4T
        % add 4TP-2x4T adapter impedance
        Zin3 = 1/(1/Zin3 + j*w*ca2live.Cp + 1/ca2live.Rp);
    endif
    
    
    % -- generate stray coupling data    
    % vectorize list of parameters
    pname = fieldnames(p);
    pcell = struct2cell(p);
    
    % check if all parameters are scalars just in case someone screwed up their generation above...
    pscal = cellfun(@isscalar,pcell);
    if ~all(pscal)
        error('Some of the Spice parameters is not scalar? Wtf.');
    endif
        
    % generate stray coupling parameters (mutual inductances and capacitances)
    for s = 1:numel(par.stray)        
        pcell = cat(1,pcell,num2cell(par.stray{s}.M));
        pname = cat(1,pname,par.stray{s}.M_names(:));                
        pcell = cat(1,pcell,num2cell(par.stray{s}.C));
        pname = cat(1,pname,par.stray{s}.C_names(:));
    endfor
    
    % convert vectorized parameters back to struct
    p = cell2struct(pcell,pname);
        
    % source voltages:
    %  ###note: phase angle MUST BE IN DEGREES (shiiiiieeeeet!)
    p.Iac = swp.Iac;
    p.Idc = swp.Idc;
    
    % list of spice variables to extract
    varlist = {'U1_adc_high','U1_adc_low', 'U2_adc_high','U2_adc_low', 'U3_adc_high','U3_adc_low'}(:);
    
    % run simulation and extract result variables    
    [model, vardata] = spice_run_sim(model, f, p, varlist);
    
                   
    % reference impedances (the ones that were simulated)
    Z1r = 1/(1/(par.Z1.R(fid) + j*w*par.Z1.L(fid)) + 1/Zin1);
    Z2r = par.Z2.R(fid)+par.Z2.Rg + j*w*(par.Z2.L(fid)+par.Z2.Lg);
                   
    % extract measured voltages       
    U1 = vardata.U1_adc_high - vardata.U1_adc_low;
    U2 = vardata.U2_adc_high - vardata.U2_adc_low;
    U3 = vardata.U3_adc_high - vardata.U3_adc_low;
    
    % simulate non-linearities
    U1 = U1*(1 + interp1(par.adc1.tf_U, par.adc1.tf_k(fid,:), abs(U1),'extrap'))*exp(j*interp1(par.adc1.tf_U, par.adc1.tf_phi(fid,:), abs(U1),'extrap'));
    U2 = U2*(1 + interp1(par.adc2.tf_U, par.adc2.tf_k(fid,:), abs(U2),'extrap'))*exp(j*interp1(par.adc2.tf_U, par.adc2.tf_phi(fid,:), abs(U2),'extrap'));
    U3 = U3*(1 + interp1(par.adc3.tf_U, par.adc3.tf_k(fid,:), abs(U3),'extrap'))*exp(j*interp1(par.adc3.tf_U, par.adc3.tf_phi(fid,:), abs(U3),'extrap'));    
    
    % add crosstalks
    U1 = U1 + U2*(par.adc1.ct(fid)) + U3*(par.adc1.ct(fid));
    U2 = U2 + U1*(par.adc2.ct(fid)) + U3*(par.adc2.ct(fid));
    U3 = U3 + U1*(par.adc3.ct(fid)) + U2*(par.adc3.ct(fid));
    
    if is_4TP
        % --- Typical 4TP mode 
    
        % reference current corrected for leakage via ADC 2
        Iref = U1/Z1r + U2/Zin2;
        
        % subtract U(Hpot) - U(Lpot) to get voltage drop across Z2
        %U3 = vardata.U3_adc_high - vardata.U3_adc_low;
        U2 = -(U3 - U2);
        
        % measured Z2
        Z2 = -U2/Iref;
    
    elseif is_2x4T
        % --- 2x 4T mode
        
        % subtract U(Hpot) - U(Lpot) to get voltage drop across Z2
        %U3 = vardata.U3_adc_high - vardata.U3_adc_low;
        
        % measured Z2
        Z2a = U3*Z1r*Zin3/(U1*Zin3 - U3*Z1r);
        Z2b = U2*Z1r*Zin2/(U1*Zin2 - U2*Z1r);
        Z2 = Z2a + Z2b;        
        
    else
        % --- differential mode
                
        Iref = U1/Z1r;
        
        % measured Z2
        Z2 = -U2/Iref;
            
    endif
    
    %error('stop')
   
    
    % reference Z2 value
    Z_ref  = abs(Z2r);
    ph_ref = angle(Z2r);
    % measured Z2 value
    Z_x  = abs(Z2);
    ph_x = angle(Z2);
    
    % deviation
    d_Z = Z_x/Z_ref - 1;
    d_ph = ph_x - ph_ref;
    d_Rs = real(Z2) - real(Z2r);
    d_Xs = imag(Z2) - imag(Z2r);

endfunction

function y = get_var(data,names,name)
    y = data(:,find(strcmpi(names,name)));    
endfunction

function [Rp,Rs,Lp,Ls,k] = gen_tr(par)

    Rp = par.Rp;
    Rs = par.Rs;
    Lp = par.Lp;
    Ls = par.Lp*par.r^2;    
    k = sqrt(1 - par.Lsk/Ls); 
    
endfunction

function [Rh,Rl,Lh,Ll,Cs,Rs,k,Rch] = gen_cable(par,f)
    % create cable model

    fid = 1;
    if isfield(par,'ch_f') && numel(par.ch_f) > 1
        [v,fid] = min(abs(par.ch_f - f));        
    end
    
    w = 2*pi*f;
    
    % total len of cable
    len = par.len + par.ch_len;
    
    kh = par.hlr;
    kl = 1 - par.hlr;
    
    Rh = 0.5*(len*par.R*kh); % live R
    Rl = 0.5*(len*par.R*kl); % return R
    
    Lh = (par.ch_L(fid) + len*par.L1m*kh); % live L
    Ll = (par.ch_L(fid) + len*par.L1m*kl); % return L
  
    M = 0.5*(Lh + Ll - len*par.L);
    k = M/sqrt(Lh*Ll); % coupling
    
    % split impedance for model components:
    Lh *= 0.5;
    Ll *= 0.5;
    
    Cs = len*par.C; % shunting capacitance
    Rs = 1./(len*par.C*w*par.D); % shunting resistance
    
    % choke real component
    Rch = par.ch_R(fid);
    
    if nargout == 1
        % single argument output - pack parameters to structure
        p.Rs = Rh;
        p.Ls = Lh;
        p.RsG = Rl;
        p.Lsg = Ll;
        p.Cp = Cs;
        p.Rp = Rs;
        p.k = k;
        p.Rch = Rch;
        Rh = p; % return
    endif
    
endfunction

function [k] = mll2k(L1,L2,M)
    % calculate coupling from inductances
     
    k = M/sqrt(L1*L2);
    if isnan(k)
        k = 0;
    endif
endfunction