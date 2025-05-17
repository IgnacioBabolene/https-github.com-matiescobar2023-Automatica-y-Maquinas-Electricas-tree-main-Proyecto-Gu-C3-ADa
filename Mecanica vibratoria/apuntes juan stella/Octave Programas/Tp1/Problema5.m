function Problema5
t=[0:2*pi/50:2*pi];
x=2*cos(t);
y=5*sin(t);

% Graficar x en la primera figura
figure(1)
subplot(2,1,1)
plot(t,x)
title('Función x')

% Graficar y en la segunda figura
subplot(2,1,2)
plot(t,y)
title('Función y')

figure (2)
plot(x,y)
title('Función xy')
axis equal;

x1 = cos (t) .* (e.^cos(t) -2*cos(4*t)- (sin(t/12)).^5);
y1 = sin (t) .* (e.^cos(t) -2*cos(4*t)- (sin(t/12)).^5);

figure (3)
subplot(2,1,1)
plot(t,x1)
title('Función x')

% Graficar y en la segunda figura
subplot(2,1,2)
plot(t,y1)
title('Función y')

figure, axis([-3 3 -4 4]), hold on
for i=1:length(t)-1
plot(x(i:i+1),y(i:i+1));
pause(1/10);
end
 hold off
endfunction
