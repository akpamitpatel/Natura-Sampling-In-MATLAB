clc;
clear all;
t = 0:0.001:1;
fc =20;
fm =2;
a = 5;
vc = square(2*pi*fc*t);
vm = a.*sin(2*pi*fm*t);
n = length(vc);
for i = 1:n
    if (vc(i)<=0)          %For Values Below 0  equate to zero.
        vc(i) = 0;
    else
        vc(i) = 1;
    end
end
y = vc.*vm;
subplot(3,1,1);
plot(t,vm);
xlabel('Time ----->');
ylabel('Amplitude ----->');
title('Message Signal');
axis([0 1 -a-2 a+2]);
grid on;
subplot(3,1,2);
plot(t,vc);
xlabel('Time ----->');
ylabel('Amplitude ----->');
title('Carrier Signal');
axis([0 1 0 2]);
grid on;
subplot(3,1,3);
plot(t,y);
xlabel('Time ----->');
ylabel('Amplitude ----->');
title('Natural Sampled Signal');
axis([0 1 -a-2 a+2]);
grid on;