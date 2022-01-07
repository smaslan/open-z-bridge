
% simulation was uncertainty?
%is_unc = size(r.f,1) > 1;
is_unc = unc.is_mcc;

% list of frequencies
f_list = r.f(1,:).';

if is_unc
    % --- Uncertainty mode ---
    u_Rs = [];
    u_Xs = [];
    u_Z = [];
    u_ph = [];
    for fid = 1:numel(f_list)
    
        u_Rs(fid,1) = scovint_ofs(r.dRs(:,fid), 0.95, 0);
        u_Xs(fid,1) = scovint_ofs(r.dXs(:,fid), 0.95, 0);
        u_Z(fid,1)  = scovint_ofs(r.dZ(:,fid),  0.95, 0);
        u_ph(fid,1) = scovint_ofs(r.dph(:,fid), 0.95, 0);
    
    endfor
    
    u_Rs
    u_Xs
    u_Z
    u_ph
    
    csv = [f_list, 1e6*u_Rs, 1e6*u_Xs, 1e6*u_Z, 1e6*u_ph];
    csv_head = {'f','uRs','uXs','uZ','uPh'};
    csv = cat(1,csv_head,num2cell(csv));
    cell2csv('unc_1m_ct.csv',csv,';');

else
    % --- Error mode: one column per sensitivity analysis step ---  
    abs_dev_Rs = r.dRs.'    
    abs_dev_Xs = r.dXs.'
    rel_dev_Z = r.dZ.'    
    abs_dev_phi = r.dph.'
    
endif