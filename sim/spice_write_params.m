function [str] = spice_write_params(file,net,p,f,res_pth)

    cn = fieldnames(p);
    cv = struct2cell(p);
    
    % linebreak:
    CRLF = [char(13),char(10)];
    
    % generate command
    str = sprintf('* Z-bridge\n.control\nac dec 1 %12g %12g\nwrite %s\n.endc\n\n',f,f,res_pth);
    
    % build parameters list:    
    str = [str sprintf('.param %s=%.12g\n',{cn{:};cv{:}}{:})];    
    
    % add model link:
    str = [str CRLF '.include ' net '.cir' CRLF];
    
    % store to file:
    fw = fopen(file,'w');
    fputs(fw,str);
    fclose(fw);

endfunction