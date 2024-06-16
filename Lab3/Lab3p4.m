pkg load signal
% Generarea semnalului impuls unitar dreptunghiular
Ts = 0.01; % Pasul de eșantionare
T = 1; % Durata analizei
A = 0.85; % Amplitudinea impulsului
w = 0.5; % Durata impulsului

N = T / Ts; % Numărul de eșantioane
t = -T / 2 : Ts : T / 2; % Vectorul timp

y = A * rectpuls(t, w); % Semnalul impuls unitar dreptunghiular
figure;
% Afisarea semnalului
subplot(311);
plot(t, y);
title('Impuls unitar dreptunghiular');
xlabel('Timpul [sec]');
ylabel('Amplitudine');
grid on;

% Aplicarea procedurii fft
x = fft(y) / N;
df = 1 / T;
Fm = 1 / Ts;
a = abs(x);
f = 0 : df : Fm;

% Afisarea functiei de densitate spectrala (procedura fft)
subplot(312);
plot(f, a);
grid on;
title('Functia de densitate spectrala (procedura fft)');
xlabel('Frecventa [Hz]');
ylabel('Modulul');

% Aplicarea procedurii fftshift
xp = fftshift(x);
a = abs(xp);
f1 = -Fm / 2 : df : Fm / 2;

% Afisarea functiei de densitate spectrala (procedura fftshift)
subplot(313);
plot(f1, a);
grid on;
title('Functia de densitate spectrala (procedura fftshift)');
xlabel('Frecventa [Hz]');
ylabel('Modulul');

