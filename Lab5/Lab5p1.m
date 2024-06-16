%Ex5_1
% Simularea filtrului FIR de o lungime arbitrara
20
% generarea semnalului de intrare. scopul programului, care este de a simula un filtru FIR cu o lungime arbitrara.
clf; n=0:100; %generam semnalul de intrare si setam variabila n.
s1=cos(2*pi*0.05*n); % semnal de o frecventa joasa 0.05Hz
s2=cos(2*pi*0.47*n); % semnal de o frecventa inalta 0.47Hz
x=s1+s2; % obtinem semnalul de intrare x

% Realizarea filtrului FIR
M = input('Introduceți lungimea dorită a filtrului: '); % introducem lungimea dorita a filtrului
num = ones(1,M, 'single');
y=filter(num,1,x)/M; %aplică filtrul FIR la semnalul de intrare "x" utilizând coeficienții stocați în vectorul "num" și stochează semnalul de ieșire în variabila "y". Rezultatul este împărțit la valoarea "M" pentru a normaliza semnalul.

% Afisarea semnalelor de intare si de iesire  ale filtrului pe patru subgrafice separate într-o fereastră de afișare a figurii.
subplot(2,2,1);
plot(n,s1); % n reprezinta vectorul timpului, iar s1 represents semnalul
axis([0, 100, -2, 2]); %stabilește limitele axelor pentru primul subgrafic pentru a se asigura că graficul este afișat corect.
xlabel('Timpul n'); ylabel('Amplituda');
title('Semnal 1');

subplot(2,2,2);
plot(n,s2); % n reprezinta vectorul timpului, iar s2 reprezinta semnalul
axis([0, 100, -2, 2]);
xlabel('Timpul n'); ylabel('Amplituda');
title('Semnal 2');

subplot(2,2,3);
plot(n,x); % n reprezinta vectorul timpului, iar x reprezinta semnalul
axis([0, 100, -2, 2]);
xlabel('Timpul n'); ylabel('Amplituda');
title('Semnalul de intrare');

subplot(2,2,4);
plot(n,y); % n reprezinta vectorul timpului, iar y reprezinta semnalul
axis([0, 100, -2, 2]);
xlabel('Timpul n'); ylabel('Amplituda');
title('Semnalul de iesire');
axis;

