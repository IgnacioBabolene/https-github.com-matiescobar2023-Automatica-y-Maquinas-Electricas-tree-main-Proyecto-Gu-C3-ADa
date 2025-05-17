function Tp53
    clc, clear
    k = 1;
    P0 = 1;
    a0 = 0;
    m = 1;
   beta = 3/4;
   n = 1:4;
   betam = n*beta;
   bn = -2*P0*(-1).^n/pi./n;
    N = 12;
    omet = 2*pi/N* [0:N];

    for i = 1:length(omet)
        p(i)= sum(bn .* sin (omet(i)*n));
        u(i)= sum(1/k.*(a0 + (1./(1-betam.^2).*(bn .* sin (omet(i).*n)))));
    end
    disp(p)
    figure;
    plot(omet, p, 'b');
    hold on;
    plot(omet, u, 'r');
    hold off;
    legend('Carga P(t)', 'Respuesta del sistema u(t)');
    xlabel('t');
    ylabel('f(t)');
end






