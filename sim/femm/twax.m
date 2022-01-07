% Simple script for rough calculation of mutual inductances of certain twinax cable.
% The output of this is MAT file that is being expected by open-z-bridge simulator.
%
% This is part of open-z-bridge project: https://github.com/smaslan/open-z-bridge
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
%  
clc;
clear all;
close all;

% this script directory
mfld = mfilename('fullpath'); mfld = mfld(1:strchr(mfld,filesep(),1,'last'));
cd(mfld);

% ========================================================
% Model of Tasker C121 cable with additional shield around
% ========================================================


% femm path
addpath('c:\sw\femm42\mfiles');

% simulation diam
sim_dim = 0.02;

% wire length [m]
l = 1.0;

% outer shield oval
dsa = 0.005;
dsb = 0.0095;
dsw = 0.0001;

% inner coaxes
core_dist = 0.0045;
core_diam = 0.00057;
sh_diam = 0.0023;
sh_width = 0.0001;

% relative permeability
mu = 1.0;

% conductance [uS/cm]
gma = 59;

% current [A]
i0 = 1.0;

% frequency [Hz]
f = 1;


% open femm
openfemm();

% magnetics
newdocument(0);

% common setup for model drawing
mi_probdef(f,'meters','planar',1e-8,l,30,0);

% make open boundary
mi_makeABC(3,sim_dim/2,0,0,0);

% --- circuits
mi_addcircprop('loop',i0,1);

% --- materialz
% define copper
mi_addmaterial('copper', mu, mu, 0, 0, gma, 0, 0, 1, 0, 0, 0, 1, 0);
% define air
mi_addmaterial('air', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0);


par   = {'live','ret','sh','live-ret','live-live','ret-ret','live-sh','ret-sh','live-ret2'};
item  = {'Ls','LsG','LsS','Mlg','Mll','Mgg','Mls','Mgs','Mlg2'};
item2 = {'Rs','RsG','RsS','','','','','',''};

res = struct();

P = numel(par);
for p = 1:P

    if p == 1
        % draw outer shield
        mi_draw_oval(0,0,dsa,dsb);
        mi_draw_oval(0,0,dsa+dsw*2,dsb+dsw*2);
        % define copper
        mi_addblocklabel((dsa+dsw)/2,0);        
    endif
    mi_clearselected();
    mi_selectlabel((dsa+dsw)/2,0);
    if strcmpi(par{p},'sh')
        mi_setblockprop('copper',1,0,'loop',0,0,1);
    elseif any(strcmpi(par{p},{'live-sh','ret-sh'}))
        mi_setblockprop('copper',1,0,'loop',0,0,-1);
    else
        mi_setblockprop('copper',1,0,'',0,0,0);
    endif
    
    if p == 1
        % draw coaxes
        mi_draw_circle(0,+core_dist/2,core_diam);
        mi_draw_circle(0,-core_dist/2,core_diam);
        mi_draw_circle(0,+core_dist/2,sh_diam);
        mi_draw_circle(0,-core_dist/2,sh_diam);
        mi_draw_circle(0,+core_dist/2,sh_diam+2*sh_width);
        mi_draw_circle(0,-core_dist/2,sh_diam+2*sh_width);
        % define copper core A
        mi_addblocklabel(0,core_dist/2);
    endif
    mi_clearselected();
    mi_selectlabel(0,core_dist/2);
    if any(strcmpi(par{p},{'live','live-live','live-ret','live-sh','live-ret2'}))    
        mi_setblockprop('copper',1,0,'loop',0,0,1);
    else
        mi_setblockprop('copper',1,0,'',0,0,0);
    endif
    if p == 1
        % define copper core B
        mi_addblocklabel(0,-core_dist/2);
    endif
    mi_clearselected();
    mi_selectlabel(0,-core_dist/2);
    if any(strcmpi(par{p},{'live-live'}))
        mi_setblockprop('copper',1,0,'loop',0,0,-1);
    else
        mi_setblockprop('copper',1,0,'',0,0,0);
    endif
    % define shiled A copper
    if p == 1
        mi_addblocklabel((sh_diam+sh_width)/2,core_dist/2);
    endif
    mi_clearselected();
    mi_selectlabel((sh_diam+sh_width)/2,core_dist/2);
    if any(strcmpi(par{p},{'ret','ret-ret','ret-sh'}))
        mi_setblockprop('copper',1,0,'loop',0,0,1);
    elseif any(strcmpi(par{p},{'live-ret'}))
        mi_setblockprop('copper',1,0,'loop',0,0,-1);        
    else
        mi_setblockprop('copper',1,0,'',0,0,0);
    endif
    % define shiled B copper
    if p == 1
        mi_addblocklabel((sh_diam+sh_width)/2,-core_dist/2);

    endif
    mi_clearselected();
    mi_selectlabel((sh_diam+sh_width)/2,-core_dist/2);
    if any(strcmpi(par{p},{'ret-ret','live-ret2'}))
        mi_setblockprop('copper',1,0,'loop',0,0,-1);
    else
        mi_setblockprop('copper',1,0,'',0,0,0);        
    endif
    
    if p == 1    
        % define airz
        mi_addblocklabel(0,sim_dim/2-0.5e-3);
        mi_clearselected();
        mi_selectlabel(0,sim_dim/2-0.5e-3);
        mi_setblockprop('air',1,0,'',0,0,0);
        
        mi_addblocklabel(0,0);
        mi_clearselected();
        mi_selectlabel(0,0);
        mi_setblockprop('air',1,0,'',0,0,0);
        
        mi_addblocklabel(0,core_dist/2-sh_diam/4);
        mi_clearselected();
        mi_selectlabel(0,core_dist/2-sh_diam/4);
        mi_setblockprop('air',1,0,'',0,0,0);
        
        mi_addblocklabel(0,-core_dist/2+sh_diam/4);
        mi_clearselected();
        mi_selectlabel(0,-core_dist/2+sh_diam/4);
        mi_setblockprop('air',1,0,'',0,0,0);
    endif
    
    % save model to temp
    mi_saveas('twax.fem');
    
    % run analysis
    mi_analyze(1);
    mi_loadsolution();
    
    % get analysis circuit result
    cpp = mo_getcircuitproperties('loop');
    
    % calculate impedance
    Z = cpp(2)/cpp(1);
    
    % get impedance
    Rs = real(Z);
    Ls = imag(Z)/2/pi/f;    
    res = setfield(res, item{p}, Ls);
    if ~isempty(item2{p})
        res = setfield(res, item2{p}, Rs);
    endif

endfor

cab = res

% convert effective inductances to mutuals 
cab.Mlg  = 0.5*(res.Ls + res.LsG - res.Mlg); 
cab.Mll = 0.5*(res.LsG + res.LsG - res.Mll);
cab.Mgg = 0.5*(res.LsG + res.LsG - res.Mgg);
cab.Mls = 0.5*(res.Ls + res.LsS - res.Mls);
cab.Mgs = 0.5*(res.LsG + res.LsS - res.Mgs);
cab.Mlg2 = 0.5*(res.Ls + res.LsG - res.Mlg2);

% fake some capacitances
cab.Cp = 95e-12;
cab.Dp = 0.02;
cab.CpS = 37e-12;
cab.DpS = 0.02;
cab.CpGG = 60e-12;
cab.DpGG = 0.02;

cab

readme = 'Model of Tasker C121 twinax cable with additional outer shield. Nominal length 1m.'

% save stuff
save('tasker_C121_shield.mat','-binary','cab','readme');









