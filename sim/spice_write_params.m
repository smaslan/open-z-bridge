% Writes model parameter values to Spice command file.
% It also generates some header forcing ngspice to switch to 
% binary output mode, sets resolution, etc.
%
% Usage:
%   [str] = spice_write_params(file, model, p, f, res_pth)
%
% Params:
%   file - command file destination path
%   model - struct defined in sim.m and used by all 'spice_' functions in this project
%     model.mod_fld - folder with Spice models
%     model.name - model name (NET list)
%   f - simulation frequency
%   p - struct containing parameters for simulation (scalars only!)
%       The struct item names must match the blank parameter in Spice model, eg:
%       p.Rs will be assigned as directive '.param Rs=value' and used in net list
%       to replace whatever compoenent(s) parameter {Rs}
%
% Returns:
%   str - command string in string form
%
% This is part of open-z-bridge project: https://github.com/smaslan/open-z-bridge
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
% 
function [str] = spice_write_params(file,model,p,f,res_pth)

    % NET list path
    net = fullfile(model.mod_fld, model.name);

    cn = fieldnames(p);
    cv = struct2cell(p);
    
    % linebreak:
    CRLF = [char(13),char(10)];
    
    % some fixed setup
    opts = ['set filetype=binary' CRLF 'set numthreads=1' CRLF 'set numdgt=12'];
    
    % decide if write results to RAW
    if model.ngspice.useraw
        com = '';
    else
        com = '*';
    endif
    
    % generate command
    str = sprintf('* Z-bridge\n.control\n%s\nac dec 1 %12g %12g\n%swrite %s\necho %s\n.endc\n\n',opts,f,f,com,res_pth,model.ngspice.synckey);
    
    % build parameters list:    
    str = [str sprintf('.param %s=%.12g\n',{cn{:};cv{:}}{:})];      
    
    if model.paste_net
        % paste NET list directly
        str = [str CRLF model.net CRLF];
    else
        % add NET link    
        str = [str CRLF '.include ' net '.cir' CRLF];
    endif
    
    % store to file:
    fw = fopen(file,'w');
    fputs(fw,str);
    fflush(fw);
    fclose(fw);

endfunction