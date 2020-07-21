function [model, varstr, vardata] = spice_run_sim(model, f, p, varlist)
% Perform NGspice simulation, obtain desired variables.
% In pipe mode it will start NGspice process (if not running).
% In that case do not forget to terminate it when job is done using spice_terminate().
%
% Params:
%   model.spice_temp - folder to which this mfile generates temp file used by NGspice
%   model.spice_fld - NGspice binary folder (Windoze only)
%   model.spice - NGspice binary name
%   model.ngspice.useraw - non-zero to use single NGspice call per simulation and RAW file for results transfer
%   model.paste_net - non-zero merges commands and parameters to signle file (default 0)
%   f - simulation frequency
%   p - struct containing parameters for simulation (scalars only!)
%   varlist - cell string array of spice variable names to extract
%
% Returns:
%   model - modified 'model' input. Do not loose this for pipe mode!
%   varstr - extracted variables in form of struct elements. Note brackets are removed from names!
%   vardata - extracted variables array in order matching 'varlist'

    % obtain NGspice handles
    if ~isfield(model.ngspice,'pid')        
        model.ngspice.pid = -1;
    endif
    
    % NG spice console synchronization key
    model.ngspice.synckey = 'endofprocessing';
    
    % generate spice communication file names
    tag = int2str(rand*1e15);    
    par_file = fullfile(model.spice_temp, ['param_' tag '.cir']);
    res_pth  = fullfile(model.spice_temp, ['rawdata_' tag '.out']);
    spice_write_params(par_file, model, p, f, res_pth);
        
    if model.ngspice.useraw
        % --- NG spice single call mode (raw file mode) ---
        
        % simulate    
        if isunix
            % Linux
            cmd = [model.spice ' -n -b ' par_file ' 2>&1'];                
        else
            % Windoze
            cmd = ['cmd /Q /C "' model.spice_fld model.spice ' -n -b ' par_file '" 2>&1'];    
            %cmd = ['cmd /Q /C "' model.spice_fld model.spice ' -n -b ' par_file '" '];
        endif    
        [eid,str] = system(cmd,true);
        
        % detect error
        if strfind(str,'Error')
            error(sprintf('\nSPICE reports error:\n--------------------\n%s\n\n',str));                       
        end
    
    else
        % --- NG spice with pipe interface ---
    
        % -- here starts complete processing retry
        for total_retry = 1:3
        
            % is already running?
            if model.ngspice.pid < 0
                
                for retry = 1:10
                
                    % not yet - run it
                    if isunix
                        [model.ngspice.pin, model.ngspice.pout, model.ngspice.pid] = ...
                            popen2('bash', {'-c',['""' model.spice ' -n -p -i 2>&1""']});
                        
                        % try to elevate priority or else Octave eats lot of CPU power as it run in parallel
                        try
                            system(sprintf('renice 1 -p %d 1>/dev/null 2>&1',model.ngspice.pid));
                        end                            
                    else                                           
                        [model.ngspice.pin, model.ngspice.pout, model.ngspice.pid] = ...
                            popen2('cmd', {'/Q','/C',['"' fullfile(model.spice_fld,model.spice) ' -n -p -i 2>&1"']});
                            
                        % try to elevate priority or else Octave eats lot of CPU power as it run in parallel
                        % note: elevating priority to all ngspice processes because I cannot get their pids because calling via cmd.exe!
                        try
                            [eid,tlist] = system('tasklist');
                            [a,b,c,d,e] = regexp(tlist, sprintf('%s[^\\d]+([\\d]+)[^\\n]',model.spice));
                            for sid = 1:numel(e)                            
                                system(sprintf('wmic process where processid=''%d'' CALL SetPriority "Normal" 1>nul 2>&1',str2num(e{sid}{1})));
                            endfor
                        end    
                            
                    endif
                    
                    if model.ngspice.pid < 0 || model.ngspice.pin < 0 || model.ngspice.pout < 0
                        error('popen2(''ngspice'') failed! Wtf?');
                    endif
                    
                    % wait for prompt
                    [str,err] = spice_wait_prompt(model.ngspice,'',5);
                    if err
                        fprintf('- NG spice restart %d\n',retry);
                        model.ngspice = spice_terminate(model.ngspice);
                        pause(rand*10);
                    else
                        break;
                    endif
                
                endfor        
                if err
                    error(sprintf('Starting NG spice failed! Or popen2() returned fucked up pipes. STDOUT+STDERR content (if any):\n%s\n',str));
                endif                
                
            endif
            
            for retry = 1:10
            
                % write command        
                fputs(model.ngspice.pin,[sprintf('source %s',par_file) "\n"]);
                            
                % read untill end of processing mark
                [str,err] = spice_wait_prompt(model.ngspice,model.ngspice.synckey,5);
                if ~err        
                    break;
                else
                    fprintf('- NG spice processing retry %d\n',retry);
                    pause(rand*10);
                endif
            
            endfor
            if err
                fprintf('- total NG spice restart %d\n',total_retry);            
                model.ngspice = spice_terminate(model.ngspice);
                pause(rand*10);
            endif
        
        endfor % total retry loop
        if err
            error(sprintf('NG spice processing timeout! STDOUT+STDERR content (if any):\n%s\n',str));
        endif
    
    endif
   
    % remove parameters file
    unlink(par_file);            
                
    name = {};
    if model.ngspice.useraw        
        % --- RAW result file mode ---
            
        % read RAW file        
        try
            [data,names] = spice_readfile_fast(res_pth,'array');
        catch
            % most likely spice did not performed simulation - plot its stdout+stderr
            error(sprintf('\nSPICE reports error:\n--------------------\n%s\n\n',str));
        end
        
        % remove RAW file       
        unlink(res_pth);
        
        % extract desired variable(s) data
        for k = 1:numel(varlist)
            vardata(k,1) = get_var(data, names, varlist{k});
            name{k,1} = strrep(strrep(varlist{k},'(',''),')','');
        endfor
    
    else
        % --- Pipe mode ---
        
        % read variables
        vardata = spice_get_params(model.ngspice, varlist, 5, 10)(:);
        
        % make valid struct names
        for k = 1:numel(varlist)
            name{k,1} = strrep(strrep(varlist{k},'(',''),')','');
        endfor

    endif
    
    % build variable struct
    varstr = cell2struct(num2cell(vardata),name);   
    
    
    if ~model.ngspice.useraw
        % try to release some old data to prevent memory leak
        fputs(model.ngspice.pin, "destroy all\n");
        %fputs(model.ngspice.pin, "reset\n");
    endif
    
endfunction

% read error from stderr (pipe mode)
function [strerr] = spice_read_error(ngspice)    
    strerr = fread(ngspice.perr,inf,'char')';
endfunction


% wait for NG spice being ready (detect 'key' and wait for prompt) 
function [ngo,err] = spice_wait_prompt(ngspice,key='',timeout=10)

    % read untill end of processing mark
    tid = tic();
    t0 = toc(tid);        
    ngo = '';
    err = 1;
    while toc(tid) - t0 < timeout                 
        % try to read from source
        ngline = '';
        count = 0;
        if ~feof(ngspice.pout)
            [ngline,count] = fread(ngspice.pout,inf,'char');                
        else
            frewind(ngspice.pout);
        endif
        
        if count
            % append new data
            ngo = [ngo ngline'];
            
            % search for a key
            if isempty(key)
                sid = 1;
            else
                sid = strfind(ngo,key);
            endif
            if ~isempty(sid)
                after_key = sid(end) + numel(key);                                
                [a,b,c,d,e] = regexp(ngo(after_key:end), '.*ngspice.*\D+->.*');
                if ~isempty(e)
                    % promt detected
                    err = 0;
                    break;
                endif                                                
            endif
            
        else
            pause(0.01);
        endif        

    endwhile

endfunction


% querrys vector of complex variables 'list' from NGspice via console 
function [values] = spice_get_params(ngspice,list,timeout=5,retries=1)
            
    % make answer search key
    key = '';
    for k = 1:numel(list) 
        key = [key sprintf('%s.*=([^,]+),([^\\n]+).*',list{k})];
    endfor
    key = tolower(key);    
    
    for retry = 1:retries
    
        % initiate result printout
        fprintf(ngspice.pin,'print %s',catcellcsv(list,' '));
        fputs(ngspice.pin,"\n");
    
        % read untill end of processing mark
        tid = tic();
        t0 = toc(tid);        
        ngo = '';
        err = 1;
        while toc(tid) - t0 < timeout                
            
            % try to read from source
            ngline = '';
            count = 0;
            if ~feof(ngspice.pout)
                [ngline,count] = fread(ngspice.pout,inf,'char');                
            else
                frewind(ngspice.pout);
            endif
            
            if count
                % append new data
                ngo = [ngo ngline'];
                % check if answer is the
                [a,b,c,d,e] = regexp(ngo,key);
                if ~isempty(e)
                    err = 0;
                    break;
                endif
            else
                pause(0.001);
            endif        
        endwhile
        if ~err            
            break;
        endif
    endfor    
    if err
        error('NG spice quantity fetch: NG spice did not responded in given timeout!');
    endif
    
    % extract complex values    
    values = cellfun(@str2num,e{1},'UniformOutput',true);
    values = complex(values(1:2:end),values(2:2:end));        
       
endfunction

% search particular variable in prefetched RAW array 'data' and 'names'
function y = get_var(data,names,name)
    y = data(:,find(strcmpi(names,name)));    
endfunction

