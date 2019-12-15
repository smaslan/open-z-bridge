function [data,names] = spice_readfile_fast(filename, mode, list)

    % read data
    [fid,msg] = fopen(filename,'r');
    if fid == -1
        error('spice_readfile: file reading failed');
    end
    str = fread(fid, [1,inf], 'uint8=>char');
    fclose(fid);
    
    % temporary line break:
    NL = char([10]);
    TAB = char([9]);
    
    % add linebreaks around data (for simpler tokenization):
    %inf = [NL inf NL];
    
    % get rid of system specific EOLs but do not change string size!:
    % note the result is stored in temporary string! original must be preserved
    % replace windows CRLF by ' LF'
    %str = strrep(str,char([13 10]),char([32 NL]));
    % not convert the rest of CR/LF to LF:
    %str = strrep(str,char(13),NL);
       
    % find line breaks:
    nls(:,1) = find(str == NL);
      
    % get variables count
    sid = strfind(str, 'No. Variables:');
    sed = find(nls > sid,1);
    N = str2num(str(sid + 15:nls(sed)));
    
    % get variable list section
    sid = strfind(str, [NL 'Variables:']) + 1;
    nlid = nls(find(nls > sid,N + 1));
    
    % get data
    sid = strfind(str, [NL 'Binary:']) + 1;
    bid = nls(find(nls > sid + 1,1)) + 1;    
    bin = typecast(str(bid:end),'double complex');
    
    % make variable list to return
    if strcmpi(mode,'struct')
        data = struct();
        for v = 1:N
            vars = str(nlid(v)+1:nlid(v+1)-1);
            tabs = strfind(vars,TAB);
            data = setfield(data,vars(tabs(2)+1:tabs(3)-1),bin(v));        
        end
    else
        data = struct();
        for v = 1:N
            vars = str(nlid(v)+1:nlid(v+1)-1);
            tabs = strfind(vars,TAB);
            names{v} = vars(tabs(2)+1:tabs(3)-1);                    
        end
        data = bin;
    end
    
    
  
  ## error handling
%   if (nargin < 1)
%     usage("spice_readfile(filename[,mode])");
%   endif
% 
%   if (nargin == 1)
%     mode=0;
%   endif
% 
%   if (mode > 1)
%     error("spice_readfile: mode must be lower than 2");
%   endif
% 	
%   [fid,msg]=fopen(filename,"r");
%   if (fid == -1)
%     error("spice_readfile: file reading failed");
%   endif	
% 
%   ## defaultvalues
%   realflag=1;    ## number type is real, not complex
%   paddedflag=1;  ## with zeros padded data 
%   binaryflag=1;  ## binary data type
%   s.no_points=0;
%   s.no_variables=0;
%   s.dimensions=0;
%   s.commands={};
%   s.options={};
% 
%   ## read the file header of the file
%   ## these are colonseperated key/value pairs
%   while ((line=fgets(fid)) != -1)
%     line=deblank(strjust(line,"left")); 
%     linelength=length(line);
% 
%     if (linelength >= length("title:") && strcmp(lower(line(1:6)),"title:"))
%       if (linelength==6)
% 	s.title="";
%       else
% 	s.title=deblank(strjust(line(7:length(line)),"left"));
%       endif
%     endif
% 
%     if (linelength >= length("date:") && strcmp(lower(line(1:5)),"date:"))
%       if (linelength==5)
% 	s.date="";
%       else
% 	s.date=deblank(strjust(line(6:length(line)),"left"));
%       endif
%     endif
% 
%     if (linelength >= length("plotname:") 
% 	&& strcmp(lower(line(1:9)),"plotname:"))
%       if (linelength==9)
% 	s.plotname="";
%       else
% 	s.plotname=deblank(strjust(line(10:length(line)),"left"));
%       endif
%     endif
% 
%     if (linelength >= length("flags:") 
% 	&& strcmp(lower(line(1:6)),"flags:"))
%       if (linelength==6)
% 	s.flags={};
% 	warning("spice_readfile: no flag given in file");
%       else
% 	[str{1},str{2},str{3},n]=sscanf(line(7:linelength)," %s %s %s","C");
% 	s.flags=str(1,1:n);
% 	if (length(s.flags) > 2)
% 	  warning("spice_readfile: to many flags given in file");
% 	endif
% 	for i = 1:n
% 	  if (strcmp(s.flags{i},"real"))
% 	    realflag=1;
% 	  elseif (strcmp(s.flags{i},"complex"))
% 	    realflag=0;
% 	  elseif (strcmp(s.flags{i},"padded"))
% 	    paddedflag=1;
% 	  elseif (strcmp(s.flag{i},"unpadded"))
% 	    paddedflag=0;
% 	    warning("spice_readfile: unpadded data not handled yet");
% 	  else
% 	    warning("spice_readfile: unknown flag %s",s.flags{i});
% 	  endif
% 	endfor
%       endif
%     endif
% 
%     if (linelength >= length("no. variables:") 
% 	&& strcmp(lower(line(1:14)),"no. variables:"))
%       if (linelength>14)
% 	[s.no_variables,n]=sscanf(line(15:linelength)," %d","C");
%       endif
%     endif
% 
%     if (linelength >= length("no. points:") 
% 	&& strcmp(lower(line(1:11)),"no. points:"))
%       if (linelength>11)
% 	[s.no_points,n]=sscanf(line(12:linelength)," %d","C");
%       endif
%     endif
% 
%     if (linelength >= length("dimensions:") 
% 	&& strcmp(lower(line(1:11)),"dimensions:"))
%       if (linelength>11)
% 	[s.dimensions,n]=sscanf(line(12:linelength)," %d,",[1,inf]);
% 	warning("spice_readfile: multiple dimensions not implemented yet");
%       endif
%     endif
% 
%     if (linelength >= length("command:") 
% 	&& strcmp(lower(line(1:8)),"command:"))
%       if (linelength>8)
% 	s.commands{length(s.commands)+1}=deblank(strjust(line(9:linelength),
% 							 "left"));
%       endif
%     endif
% 
%     if (linelength >= length("option:") 
% 	&& strcmp(lower(line(1:7)),"option:"))
%       if (linelength>7)
% 	s.options{length(s.commands)+1}=deblank(strjust(line(8:linelength),
% 							 "left"));
%       endif
%     endif
%     
%     if (linelength >= length("variables:")
% 	&& strcmp(lower(line(1:10)),"variables:"))
%       s.variables=cell(s.no_variables,8);
%       for i = 1:s.no_variables
% 	line = fgets(fid);
% 	[str{1},str{2},str{3},str{4},str{5},str{6},str{7},str{8},str{9},n]= sscanf(line," %s %s %s %s %s %s %s %s %s","C");
% 	if (n < 3)
% 	  error("spice_readfile: to few variable tokens given");
% 	elseif (n > 8)
% 	  warning("spice_readfile: to many variable tokens given");
% 	  n=8
% 	endif
% 	s.variables(i,1:n)=str(1:n);
%       endfor
%     endif
%     
%     if (strcmp(lower(line(1:7)),"values:"))
%       binaryflag=0;
%       ## data section begins, leave the header scanner
%       break;
%     endif
%     if (strcmp(lower(line(1:7)),"binary:"))
%       binaryflag=1;
%       ## data section begins, leave the header scanner
%       break;
%     endif
%   endwhile
%   
%   ## FIXME: unpadded data is not handled
%   if (binaryflag==1 && realflag==1)
%     data=fread(fid,[s.no_variables,inf],"float64",0);
%     data=data';
%   elseif (binaryflag==0 && realflag==1)
%     data=fscanf(fid," %e",[s.no_variables+1,inf]);
%     data=data(2:s.no_variables+1,:)';
%   elseif (binaryflag==1 && realflag==0)
%     data=fread(fid,[2*s.no_variables,inf],"float64",0);
%     ## convert data from real and imaginary to complex
%     data=data';  ## change row/columns before combining to complex
%     for n = 1:s.no_variables
%       data(:,n)=data(:,2*n-1)+1i.*data(:,2*n);
%     endfor
%     data=data(:,1:s.no_variables);
%   else ## (binaryflag==0 && realflag==0)
%     data=[];
%     while (1)
%       [nr,n]=fscanf(fid,"%d","C");
%       if (n != 1)
% 	break;
%       endif
%       [vals,n]=fscanf(fid,"%e,%e",[2,s.no_variables]);
%       if (n != 2*s.no_variables)
% 	break;
%       else
% 	data=[data;vals(1,:)+1i*vals(2,:)];  ## !!slow implementation
%       endif
%     endwhile
%   endif
% 
%   ## put the values together 
%   struct=s;
%   colnames=s.variables(1:s.no_variables,2);
%   fclose(fid);
  
endfunction


