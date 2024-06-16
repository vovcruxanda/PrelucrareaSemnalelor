% Definirea semnalului dat de profesor
Ts = 0.01; % Pasul de eșantionare
T = 10; % Durata semnalului
t = 0:Ts:T; % Vectorul timp
y = 3 * cos(2 * pi * t) + sin(4 * pi * t) + 4 * cos(6 * pi * t); % Semnalul poliharmonic

% Afisarea semnalului
subplot(311);
plot(t, y);
title('Semnalul poliharmonic');
xlabel('Timp [sec]');
ylabel('Amplitudine');
grid on;

% Calculul spectrului
df = 1 / T; % Rezoluția frecvenței
Fm = 1 / Ts; % Frecvența maximă Nyquist
len = length(t);
f = -Fm / 2:df:Fm / 2;
x = fft(y) / len;
xs = fftshift(x);
A = abs(xs);

% Afisarea spectrului de amplitudine
subplot(312);
stem(f, A);
title('Spectrul de amplitudine');
xlabel('Frecventa [Hz]');
ylabel('Modulul');
grid on;

% Calculul și afișarea spectrului de fază
Re = real(xs);
Im = imag(xs);
phi = atan2(Im, Re);

subplot(313);
plot(f, phi);
title('Spectrul de faza');
xlabel('Frecventa [Hz]');
ylabel('Faza [rad]');
grid on;

