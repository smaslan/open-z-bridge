function [Z2,d_Z,d_ph,d_Rs,d_Xs] = z_brg_sim(model, par, f, swp)
    
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
        

    % source ground lug
    p.Rsrc = par.src.Rsrc;
    p.Lsrc = par.src.Lsrc;

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
    
    % make Z2 potential cables (4TP twinax mode)
    p = z_sim_template_assign(p, par.templates, 'Hpot_A', par.ca_HpotA, fid);
    p = z_sim_template_assign(p, par.templates, 'Hpot_B', par.ca_HpotB, fid);
    p = z_sim_template_assign(p, par.templates, 'Lpot_A', par.ca_LpotA, fid);
    p = z_sim_template_assign(p, par.templates, 'Lpot_B', par.ca_LpotB, fid);
    
         
    % make buffer for Hpot
    p = z_sim_template_assign(p, par.templates, 'buf_hpot', par.buf_hpot);
    
    % make buffer for Lpot
    p = z_sim_template_assign(p, par.templates, 'buf_lpot', par.buf_lpot);
        
    % make ADC 1
    p.C1in = par.adc1.Cin(fid);
    p.R1in = par.adc1.Rin(fid);
    p.C1sh = par.adc1.Csh(fid);
    p.R1sh = par.adc1.Rsh(fid);
    p.C1gnd = par.adc1.Csg(fid);
    p.R1gnd = par.adc1.Rsg(fid);
    p.Rgnd1 = par.adc1.Rgnd;
    p.Lgnd1 = par.adc1.Lgnd;
    p.Rgrd1 = par.adc1.Rgrd;
    p.Lgrd1 = par.adc1.Lgrd;
    
    % make ADC 2
    p.C2in = par.adc2.Cin(fid);
    p.R2in = par.adc2.Rin(fid);
    p.C2sh = par.adc2.Csh(fid);
    p.R2sh = par.adc2.Rsh(fid);
    p.C2gnd = par.adc2.Csg(fid);
    p.R2gnd = par.adc2.Rsg(fid);
    p.Rgnd2 = par.adc2.Rgnd;
    p.Lgnd2 = par.adc2.Lgnd;
    p.Rgrd2 = par.adc2.Rgrd;
    p.Lgrd2 = par.adc2.Lgrd;
    % ADC 2 input impedance estimate
    Zin2 = 1./(j*w*p.C2in + 1./p.R2in);
    
    % make ADC 3
    p.C3in = par.adc3.Cin(fid);
    p.R3in = par.adc3.Rin(fid);
    p.C3sh = par.adc3.Csh(fid);
    p.R3sh = par.adc3.Rsh(fid);
    p.C3gnd = par.adc3.Csg(fid);
    p.R3gnd = par.adc3.Rsg(fid);
    p.Rgnd3 = par.adc3.Rgnd;
    p.Lgnd3 = par.adc3.Lgnd;
    p.Rgrd3 = par.adc3.Rgrd;
    p.Lgrd3 = par.adc3.Lgrd;
    
    
    
    
    % generate stray coupling data
    % ###todo: optimize
    for s = 1:numel(par.stray)
        for k = 1:numel(par.stray{s}.M_names)
            p = setfield(p,par.stray{s}.M_names{k},par.stray{s}.M(k));
        endfor
        for k = 1:numel(par.stray{s}.C_names)
            p = setfield(p,par.stray{s}.C_names{k},par.stray{s}.C(k));
        endfor
    endfor
        
    % source voltages:
    %  ###note: phase angle MUST BE IN DEGREES (shiiiiieeeeet!)
    p.Iac = swp.Iac;
    p.Idc = swp.Idc;
            
    % write parameters:
    tag = int2str(rand*1e15);
    file = [model.mod_fld filesep() 'param_' tag '.cir'];
    res_pth = [model.mod_fld filesep() 'data_' tag '.out'];
    spice_write_params(file,model.name,p,f,res_pth);
        
    % simulate:    
    cmd = ['cmd /Q /C "' model.spice_fld model.spice ' -b ' file '" 2> nul'];    
    %cmd = ['cmd /Q /C "' model.spice_fld model.spice ' -b ' file '" '];    
    [eid,str] = system(cmd,true);
    % remove parameters file       
    unlink(file);     
    
    % detect error
    if ~isempty(strfind(str,'Error'))
        error(sprintf('\nSPICE reports error:\n--------------------\n%s',str));                    
    end
        
    % try to read output and remove result file
    [data,names] = spice_readfile_fast(res_pth,'array');
    unlink(res_pth);
    
    
    % reference impedances
    Z1r = par.Z1.R(fid) + j*w*par.Z1.L(fid);
    Z2r = par.Z2.R(fid) + j*w*par.Z2.L(fid);
                
    % extract measured voltages       
    U1 = get_var(data,names,'U1_adc_high') - get_var(data,names,'U1_adc_low');
    U2 = get_var(data,names,'U2_adc_high') - get_var(data,names,'U2_adc_low');
    if strcmpi(model.name,'LiB_brg_4TP_twax')
        % 4TP mode 
        
        % reference current corrected for leakage via ADC 2
        Iref = U1/Z1r + U2/Zin2;
        %Iref = U1/Z1r;
        
        % subtract U(Hpot) - U(Lpot) to get voltage drop across Z2
        U3 = get_var(data,names,'U3_adc_high') - get_var(data,names,'U3_adc_low');
        U2 = -(U3 - U2);
    else
        % differential mode
                
        Iref = U1/Z1r;
            
    endif
    
    %error('stop')
           
    % measured Z2
    Z2 = -U2/Iref;
    
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
    
endfunction

function [k] = mll2k(L1,L2,M)
    % calculate coupling from inductances
     
    k = M/sqrt(L1*L2);
    if isnan(k)
        k = 0;
    endif
endfunction