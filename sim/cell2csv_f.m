% cell2csv replacement.
%
% Usage:
%   cell2csv_f(path, cell_array, separator)                   
%
% (c) 2021, Stanislav Maslan, smaslan@cmi.cz/s.maslan@seznam.cz
% The script is distributed under MIT license, https://opensource.org/licenses/MIT.                
%   
function [] = cell2csv_f(pth,csv,sep)
    csv = catcellcsv(csv,';');
    fw = fopen(pth,'w');
    fwrite(fw,csv,'char');
    fclose(fw);      
endfunction