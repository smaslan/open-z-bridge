% Schmutzig function that will try to find GNU Octave binary path and then 
% launches another instance(s) of if using batch file 
% 'qwtb_mcm_start_servers.bat'. The whole point is to proceduraly start 
% servers (slaves) for the multicore package library.
% The autodetection of Octave binary can be skiped by entering binary path
% explicitly by 'oct_pth'. 
% 'shr_fld' is folder where multicore job files will be shared.
% 'cores' is number of instaces to run
%
% Usage:
%   qwtb_mcm_start_servers(shr_fld, cores)
%   qwtb_mcm_start_servers(shr_fld, cores, oct_pth)                
%
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
%
function [] = qwtb_mcm_start_servers(shr_fld, cores, oct_pth)

    if ~isOctave
        error('Not uspported in Matlab mode! Use GNU Octave.');
    end
    
    % try to load multicore package
    pkg load multicore;

    if ~exist('oct_pth','var')
    
        % --- find octave root path ---
        % following overcomplicated code tries to find current octave binary path
        
        % extract pckage paths:
        pp = [path pathsep];  
        ppid = find(pp == pathsep);
        P = numel(ppid);    
        plist = {};
        for k = 2:P
            plist{end+1} = pp(ppid(k-1)+1:ppid(k)-1);
        end
        P = P - 1;
        
        % current octave binary name:
        oct_name = ['bin' filesep program_name()];
        
        for k = 1:P
            % get some path:
            pth = plist{k};
            
            % get file sep tokens:
            fsid = find(pth == filesep);
            F = numel(fsid);
            
            % try to find out octave installation root path:
            for f = F:-1:1
                % generate potential octave binary path
                oct_tmp = [pth(1:fsid(f)) oct_name];
                
                if exist(oct_tmp,'file')
                    oct_pth = oct_tmp;
                    break;
                end
            end        
            if exist('oct_pth','var')
                break;
            end
        end
        if ~exist('oct_pth','var')
            oct_pth = '';
        end
    
    end
    
    if ~exist(oct_pth,'file')
        error(sprintf('QWTB multistation servers starter failed! Octave binary path ''%s'' not found!',oct_pth));
    end
    
    % binary folder:
    [oct_fld,oct_name] = fileparts(oct_pth);
    
    % this script path:
    m_path = fileparts(mfilename('fullpath'));
    
    % start servers in one window (to not confuse user):
    syscmd = sprintf('START \"GNU Octave - multicore servers\" /D \"%s\" /BELOWNORMAL qwtb_mcm_start_servers.bat \"%s\" \"%s\" %d \"%s\"',m_path,oct_fld,[oct_fld filesep() oct_name],cores,shr_fld);
    popen(syscmd,'r');
    
end