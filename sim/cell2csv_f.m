function [] = cell2csv_f(pth,csv,sep)
    csv = catcellcsv(csv,';');
    fw = fopen(pth,'w');
    fwrite(fw,csv,'char');
    fclose(fw);      
endfunction