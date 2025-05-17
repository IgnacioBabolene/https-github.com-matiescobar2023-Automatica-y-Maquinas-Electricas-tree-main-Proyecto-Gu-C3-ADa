function Problema6
  clc,clear
   y0 = [-5; -3; 0; 3; 5];
   tspan= 0:0.01:3;
   f = @(y,t) (-2*y + 2*cos(t).*sin(2*t));
   [t, y] = ode45(@(t,y) f(y,t), tspan, y0);
   plot(t, y);
  endfunction
