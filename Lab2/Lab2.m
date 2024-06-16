%Ex 2.1
% Definirea secvenţelor
n = -15:15;
x1 = 0.8 * (n == 0); % x1[n]=0.8 δ[n]

n = 1:20;
x2 = 0.9 * (n == 5); % x2[n]=0.9 δ[n-5]

n = 300:350;
x3 = 1.5 * (n == 333); % x3[n]=1.5 δ[n-333]

n = -10:0;
x4 = 4.9 * (n == -7); % x4[n]=4.9 δ[n+7]

n = -10:10;
x5 = 4 * (n >= 0); % x5[n]=4 u[n]

n = -5:20;
x6 = 1.4 * (n >= 7); % x6[n]=1.4 u[n-7]

n = -15:10;
x7 = 2.3 * (n >= -5); % x7[n]=2.3 u[n+5]

% Reprezentarea grafică a secvenţelor
figure;

subplot(4, 2, 1);
stem(-15:15, x1);
title('x1[n]=0.8 δ[n]');
xlabel('n');
ylabel('Amplitudine');

subplot(4, 2, 2);
stem(1:20, x2);
title('x2[n]=0.9 δ[n-5]');
xlabel('n');
ylabel('Amplitudine');

subplot(4, 2, 3);
stem(300:350, x3);
title('x3[n]=1.5 δ[n-333]');
xlabel('n');
ylabel('Amplitudine');

subplot(4, 2, 4);
stem(-10:0, x4);
title('x4[n]=4.9 δ[n+7]');
xlabel('n');
ylabel('Amplitudine');

subplot(4, 2, 5);
stem(-10:10, x5);
title('x5[n]=4 u[n]');
xlabel('n');
ylabel('Amplitudine');

subplot(4, 2, 6);
stem(-5:20, x6);
title('x6[n]=1.4 u[n-7]');
xlabel('n');
ylabel('Amplitudine');

subplot(4, 2, 7);
stem(-15:10, x7);
title('x7[n]=2.3 u[n+5]');
xlabel('n');
ylabel('Amplitudine');


%Ex. 2.2
% Definirea parametrilor semnalului sinusoidal
A = 2; % Amplitudinea
f = 4; % Frecvența pentru a face 8 oscilații în intervalul [0, 2]
t = linspace(0, 2, 1000); % Definirea domeniului timpului

% Generarea semnalului sinusoidal
y = A * sin(2 * pi * f * t+pi/2)+5;

% Reprezentarea grafică a semnalului sinusoidal
figure
plot(t, y, 'b', 'LineWidth', 2);
title('Semnal sinusoidal cu 8 oscilații complete');
xlabel('Timp (secunde)');
ylabel('Amplitudine');
axis([0 2 3 7])
grid on;

%Ex. 2.3
% Definim intervalul de timp
pkg load signal;
t = 0:0.001:2;

% Definim semnalul dreptunghiular
semnal_dreptunghiular = 2*square(12*t, 50);

% Plotăm semnalul dreptunghiular
figure
plot(t, semnal_dreptunghiular);
axis([min(t), max(t), -2.5, 2.5]);
grid;

% Adăugăm etichetele axelor și titlul graficului
xlabel('Timp');
ylabel('Amplitudine');
title('Semnal Dreptunghiular');

%Ex. 2.4
pkg load signal
% Definim intervalul de timp
t = 0:0.001:2;

% Definim semnalul ferastrau
semnal_ferastrau = sawtooth(12.6*t,0.5);

% Plotăm semnalul dreptunghiular
figure
plot(t, semnal_ferastrau);
axis([min(t), max(t), -1, 1]);
grid;

% Adăugăm etichetele axelor și titlul graficului
xlabel('Timp');
ylabel('Amplitudine');
title('Semnal Ferastrau');

%Ex. 2.5
% Definirea parametrilor semnalului
A = 1;
T = 50; % în secunde
f = pi/3; % în radiani

% Definirea intervalului de timp
t = 0:0.002:256; % 0.002 este intervalul de eșantionare
% pentru a obține un interval de timp între 0 și 256 secunde

% Calculul oscilației armonice
x = A * sin(2*pi*t/T + f);
figure
% Reprezentarea grafică a oscilației armonice
plot(t, x);
xlabel('Timp (s)');
ylabel('Amplitudine');
title('Oscilație armonică');
axis([0 256 -1 1]);

%Ex. 2.6
% Definirea rezoluției temporale
fd = 1000; % Frecvența de eșantionare în Hz

t = linspace(0, 1, fd);

% a) Semnalul exponențial 5*exp(-6*t)
a = 5 * exp(-6 * t);

% b) Semnalul exponențial exp(5*t)
b = exp(5 * t);
figure
% Reprezentarea grafică a semnalelor
subplot(2,1,1);
plot(t, a);
title('Semnal exponențial: 5*exp(-6*t)');
xlabel('Timp (s)');
ylabel('Amplitudine');

subplot(2,1,2);
plot(t, b);
title('Semnal exponențial: exp(5*t)');
xlabel('Timp (s)');
ylabel('Amplitudine');

%Ex. 2.7
% Definirea parametrilor impulsului exponențial
B = 1;
r = 0.8;

% Definirea intervalului de timp
t = -10:0.01:10; % pasul de eșantionare este 0.01 pentru o rezoluție mai bună

% Calcularea impulsului exponențial pentru fiecare punct de pe interval
x = B * r .^ t;
figure
% Reprezentarea grafică a impulsului exponențial
plot(t, x);
xlabel('Timp (s)');
ylabel('Amplitudine');
title('Impuls Exponențial');

%Ex. 2.8
% Definirea expresiei semnalului sinusoidal
A = 2; % amplitudinea
f = 1/12; % frecvența

% Definirea intervalului de timp
t = -10:0.01:10; % pasul de eșantionare este 0.01 pentru o rezoluție mai bună

% Calcularea semnalului sinusoidal pentru fiecare punct de pe interval
x = A * sin(2*pi*f*t);
figure
% Reprezentarea grafică a semnalului sinusoidal
plot(t, x);
xlabel('Timp (s)');
ylabel('Amplitudine');
title('Semnal sinusoidal');

%Ex. 2.9
t = -10:0.01:10;
B = 1;
r = 0.8;
A = 2; % amplitudinea
f = 1/12; % frecvența
x7=B * r .^ t;
x8=A * sin(2*pi*f*t);
x= x7.*x8;
figure
plot(t, x);
xlabel('Timp (s)');
ylabel('Amplitudine');
title('Semnal atenuat');

%Ex. 2.10
% Definirea rezoluției temporale și a intervalului de timp
dt = 0.002; % 2ms
t = -1:dt:1;

% Definirea duratei impulsului dreptunghiular
durata_impuls = 1; % Durata impulsului în secunde
interval = durata_impuls / 2; % Intervalul pentru deplasarea treptelor

% Crearea impulsului dreptunghiular ca diferență dintre două trepte deplasate
impuls_dreptunghiular = (t >= -interval) - (t >= interval);

figure
% Reprezentarea grafică a impulsului dreptunghiular
plot(t, impuls_dreptunghiular);
xlabel('Timp (s)');
ylabel('Amplitudine');
title('Impuls dreptunghiular');

%Ex. 2.11
% Definirea rezoluției temporale și a intervalului de timp
t = -10:0.001:10;

% Definirea parametrilor impulsului dreptunghiular
A = 1; % Amplitudinea impulsului
W = pi/4; % Viteza unghiulară (frecvența angulară)
duty = 30; % 30% duty cycle

% Crearea semnalului dreptunghiular periodic
x = A * square(W * t, duty);

% Reprezentarea grafică a semnalului dreptunghiular periodic
figure
plot(t, x);
xlabel('Timp (s)');
ylabel('Amplitudine');
title('Succesiune de impulsuri dreptunghiulare periodice');
ylim([-1.5 1.5]); % Setarea limitei amplitudinii pentru a include amplitudinea maximă și minimă
grid;

%Ex. 2.12
% Definirea rezoluției temporale și a intervalului de timp
dt = 0.001; % 1ms pentru o rezoluție mai bună
t = -10:dt:10;

% Definirea semnalului exponențial complex
x = exp((-0.1 + 0.3j) * t);

% Crearea figurii și a primului sistem de coordonate
figure;

% Plotarea semnalului exponențial complex
subplot(2,1,1);
plot(t, real(x), 'b');
xlabel('Timp (s)');
ylabel('Amplitudine');
title('Semnal Exponențial Complex');
legend('Partea reală', 'Partea imaginară');
grid;
% Crearea celui de-al doilea sistem de coordonate și plotarea semnalului dreptunghiular
subplot(2,1,2);
plot(t, imag(x), 'r');
xlabel('Timp (s)');
ylabel('Amplitudine');
title('Succesiune de impulsuri dreptunghiulare periodice');
grid;

