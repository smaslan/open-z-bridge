clear all;
close all;
%clc;

pkg load multicore;

disp('------ NEW RUN ------')

% this path
mfld = fileparts(mfilename('fullpath'));



% multicore cores count (0 to not start any, user must start servers manually):
mc_setup.cores = 0;
% run only master if cores count set to 0 (assuming slave servers are already running on background)
mc_setup.run_master_only = 1;
% paths required for the calculation:
%  note: multicore slaves need to know where to find the algorithm functions 
mc_setup.user_paths = {};        
% multicore jobs directory:
mc_setup.share_fld = [mfld filesep 'mc_rubbish'];
if isunix()    
    % lest master work as well, it won't do any harm:
    mc_setup.master_is_worker = 0;
    % use only small count of job files, coz windoze may get mad...    
    mc_setup.max_chunk_count = 5000;
else
    % lest master work as well, it won't do any harm:
    mc_setup.master_is_worker = 0;
    % use only small count of job files, coz windoze may get mad...    
    mc_setup.max_chunk_count = 500;
endif
% multicore method {'for','cellfun','parcellfun','multicore'}:       
mc_setup.method = 'multicore';



% Spice model config
md.spice_fld = 'c:\sw\Spice64\bin\';
md.mod_fld   = mfld; 
if isunix
    md.spice = 'ngspice';
    md.spice_temp = '/dev/shm/';
    md.paste_net = 0;1; % will paste NET file content into NGspice command file - should be faster on Cokl
    md.ngspice.useraw = 0;
else
    md.spice = 'ngspice_con';
    md.spice_temp = md.mod_fld;
    md.paste_net = 0;
    md.ngspice.useraw = 1;
endif
md.name_4TP = 'LiB_brg_4TP_twax';
md.name_2x4T = 'LiB_brg_2x4T_twax';
md.force_reload  = 1;


% frequency sweep 
swp.f(:,1) = logspaced(1,5e3,10, 2);
%swp.f(:,1) = [0.01 0.02 0.05 0.1 0.2 0.5 0.7 1 2];
swp.Iac = 1.0;
swp.Idc = 0.0;

% set non-zero to enable monte carlo with given cycles count
mcc = 0;

% uncertainty simulation setup
unc.is_mcc = (mcc > 1);
% randomize stray couplings?
unc.rnd_strays = 1;
% randomize crosstalk?
unc.rnd_ct = 1;
% randomize linearity?
unc.rnd_lin = 0;

% measurement mode ('4TP'-ordinary two port mode, '2x4T'-emulate 4TP by dual 4T measurement, '4T'-four terminal connection)
cfg.mode = '2x4T';
% digitizer type ('3458'-HP3458A with guarding, '9238'-cDAQ NI9238)
cfg.digitizer = '9238';





if strcmpi(cfg.mode,'4TP')
    md.name = md.name_4TP;
elseif strcmpi(cfg.mode,'2x4T')
    md.name = md.name_2x4T;
else
    error(sprintf('Measurement mode ''%s'' not supported yet!',cfg.mode));
endif


% -- sensitivity analysis
% enable sensitivity analysis
sens.enab = 0;
% parameter name in the 'par' structure (can include sub-structures)
sens.parameter = 'tr_w.C';
% values of parameter to variate
sens.values = logspace(log10(1e-13),log10(100e-12),10); 



% calculate repetition cycles (Monte Carlo or sensitivity analysis)
if mcc && sens.enab
    error('Cannot do Monte Carlo and sensitivity analysis at the same time!');
end
if mcc
    RPC = mcc;
elseif sens.enab
    RPC = numel(sens.values);
else
    RPC = 1;
end



% --- For each repetition ---
jobz = {};
for rep = 1:RPC
    
    %  note: optionally generates multiple jobs for paralleling
    disp(sprintf('Preparing sweep parameters (run %d of %d) ...',rep,RPC));
    
    % generate Z1 
    Z1.mode = 'Rs-Ls';
    Z1.Rs = 0.200;
    Z1.Ls = 0;
    % generate Z2
    Z2.mode = 'Z-phi';
    Z2.Z   = 0.001;logrand(1,0.0001);
    Z2.phi = linrand(0,2*pi);
    %Z2.mode = 'Cp-D';
    %Z2.Cp   = 0.01;
    %Z2.D    = 0.001;    
    Z2.Cport.Rs   = 0.05;
    Z2.Cport.u_Rs = 0.03;
    Z2.Cport.Ls   = 250e-9;
    Z2.Cport.u_Ls = 25e-9;
    Z2.Cport.Cp   = 105e-12;
    Z2.Cport.u_Cp = 10e-12;
    Z2.Cport.L1m   = 1.5e-6;
    Z2.Cport.u_L1m = 0.3e-6;
    Z2.Cport.hlr   = 0.6;
    Z2.Cport.u_hlr = 0.3;
    Z2.Cport.len   = 0.1;
    Z2.Cport.u_len = 0.02;
    Z2.Pport = Z2.Cport;
    Z2.Pport.Rs    = 50.0;
    Z2.Pport.len   = 0.1;
    Z2.Pport.u_len = 0.02;
    % ground impedance between Hpot-Lpot 
    Z2.Rg = linrand(0,100e-6);
    Z2.Lg = linrand(0,10e-9);
    % ground mode (0-4TP mode with equal Zg between all ports, 1-isolated current and potential side)
    Z2.gmode = 0;
    
    
    
           
    % generate model parameters
    par = z_sim_gen_params(swp.f, Z1, Z2, cfg, unc);
    
    % prepare Spice model
    if rep == 1
        [md, par.stray, par.templates] = z_sim_prep_spice(md, par.stray);
    else
        % reasign stray parameters from previously loaded model
        for k = 1:numel(par.stray)
            temp = par.stray{k};
            par.stray{k} = jobz{1}.par.stray{k};
            par.stray{k}.M = temp.M; 
            par.stray{k}.C = temp.C;                
        endfor
        par.templates = jobz{1}.par.templates;
        
        % ###todo: fix - randomized data are overriden here!!! - done above?
        %par.stray = jobz{1}.par.stray;
        %par.templates = jobz{1}.par.templates;               
    endif
    
    % override parameter by sensitivity parameter
    if sens.enab
        value = sens.values(rep);
        eval(['par.' sens.parameter ' = value;']); 
    endif
    
    %par.stray    
    %error('stop')
    
    
    % make job file
    jobz{rep}.cfg = cfg;
    jobz{rep}.swp = swp;    
    jobz{rep}.par = par;
    jobz{rep}.md = md;
    
endfor


% --- execute simulation ---
reps = runmulticore(mc_setup.method, @z_sim_cell, jobz, mc_setup.cores, mc_setup.share_fld, 2, mc_setup);
% get rid of failed iterations
reps = reps(~cellfun(@isempty,reps));
% vectorize results
r = vectorize_structs_elements(reps);

% process results
simres; 

