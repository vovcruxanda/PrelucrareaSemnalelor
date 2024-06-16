%Ex2.1
% 4kHz = 4000 Hz
% 2 min = 120 sec
% 120 sec * 4000 = 480 000 eșantioane
% 480 000 eșantioane * 2 octeți = 960 000  bytes = 937.5 kB

%Ex2.2
n=1:0.01:40;
x=17./n;
y=-17./n;
x1 = round(x);
y1 = round(y);
x2 = floor(x);
y2 = floor(y);

figure
subplot(231);
plot(n,x);
title('semnal original 17/n');
grid

subplot(232);
plot(n,x1);
title('round');
grid

subplot(233);
plot(n,x2);
title('floor');
grid

subplot(234);
plot(n,y);
title('semnal original -17/n');
grid

subplot(235);
plot(n,y1);
title('round');
grid

subplot(236);
plot(n,y2);
title('floor');
grid

x1eror=x1-x;
x2eror=x2-x;
y1eror=y1-y;
y2eror=y2-y;

figure
subplot(221);
plot(n,x1eror);
title('round');
grid

subplot(222);
plot(n,x2eror);
title('floor');
grid

subplot(223);
plot(n,y1eror);
title('round');
grid

subplot(224);
plot(n,y2eror);
title('floor');
grid


%Ex2.3
nr=15;
z = 0.2*randn(1,nr);
nivele=-1:0.25:1;
    for j = 1 : nr
     for i = 1 : (length(nivele)-1)
        if z(j) >= nivele(i) && z(j) <= nivele(i+1)
            if z(j)<= (nivele(i) + nivele(i+1))/2
                eta(j) = nivele(i);
            else
                eta(j) = nivele(i+1);
            end
            end
        end
     end
%Fiecare valoare a semnalului este comparata cu intervalele dintre
%nivele pentru a sti in care nivel de cuantizare sa fie atribuita

figure
subplot(211);
plot(1:nr, z);
title('semnal original');
subplot(212);
plot(1:nr, eta);
title('semnal cuantizat');

%Ex2.4
fs = 8000;
t = 0:1/fs:1;
x = 0.5*sin(2*pi*50*t-0)+0.2*sin(2*pi*230*t-pi/3);
b = 8;
L = b^2;
Delta=(max(x)-min(x))/L;
nivele(1) = min(x);
nivele(L) = max(x);
    for i=2:L
     nivele(i)=min(x)+(i-1)*Delta;
    end
        for j = 1 : length(x)
            for i = 1 : (length(nivele)-1)
                if x(j) >= nivele(i) && x(j) <= nivele(i+1)
                if x(j)<= (nivele(i) + nivele(i+1))/2
                    eta(j) = nivele(i);
                else
                    eta(j) = nivele(i+1);
                end
                end
            end
        end
figure
subplot(311);
plot(t(1:256), x(1:256));
title('semnal original');
subplot(312);
plot(t(1:256), eta(1:256));
title('semnal cuantizat');
subplot(313);
plot(t(1:256), eta(1:256)-x(1:256));
title('zgomotul semnalului cuantizat');
%Diferenta dintre semnalul cuantizat si cel original


