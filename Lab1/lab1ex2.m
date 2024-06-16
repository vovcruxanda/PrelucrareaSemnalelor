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
