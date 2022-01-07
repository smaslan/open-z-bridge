% Terminates eventual ngspice processes in pipe mode. Refer to spice_run_sim().
%
% This is part of open-z-bridge project: https://github.com/smaslan/open-z-bridge
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
% 
function [ngspice] = spice_terminate(ngspice)
% tries to terminate NG spice process
    
    % startup failed - try again
    try
        fputs(ngspice.pout,"exit\n");
    end    
    try
        fclose(ngspice.pout);
    end
    try
        fclose(ngspice.pin);
    end
    pause(1.0);
    if pid > 0
        try
            if isunix
                kill(ngspice.pid,9);
            else            
                system(sprintf('takskill /F /PID %d 1>nul 2>&1',ngspice.pid));            
            endif
        end
        waitpid(ngspice.pid,WNOHANG);
    endif
    
    ngspice.pid = -1; 
    	
endfunction