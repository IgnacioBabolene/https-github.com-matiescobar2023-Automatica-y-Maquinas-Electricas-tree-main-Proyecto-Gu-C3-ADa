function Tp52
    clc, clear
    Tp = 3;
    w = 2*pi/Tp;
    N = 1000;
    dt=(Tp-0)/(N-1); %Paso del tiempo
    t = 0:dt:Tp; % grafica hasta 3pi
    tg  = t;
    n = 20; % Número de términos de la serie de Fourier
    A=zeros(length(t),n);
    B=zeros(length(t),n);
    an=zeros(n,1);
    bn=zeros(n,1);
    a0=2/Tp*trapz(t,P(t));


% Calcula los coeficientes de la serie de Fourier
for j=1:n
  A(:,j)= P(t).*cos(w*j*t);
  B(:,j)= P(t).*sin(w*j*t);
   an(j)=2/Tp*trapz(t,A(:,j));
   bn(j)=2/Tp*trapz(t,B(:,j));
 end

fourier=zeros(length(tg),n+1);
for i=1:length(tg)
    fourier(i,1)=a0/2;
    for j=1:(n)
    fourier(i,j+1)=bn(j)*sin(tg(i)*w*j )+an(j)*cos(tg(i)*w*j );
    end
end

suma_fourier = a0/2*ones(size(tg));
for j = 1:n
    suma_fourier = suma_fourier + bn(j)*sin(w*j*tg) + an(j)*cos(w*j*tg);
end
    figure;
    plot(t, P(t), 'b', t, suma_fourier, 'r');
    legend('f(t)', 'Serie de Fourier');
    xlabel('t');
    ylabel('f(t)');
end

function y = P(t)
    Tp1 = 3;
    P0 = 1;
    y = P0 * sign(sin(2*pi*t/Tp1)) .* (sin(2*pi*t/Tp1)>0)  + P0/2 * sign(sin(2*pi*t/Tp1))  .* (sin(2*pi*t/Tp1)<0);
end











