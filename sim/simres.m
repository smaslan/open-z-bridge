
% list of frequencies
f_list = r.f(1,:).';

u_Rs = [];
u_Xs = [];
u_Z = [];
u_ph = [];
for fid = 1:numel(f_list)

    u_Rs(fid,1) = scovint_ofs(r.dRs(:,fid), 0.95, 0);
    u_Xs(fid,1) = scovint_ofs(r.dXs(:,fid), 0.95, 0);
    u_Z(fid,1)  = scovint_ofs(r.dZ(:,fid), 0.95, 0);
    u_ph(fid,1) = scovint_ofs(r.dph(:,fid), 0.95, 0);

endfor

u_Rs
u_Xs
u_Z
u_ph
