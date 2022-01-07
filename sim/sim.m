% This is simulator of errors and uncertainty of impedance bridge developed in 
% scope of LiBforSecUse EMPIR project:
% https://www.ptb.de/empir2018/libforsecuse/project/overview/
% It uses NG Spice to simulate coaxial circuit of the bridge. 
% This script (and its subfunctions) can procedurally generate additional 
% mutual couplings (capacitive and inductive) to the network to simulate 
% interferences in the network. The parameters in the Spice model
% are all blank and they are assigned by this simulator on the go 
% so it can do simple error calculation, sensitivity analysis or 
% monte carlo uncertainty calculation using randomization of parameters.
% The injection points for the interference couplings are defined 
% in these scripts and in Spice library 'ZbrgLib.cir'. 
% It supports multicore processeing using multicore package and
% it should work even on Linux.
% For details try to follow dense comments in the scripts. There is no
% particular manual as it is still in development. It was originaly made
% for my Ph.D. theses focused in digital sampling impedance bridge, so
% there may be some leftovers from the other project. 
% For details regarding the circuit model itself follow the practice guide 
% that should be distributed along with this project.  
%
% This is part of open-z-bridge project: https://github.com/smaslan/open-z-bridge
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
%  

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
% use 'for' to check everything works!       
mc_setup.method = 'multicore';



% Spice model config
md.spice_fld = 'c:\sw\Spice64\bin\';
md.mod_fld   = mfld; 
if isunix
    md.spice = 'ngspice';
    md.spice_temp = '/dev/shm/';
    md.paste_net = 0;1; % will paste NET file content into NGspice command file - should be faster on supercomp. 'Cokl'
    md.ngspice.useraw = 0;
else
    md.spice = 'ngspice_con';
    md.spice_temp = md.mod_fld;
    md.paste_net = 0;
    md.ngspice.useraw = 1;
endif
% model NET list file name for 4TP configuration
md.name_4TP = 'LiB_brg_4TP_twax';
% model NET list file name for 2x4T configuration
md.name_2x4T = 'LiB_brg_2x4T_twax';
md.force_reload  = 1;


% frequency sweep steps 
swp.f(:,1) = logspaced(1,5e3,10, 2);
%swp.f(:,1) = [0.01 0.02 0.05 0.1 0.2 0.5 0.7 1 2];
swp.Iac = 1.0;
swp.Idc = 0.0;

% set non-zero to enable monte carlo with given cycles count
% otherwise it will just show deviation from expected results
mcc = 100;

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
% parameter name from the 'par' structure (can include sub-structures)
sens.parameter = 'Z1.Rs';
% values of parameter to variate
sens.values = [0.2 0.3 0.5]; 



% calculation repetition cycles (Monte Carlo or sensitivity analysis)
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
    
    % generate Z1 impedance (reference shunt) 
    Z1.mode = 'Rs-Ls';
    Z1.Rs = 0.200;
    Z1.Ls = 0;
    % generate Z2 impedance
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
    
    
    
           
    % generate model parameters (with eventual monte-carlo randomization)
    par = z_sim_gen_params(swp.f, Z1, Z2, cfg, unc);
    
    % prepare Spice model
    if rep == 1
        [md, par.stray, par.templates, sense] = z_sim_prep_spice(md, par.stray);
    else
        % reassign stray parameters from previously loaded model
        for k = 1:numel(par.stray)
            temp = par.stray{k};
            par.stray{k} = jobz{1}.par.stray{k};
            par.stray{k}.M = temp.M; 
            par.stray{k}.C = temp.C;                
        endfor
        par.templates = jobz{1}.par.templates;        
    endif
    
    % override parameter by sensitivity parameter
    if sens.enab
        value = sens.values(rep);
        eval(['par.' sens.parameter ' = value;']); 
    endif
        
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

% process and show results
simres; 

