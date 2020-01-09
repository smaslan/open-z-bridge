clear all;
close all;
%clc;

disp('------ NEW RUN ------')

%% switch plot output to GNUplot - works a little better under Windoze
if(sum((version-'3.4.3').*10.^(length(version):-1:1))>=0)
  graphics_toolkit('gnuplot');
end

pkg load multicore;

% this path
mfld = fileparts(mfilename('fullpath'));

% simulation data path
%dpth = [mfld filesep '..' filesep '..' filesep 'temp'];

% simulated corrections path
%cpth = [mfld filesep '..' filesep '..' filesep 'temp' filesep 'corr' filesep 'sim_correction.info'];
%mkdir(fileparts(cpth));

% auxiliary data file
%data_fld = [mfld filesep 'data'];



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
md.spice = 'ngspice_con';
md.mod_fld = mfld;
md.name = 'LiB_brg_4TP_twax';
md.force_reload = 1;

% frequency sweep 
swp.f(:,1) = logspaced(1,5e3,20, 2);
swp.Iac = 1.0;
swp.Idc = 0.0;

% set non-zero to enable monte carlo with given cycles count
mcc = 100;

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
    Z2.Pport.len   = 0.1;
    Z2.Pport.u_len = 0.02;
    
    
           
    % generate model parameters
    par = z_sim_gen_params(swp.f, Z1, Z2, (mcc > 0));
    
    % prepare Spice model
    if rep == 1
        [md, par.stray, par.templates] = z_sim_prep_spice(md, par.stray);
    else
        par.stray = jobz{1}.par.stray;
        par.templates = jobz{1}.par.templates;
    endif
    
    %par.stray    
    %error('stop')
    
    
    % make job file
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

