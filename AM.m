clc;
clear all;
close all;
[y, fs] = audioread('testtest.wav');
m = y(:,1);
time = 0:1:length(m)-1;
plot(time/fs, m);
%axis([0,40,-0.8,0.8])
%sound (y, fs)
%plot(time/fs, 10*(1+5*y()).*cos(2*pi*fs*time))
a = 10;
f = 1000;
k = 50;
s = a*(1+k*(m)').*cos(2*pi*f*time);
figure;
plot(time/fs, s);
axis([0,40,-40,40])
audiowrite('test_AM.wav', s, fs);
sound(s, fs);

%{
m = 1;
Am = 5;
fa = 2000;
Ta = 1/fa;
t = 0 : Ta/999 : 6*Ta;
ym = Am*sin( 2*pi*fa*t);
figure (1)
subplot (3, 1, 1);
plot(t, ym)
title ('Modulating signal')

Ac = Am/m;
fc = fa*10;
Tc = 1/fc;
yc = Ac*sin(2*pi*fc*t);
subplot(3, 1, 2)
plot(t, yc)
grid on;
title ('Carrier signal');

%AM Modulation
y = Ac + (1 + m*sin(2*pi*fa*t)).*sin(2*pi*fc*t);
subplot(3, 1, 3)
plot(t, y)
title ('Amplitude Modulated Signal')
grid on;
}%