function [] = mi_draw_circle(x,y,d)

    mi_addnode(x-d/2,y);
    mi_addnode(x+d/2,y);
    mi_addarc(x-d/2,y,x+d/2,y,180,1);
    mi_addarc(x+d/2,y,x-d/2,y,180,1);

endfunction
