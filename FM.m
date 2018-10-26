clc;
clear;
close all;
[y, fs] = audioread('testtest.wav');
time = 0:1:length(y)-1;
m = y(:,1)';
plot(time/fs, m);
axis([10.75,10.8,-1,1])
%plot(time/fs, 10*(1+5*y()).*cos(2*pi*fs*time))
a = 10;
f = 1000;
k = 5;
s = a*cos(2*pi*f*time + 2*pi*time.*m);
figure;
plot(time/fs, s);
axis([10.75,10.8,-12,12])
audiowrite('test_FM.wav', s, fs);
sound(s, fs);



%{
clc;
clear all;
close all;
[y, fs] = audioread('wavesurfer.wav');

fc = 400;
B = 10
t = 0 : 0.0001 :0.5;
m = cos(2*pi*fm*t);
subplot(3, 1, 1);
plot(t, m);
xlabel('Time');
ylabel('Amplitude');
title('Message signal');
grid on;

c = cos(2*pi*fc*t);
subplot(3, 1, 2);
plot(t, c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
grid on;

y = cos(2*pi*fc*t + (B.*sin(2*pi*fm*t)));
subplot(3, 1, 3);
plot(t, y);
xlabel('Time');
ylabel('Amplitude');
title('FM Signal');
grid on;
%}