%Ex1.1
fs = 8000;
t = 0 : 1/fs : 1024/fs;
x = 0.5*sin (2*pi*50*t) + 0.2*sin (2*pi*230*t+ pi/3);
stem(t,x);

%Ex1.2
fs = 30;
T= 1/3;
t = 0 : T/fs : 2;
f = 1/T;
x = 3 * sin(2*pi*f*t+pi/2);
stem(t, x);

%Ex1.3
fs = 6000;
t = 0 : 1/fs : 0.05;
x = 10*sin (2*pi*100*t+ pi/2) + 20*sin (2*pi*50*t)- 40*sin(2*pi*150*t - pi/4);
stem(t,x);

%Ex1.4
fs1 = 4;
fs2 = 50;
t1 = 0 : 1/fs1 : 1;
t2 = 0 : 1/fs2 : 1;
x1 = 3 *sin (2*pi*5*t1);
x2 = 3 *sin (2*pi*5*t2);
subplot(2,1,1);
stem(t1,x1);
subplot(2,1,2);
stem(t2, x2);

%Ex1.5
t=0:0.01:2;
x=1*sawtooth(2*pi*2*t,1/2);
subplot(2,1,1)
plot(t,x);
grid;
xlabel('timpul');
ylabel('amplitudinea');
fs=4*15;
t=0:1/fs:2;
x=1*sawtooth(2*pi*2*t,1/2);
subplot(2,1,2)
stem(t,x);
grid;
xlabel('timpul');
ylabel('amplitudinea');



