function Problema3
  clc,clear
  a = [0.1, 0.25, 1];
  i = 3;
  a1 = a(i);
  b = 1;
  c = 1;
  dis = b^2 - 4*a1*c;
  if dis > 0
    r1 = (-b + sqrt(b^2 - 4*a1*c)) / (2*a1);
    r2 = (-b - sqrt(b^2 - 4*a1*c)) / (2*a1);
    fprintf("La primera raiz real distinta es:  %.2f \n", r1);
    fprintf("La segunda raiz real distinta es: %.2f  \n", r2);
  endif

  if (dis == 0)
    r1 = (-b + sqrt(b^2 - 4*a1*c)) / (2*a1);
    fprintf ("El valor de las raices reales iguales es: %.2f \n", r1);
  endif

  if dis < 0
    real  = -b/(2*a1);
    i1 = sqrt(abs(b^2 - 4*a1*c))/ (2*a1);
    fprintf ("La primera raiz imaginaria es: %.2f+i %.2f \n", real, i1 );
    fprintf ("La segunda raiz imaginaria es: %.2f-i %.2f \n", real, i1 );
  endif
  endfunction
