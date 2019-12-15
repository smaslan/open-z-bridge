function [net,strays] = z_sim_generate_model_strays(net, spec, strays);

    if isempty(spec)
        % --- reload already generated stray data from NET ---
        
        % look for stray coupling tags: $ #xx=<yy>
        [a,b,c,d,e] = regexp(net,'\$\s+#([\d]+)=<([^>]+)>');
        
        % add stray nodes to stray list
        for s = 1:numel(e)
            sid = str2num(e{s}{1});
            if ~isfield(strays{sid}, 'M_names')
                strays{sid}.M_names = {};
            endif
            strays{sid}.M_names{end+1} = e{s}{2};
        endfor
        
        for s = 1:numel(strays)            
            strays{sid}.M_names = unique(strays{sid}.M_names);
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
        
        % stray coupling NET data
        str = [];
        
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
            
            % generate all combinations between elements in group 
            comb = combnk(mid,2);
            
            % generete coupling for combinations
            for k = 1:size(comb,1)
            
                % get elements A and B
                ia = spec{comb(k,1)}; 
                ib = spec{comb(k,2)};
                
                % mutual incutance parameter name 
                mut_name = sprintf('M_stray%02d',mut_id++);
                
                % add mutual inductance to stray list
                %   note: it is later used to generate actual .param Mxxx=value
                stray.M_names{end+1} = mut_name;
                
                k_templ = '.param %s={max(min(%s/sqrt(abs(%s*%s)),0.999),-0.999)} $ #%02d=<%s> - #stray_group_id=<mutual_inductance_parameter>\n';                        
                
                % make K commands
                if ia.is_coax && ib.is_coax
                    % two coaxes: live-a:live-b, gnd-a:gnd-b, live-a:gnd-b, live-b:gnd-a
                    mut_param = sprintf('k_stray%03d',k_id);
                    str = [str sprintf(k_templ, mut_param,mut_name,ia.L_val,ib.L_val,s,mut_name)];
                    str = [str sprintf('Kstray%04d %s %s {%s}\n', k_id, ia.L,  ib.L,  mut_param)]; k_id++;
                    mut_param = sprintf('k_stray%03d',k_id);
                    str = [str sprintf(k_templ, mut_param,mut_name,ia.Lg_val,ib.Lg_val,s,mut_name)];                
                    str = [str sprintf('Kstray%04d %s %s {%s}\n', k_id, ia.Lg, ib.Lg, mut_param)]; k_id++;
                    mut_param = sprintf('k_stray%03d',k_id);
                    str = [str sprintf(k_templ, mut_param,mut_name,ia.L_val,ib.Lg_val,s,mut_name)];
                    str = [str sprintf('Kstray%04d %s %s {%s}\n', k_id, ia.L,  ib.Lg, mut_param)]; k_id++;
                    mut_param = sprintf('k_stray%03d',k_id);
                    str = [str sprintf(k_templ, mut_param,mut_name,ia.Lg_val,ib.L_val,s,mut_name)];
                    str = [str sprintf('Kstray%04d %s %s {%s}\n', k_id, ia.Lg, ib.L,  mut_param)]; k_id++;
                elseif ia.is_coax && ib.is_lug
                    % coax to wire: live-wire, GND-wire
                    mut_param = sprintf('k_stray%03d',k_id);
                    str = [str sprintf(k_templ, mut_param,mut_name,ia.L_val,ib.L_val,s,mut_name)];
                    str = [str sprintf('Kstray%04d %s %s {%s}\n', k_id, ia.L,  ib.L,  mut_param)]; k_id++;
                    mut_param = sprintf('k_stray%03d',k_id);
                    str = [str sprintf(k_templ, mut_param,mut_name,ia.Lg_val,ib.L_val,s,mut_name)];                
                    str = [str sprintf('Kstray%04d %s %s {%s}\n', k_id, ia.Lg, ib.L,  mut_param)]; k_id++;
                elseif ib.is_coax && ia.is_lug
                    % wire to coax: live-wire, GND-wire
                    mut_param = sprintf('k_stray%03d',k_id);
                    str = [str sprintf(k_templ, mut_param,mut_name,ib.L_val,ia.L_val,s,mut_name)];
                    str = [str sprintf('Kstray%04d %s %s {%s}\n', k_id, ib.L,  ia.L,  mut_param)]; k_id++;
                    mut_param = sprintf('k_stray%03d',k_id);
                    str = [str sprintf(k_templ, mut_param,mut_name,ib.Lg_val,ia.L_val,s,mut_name)];
                    str = [str sprintf('Kstray%04d %s %s {%s}\n', k_id, ib.Lg, ia.L,  mut_param)]; k_id++;
                elseif ia.is_lug && ib.is_lug
                    % wire to wire
                    mut_param = sprintf('k_stray%03d',k_id);
                    str = [str sprintf(k_templ, mut_param,mut_name,ia.L_val,ib.L_val,s,mut_name)];
                    str = [str sprintf('Kstray%04d %s %s {%s}\n', k_id, ib.L,  ia.L,  mut_param)]; k_id++;
                else
                    error('Generating stray couplings: unrecognized elemnt type! Only COAXCAB or GNDLUG supported.');
                endif
            
            endfor
            
            strays{s} = stray;    
        endfor % for each stray group
        
        % append to NET
        net = strrep(net,'.end',[sprintf('\* Automatically generated stray couplings\n%s\n.end\n',str)]);
    
    endif

endfunction