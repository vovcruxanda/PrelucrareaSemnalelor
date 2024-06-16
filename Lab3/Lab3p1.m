%Descompunerea unui semnal periodic s(t) in serie Fourier:
%T=perioada [sec], N=nr. de armonici

T = input('Setati perioada T [sec]: ');
N1 = input('Setati nr. de armonici pentru primul set (N1): ');
N2 = 3 * N1; % N2 este de aproximativ 3 ori mai mare decât N1

% Semnalul s(t)
tip = input('Alegeti tipul semnalului (sin[s], dreptunghiular[d], sau ferestrau[f]): ', 's');
W = 2 * pi / T; % pulsatie fundamentala
t = 0 : T / 1022 : T + T / 1022;

if strcmp(tip,'s')
    s = sin(W * t); % semnal s(t) sinusoidal
else
    for j = 1:1024
        if strcmp(tip,'d')
            if j < 512 %semnal dreptunghiular
                s(j) = 1;
            else
                s(j) = -1;
            end
        elseif strcmp(tip,'f')
            %semnal dinte de ferestrau
            s(j) = j / 500 - 1;
        end
    end
end

% valoarea medie
val_medie = trapz(t,s) / T;

% valoarea efectiva
val_efectiva = sqrt(trapz(t,s.^2) / T);

% timpul
timp = t - T / 2;

% Pentru primul set de armonici (N1)
for i = 1:N1
    % primii N1 coef. trigonometrici
    a1(i) = 2 * trapz(t,s .* cos(i * W * t)) / T;
    b1(i) = 2 * trapz(t,s .* sin(i * W * t)) / T;
    % coeficientii formei armonice
    A1(i) = sqrt(a1(i)^2 + b1(i)^2);
    % defazajele formei armonice
    F1(i) = atan2(b1(i), a1(i));
    f1(i) = i / T;
end

% Pentru al doilea set de armonici (N2)
for i = 1:N2
    % primii N2 coef. trigonometrici
    a2(i) = 2 * trapz(t,s .* cos(i * W * t)) / T;
    b2(i) = 2 * trapz(t,s .* sin(i * W * t)) / T;
    % coeficientii formei armonice
    A2(i) = sqrt(a2(i)^2 + b2(i)^2);
    % defazajele formei armonice
    F2(i) = atan2(b2(i), a2(i));
    f2(i) = i / T;
end

% Reconstructia semnalului pentru primul set de armonici (N1)
r1 = val_medie;
for j = 1:N1
    r1 = r1 + A1(j) * cos(j * W * t - F1(j));
end

% Reconstructia semnalului pentru al doilea set de armonici (N2)
r2 = val_medie;
for j = 1:N2
    r2 = r2 + A2(j) * cos(j * W * t - F2(j));
end

% Afisare rezultate
subplot(331); plot(t, s);
title('semnalul s(t)');
xlabel('t [sec]');
grid;

subplot(335); stem(f1, A1);
title('Armonicile A1(n)*cos[n*2*pi*f*t-Fi1(n)]');
xlabel('f [Hz]');
grid;

subplot(334); plot(t, r1);
title('semnalul reconstruit pentru N1 armonici (verificare)');
xlabel('t [sec]');
grid;

subplot(338); stem(f2, A2);
title('Armonicile A2(n)*cos[n*2*pi*f*t-Fi2(n)]');
xlabel('f [Hz]');
grid;

subplot(337); plot(t, r2);
title('semnalul reconstruit pentru N2 armonici (verificare)');
xlabel('t [sec]');
grid;

subplot(336); stem(f1, F1/pi);
title('defazajele pentru N1');
xlabel('t [sec]');
grid;

subplot(339); stem(f2, F2/pi);
title('defazajele pentru N2');
xlabel('t [sec]');
grid;

