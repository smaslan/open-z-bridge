function [net,strays] = z_sim_generate_model_strays(net, spec, strays);

    if isempty(spec)
        % --- reload already generated stray data from NET ---
     
        % look for stray coupling tags: $ #xx=<yy>
        [a,b,c,d,e] = regexp(net,'\$\s+([A-Z])#([\d]+)=<([^>]+)>');
        
        % add stray nodes to stray list
        for s = 1:numel(e)
            sid = str2num(e{s}{2});
            if ~isfield(strays{sid}, 'M_names')
                strays{sid}.M_names = {};
            endif
            if ~isfield(strays{sid}, 'C_names')
                strays{sid}.C_names = {};
            endif
            if e{s}{1} == 'M'
                strays{sid}.M_names{end+1} = e{s}{3};
            elseif e{s}{1} == 'C'
                strays{sid}.C_names{end+1} = e{s}{3};
            else
                error(sprintf('Generating stray couplings: Unknown coupling type detected in CIR file:\%s\n',d{s}));
            endif            
        endfor
        
        for s = 1:numel(strays)            
            strays{sid}.M_names = unique(strays{sid}.M_names);
            strays{sid}.C_names = unique(strays{sid}.C_names);
        endfor
    
    else
        % --- generate stray data to NET --- 
    
        % model emenents count
        E = numel(spec);
       
        for k = 1:E
            el_names{k} = spec{k}.name;
        endfor
        
        % coupling element ID
        k_id = 1;        
        % mutual inductance value (parameter) index
        mut_id = 1;
        
        % capacitive coupling element ID
        C_id = 1;        
        % capacitance value (parameter) index
        Cval_id = 1;
        
        % stray coupling NET data
        str = '';
        
        % for each stray group
        for s = 1:numel(strays)
            stray = strays{s};
            
            % empty mutual inductance list
            stray.M_names = {};
            
            % check existence of all required elements  
            mid = [];
            for k = 1:numel(stray.names)               
                % try to search element in model 
                eid = find(strcmp(stray.names(k), el_names));
                if isempty(eid)
                    error(sprintf('Generating stray couplings: cannot find element ''%s'' in model!',stray.names{k}));
                endif
                % add index to list
                mid(k) = eid;            
            endfor 
            mid2 = [];
            for k = 1:numel(stray.names2)               
                % try to search element in model 
                eid = find(strcmp(stray.names2(k), el_names));
                if isempty(eid)
                    error(sprintf('Generating stray couplings: cannot find element ''%s'' in model!',stray.names2{k}));
                endif
                % add index to list
                mid2(k) = eid;            
            endfor
            
            % generate all combinations between elements in group 
            if isempty(stray.names2)
                % single array combinations            
                comb = combnk(mid,2);
            else
                % two combinations between two arrays                
                [a,b] = meshgrid(mid,mid2);                               
                comb = [a(:) b(:)];
            endif
            
            % generete coupling for combinations
            for k = 1:size(comb,1)
            
                % get elements A and B
                ia = spec{comb(k,1)}; 
                ib = spec{comb(k,2)};
                
                % mutual incutance parameter name 
                mut_name = sprintf('M_stray%03d',mut_id++);
                
                % add mutual inductance to stray list
                %   note: it is later used to generate actual .param Mxxx=value
                stray.M_names{end+1} = mut_name;
                
                % coupling tag
                M_tag = sprintf(' $ M#%03d=<%s>',s,mut_name);
                
                % generate K commands for inductive couplings                                        
                for m = 1:numel(ia.L_name)
                    for n = 1:numel(ib.L_name)
                        % -- for each combination of element A and B
                        eqn = sprintf('{max(min(%s/sqrt(abs(%s*%s)),0.999),-0.999)}', mut_name,ia.L_val{m},ib.L_val{n});
                        str = [str sprintf('Kstray%04d %s %s %s%s\n', k_id, ia.L_name{m}, ib.L_name{n}, eqn, M_tag)]; k_id++;
                        M_tag = '';                                            
                    endfor
                endfor
                
                
                % capacitance name 
                cap_name = sprintf('C_stray%03d',Cval_id++);
                
                % add capacitor to stray list
                %   note: it is later used to generate actual .param Cxxx=value
                stray.C_names{end+1} = cap_name;
                
                % generate C commands for capacitive couplings
                C_tag = sprintf(' $ C#%03d=<%s>',s,cap_name);                        
                for m = 1:numel(ia.C_name)
                    for n = 1:numel(ib.C_name)
                        % -- for each combination of element A and B
                        str = [str sprintf('Cstray%03d %s %s {%s}%s\n', C_id, ia.C_name{m}, ib.C_name{n}, cap_name, C_tag)]; C_id++;
                        C_tag = ''; % put tag only to fist occurence in combination                                            
                    endfor
                endfor
                
            endfor
            
            strays{s} = stray;    
        endfor % for each stray group               
        
        % append to NET
        net = strrep(net,'.end',[sprintf('* Automatically generated stray couplings\n%s\n.end\n',str)]);
    
    endif

endfunction