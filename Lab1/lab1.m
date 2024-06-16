% E 1.1
fprintf('Ex 1\n');
% a. Pentru a avea sens înmulțirea matriceală a×b, numărul de coloane al matricei
% a trebuie să fie egal cu numărul de rânduri al matricei b.

% b. Efectuarea inmultirii b*a
a = [0:0.1:2];
b = ones(length(a), 1);
result = a * b;
result1 = b * a;
disp(result);
disp(result1);


% E 1.2
fprintf('\n\nEx 2\n');
% Setare director de lucru
dir_path = 'd:/student/pns/nrgrupa';
cd(dir_path);

% Generare vector cu elemente aleatoare distribuite normal
random_matrix = randn(4);
random_vector = random_matrix(:);

%M2: random_vector = randn(1, 15); dar oricum mă derajeanză prezența numelui coloanelor, deci totuși e matrice

% Afișare vector și elemente negative
disp('Vector generat:');
disp(random_vector);

disp('Elemente negative:');
negative_elements = random_vector(random_vector < 0);
disp(negative_elements);

%E 1.3
fprintf('\n\nEx 3\n');
% Generare vector cu elemente complexe
complex_vector = complex(randn(1, 5), randn(1, 5));

% Afișare vector generat
disp('Vectorul cu elemente complexe:');
disp(complex_vector);

% Apelarea funcției și afișarea rezultatelor
[media_partilor_reale, vector_la_patrat, matrice_inmultita] = calculeazaRezultate(complex_vector);

% Afișare rezultate
disp('Media partilor reale:');
disp(media_partilor_reale);

disp('Vectorul la patrat:');
disp(vector_la_patrat);

disp('Matricea inmultita cu transpusa sa:');
disp(matrice_inmultita);


% E 1.4
fprintf('\n\nEx 4\n');

fprintf('Generare și reprezentare grafică a vectorului z ');
z = zeros(1, 21);
z(6) = 1;

figure;
subplot(2,1,1);
stem(0:20, z, 'b');
title('Reprezentare grafică a vectorului z în funcție de n=0:20');
xlabel('n');
ylabel('z(n)');

subplot(2,1,2);
stem(-5:15, z, 'r');
title('Reprezentare grafică a vectorului z în funcție de m=-5:15');
xlabel('m');
ylabel('z(m)');

fprintf('executat\n');


fprintf('Generare și reprezentare grafică a vectorului t ');
n = 0:20;
t = abs(10 - n);

figure;
stem(n, t, 'g');
title('Reprezentare grafică a vectorului t în funcție de n=0:20');
xlabel('n');
ylabel('|10 - n|');

fprintf('executat\n');


fprintf('Generare și reprezentare grafică a celor două secvențe x1 și x2 ');
n1 = -15:25;
x1 = sin(pi/17 * n1);

n2 = 0:50;
x2 = cos(pi/sqrt(23) * n2);

% Reprezentare în aceeași figură
figure;
plot(n1, x1, 'm');
hold on;
plot(n2, x2, 'c');
hold off;
title('Reprezentare grafică a secvențelor x1 și x2 în același sistem de coordonate');
xlabel('n');
legend('x1', 'x2');

fprintf('executat 1 si ');

% Reprezentare în două "miniferestre" grafice
figure;
subplot(2,1,1);
plot(n1, x1, 'm');
title('Reprezentare grafică a secvenței x1');

subplot(2,1,2);
plot(n2, x2, 'c');
title('Reprezentare grafică a secvenței x2');
fprintf('executat 2\n');

figure;
subplot(2,1,1);
stem(n1, x1, 'm');
title('Reprezentare grafică a secvenței x1');

subplot(2,1,2);
stem(n2, x2, 'c');
title('Reprezentare grafică a secvenței x2');
fprintf('executat 2\n');


%E 1.5
fprintf('\n\nEx 5\n');
%Modificarea pasului de variație a variabilei t
F = 50;

t1 = 0:0.001:1;
t2 = 0:0.01:1;
t3 = 0:0.0002:1;

s1 = sin(2 * pi * F * t1);
s2 = sin(2 * pi * F * t2);
s3 = sin(2 * pi * F * t3);

figure;
% Subplot 1
subplot(3, 1, 1);
plot(t1, s1);
xlabel('Timp [s]');
ylabel('Amplitudine');
title('t1: Pas de variație 0.001');
grid on;

% Subplot 2
subplot(3, 1, 2);
plot(t2, s2);
xlabel('Timp [s]');
ylabel('Amplitudine');
title('t2: Pas de variație 0.01');
grid on;

% Subplot 3
subplot(3, 1, 3);
plot(t3, s3);
xlabel('Timp [s]');
ylabel('Amplitudine');
title('t3: Pas de variație 0.0002');
grid on;

fprintf('\nMăsurarea perioadei semnalului sinusoidal:\n');
p1 = t1(find(s1 > 0, 1, 'last')) - t1(find(s1 > 0, 1, 'first'));  % Perioada teoretică
p2 = t2(find(s2 > 0, 1, 'last')) - t2(find(s2 > 0, 1, 'first'));
p3 = t3(find(s3 > 0, 1, 'last')) - t3(find(s3 > 0, 1, 'first'));

disp(['Perioada semnalului pentru pasul initial: ', num2str(p1), ' secunde']);
disp(['Perioada semnalului pentru pasul 0.01: ', num2str(p2), ' secunde']);
disp(['Perioada semnalului pentru pasul 0.0002: ', num2str(p3), ' secunde']);

fprintf('Generarea și reprezentarea unui semnal cosinusoidal de frecvență 20 Hz ');
F_c = 20;  % Hz
s_c1 = cos(2 * pi * F_c * t1);
s_c2 = cos(2 * pi * F_c * t2);
s_c3 = cos(2 * pi * F_c * t3);

figure;
% Subplot 1
subplot(3, 1, 1);
hold on;
plot(t1, s1);
plot(t1, s_c1, 'r-');
hold off;
xlabel('Timp [s]');
ylabel('Amplitudine');
title('t1: Pas de variație 0.001');
grid on;

% Subplot 2
subplot(3, 1, 2);
plot(t2, s2);
hold on;
plot(t2, s_c2, 'r-');
hold off;
xlabel('Timp [s]');
ylabel('Amplitudine');
title('t2: Pas de variație 0.01');
grid on;

% Subplot 3
subplot(3, 1, 3);
plot(t3, s3);
hold on;
plot(t3, s_c3, 'r-');
hold off;
xlabel('Timp [s]');
ylabel('Amplitudine');
title('t3: Pas de variație 0.0002');
grid on;

fprintf('executat 2\n');


%E 1.6
fprintf('\n\nEx 6\n');
% Generare vectori x și y
x = 1:100;
y = 2:2:200;

% a) Reprezentare grafică folosind funcția stem
figure;
stem(x, y, 'filled', 'MarkerSize', 5);
title('Reprezentare grafică folosind stem');
xlabel('x');
ylabel('y');
grid on;

% b) Reprezentare grafică folosind funcția plot
figure;
plot(x, y);
title('Reprezentare grafică folosind plot');
xlabel('x');
ylabel('y');
grid on;

% c) Reprezentare grafică folosind funcțiile plot și stem în aceeași figură
figure;
plot(x, y, 'b'); % Linie albastră
hold on; % Menținem axele active pentru a adăuga și graficul cu stem

% Reprezentarea graficului folosind stem
stem(x, y, 'r'); % Marker roșu

% Adăugarea titlului și a etichetelor pentru axe
title('Reprezentarea grafică folosind plot și stem');
xlabel('x');
ylabel('y');


% d) Reprezentare grafică folosind funcția plot într-un sistem de coordonate și funcția stem în alt sistem de coordonate
figure;
subplot(1,2,1);
plot(x, y, 'm-');
title('Grafic folosind plot');
xlabel('x');
ylabel('y');

subplot(1,2,2);
stem(x, y, 'c');
title('Grafic folosind stem');
xlabel('x');
ylabel('y');

fprintf('done\n');


%E 1.7
fprintf('\n\nEx 7\n');
% Aproximarea derivatelor de ordinul I folosind diferite tipuri de diferențe finite
% Datele de intrare
x = [-2 -1.5 0 0.5 2.5 3];
y = [6 9 11 10 7 5];
dx=diff(x);
dy=diff(y);

fprintf('Diferențe progresive\n');
df=diff(y)./diff(x);
vx=[-2 0 2.5];
for i=1:length(vx)
% determinarea pozitiei pe care se afla vx(i) in x
k=find(x==vx(i));
% afisarea derivatei cu diferente progresive
disp(['f''(' num2str(vx(i)) ') = ' num2str(df(k))])
end

fprintf('Diferențe regresive\n');
% afisarea derivatei in punctele dorite
vx1=[-1.5 0 3];
for i=1:length(vx1)
% determinarea pozitiei pe care se afla vx(i) in x
k=find(x==vx1(i));
% afisarea derivatei cu diferente regresive
disp(['f''(' num2str(vx1(i)) ') = ' num2str(df(k-1))])
end

fprintf('Diferențe centrate\n');
vx2=[-0.75 0.25 0.5 1];
k=length(dx);
df_c=(dy(1:k-1)+dy(2:k))./(dx(1:k-1)+dx(2:k));
n=length(x);
disp(df_c);

% Grafic
figure;
plot(x(1:end-1), df, 'r-', 'DisplayName', 'Diferențe Progresive');
hold on;
plot(x(2:end), df, 'b-', 'DisplayName', 'Diferențe Regresive');
plot(x(2:n-1), df_c, 'g-', 'DisplayName', 'Diferențe Centrate')
hold off;
title('Aproximarea derivatei folosind diferite tipuri de diferențe finite');
xlabel('x');
ylabel('f''(x)');
legend;
grid on;

% 2. Pentru funcția polinomială
% a) Calcularea derivatelor pentru valorile date
disp('Calcularea derivatelor')
c = [1, 13, -7, 1, -1];
dc=polyder(c);
vx=[-2, -1.3, 0.1, 2.45];
format short g
der=polyval(dc,vx)

% b) Reprezentarea grafica a derivatei functiei f pe intervalul [-2, 3]
x=-2:0.1:3;
df=polyval(dc,x);

figure;
plot(x,df);
title('Graficul derivatei functiei f');
xlabel('x');
ylabel('f''(x)');
grid on;

%3. Calcularea integralei
% Generarea vectorilor x și y
x1 = zeros(1, 11);
y = zeros(1, 11);

for j = 1:11
    x1(j) = -1.1 + 0.1 * j;
    y(j) = (j * x1.^2) / (x1 - 1) - 2 / (j + 1);
end

% Calculul integralei folosind funcția trapz
I = trapz(x1, y);

% Afișarea rezultatului
fprintf('\nValoarea integralei Ex3 este: %.6f\n', I);


%4. Calcularea integralei
I=quad('f',pi/3,pi/2)
fprintf('\nValoarea integralei Ex4 este: %.6f\n', I);

