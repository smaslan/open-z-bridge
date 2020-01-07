function run_multicore_slave(jobs_fld)
    
    % get script folder path
    rpth = fileparts(mfilename('fullpath'));
  
    % set current path
    cd(rpth);
    addpath(rpth);

    % no warnings:
    warning('off');
    
    % try to load multicore package
    pkg load multicore;
    
    fprintf('Jobs sharing folder path: ''%s''\n',jobs_fld);
    
    % start multicore server:
    startmulticoreslave(jobs_fld);
    
end