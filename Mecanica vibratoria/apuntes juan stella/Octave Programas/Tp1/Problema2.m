function Problema2
  clc, clear
  i = 0;
  j = 0;
  while(i<2000)
    i = 1 + i;
   if(mod(i, 2)== 0 && mod(i, 7)== 0 && mod(i, 13)== 0)
    j = j+1;
    vect (j,1) = i;
    endif
  endwhile
display (vect);
  endfunction
