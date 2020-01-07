function [] = mi_draw_oval(x,y,da,db)
    mi_addnode(x-da/2,y+(db-da)/2);
    mi_addnode(x+da/2,y+(db-da)/2);
    mi_addarc(x+da/2,y+(db-da)/2,x-da/2,y+(db-da)/2,180,1);
    mi_addnode(x-da/2,y-(db-da)/2);
    mi_addnode(x+da/2,y-(db-da)/2);
    mi_addarc(x-da/2,y-(db-da)/2,x+da/2,y-(db-da)/2,180,1);
    mi_drawline(x-da/2,y+(db-da)/2,x-da/2,y-(db-da)/2);
    mi_drawline(x+da/2,y+(db-da)/2,x+da/2,y-(db-da)/2);    
endfunction

