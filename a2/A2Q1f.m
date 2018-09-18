clear all;
close all;
t0 = 0;
tfinal = 8;
N = 25;
y0 = 1;
figure;
t = t0:(tfinal-t0)/N:tfinal;
y = sin(3.*t).*exp(t)+3.*t+1;
plot(t,y);
hold on;
y = RK2(t0,tfinal,N,y0);
plot(t,y,'+');
title('Runge Kutta');
xlabel('t axis');
ylabel('y axis');
