clc;
clear all;
close all;
[y, fs] = audioread('testtest.wav');
m = y(:,1);
time = 0:1:length(m)-1;
plot(time/fs, m);
clear
[y, fs] = audioread('wavesurfer.wav');
time = 0:1:length(y)-1;
plot (time/fs,y);
y1 = mean(y);
average = mean(y1(1)+y1(2))
y2 = max(y);
maximum = max(y2(1)+y2(2))
y3 = min(y);
minimum = min(y3(1)+y3(2))
plot (time/fs, y)
audiowrite(y1,fs,'wavesurfer.wav');
sound(y1,fs) 

audiowrite(y2,fs,'wavesurfer.wav');
audiowrite(y3,fs,'wavesurfer.wav');
