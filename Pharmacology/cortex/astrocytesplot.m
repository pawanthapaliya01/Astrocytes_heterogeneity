clc
close all
load Cak.dat
load Clk.dat
load eetk.dat
load HCO3k.dat
load HCO3s.dat
load ip3k.dat
load hk.dat
load Kk.dat
load Ks.dat
load mk.dat
load Nak.dat
load naexp1.csv
load Nas.dat
load sk.dat
load vk.dat
load wk.dat
load JNCX.dat
load Odap.dat
load Oamp.dat
load OEAAt.dat
load Jdap.dat
load JNbqx.dat
load Jtbo.dat
load JNAKk.dat
load Jserca.dat
%load Nadap.csv
%load naco.csv

figure(1)
subplot(4,6,1)
plot(Cak(:,1),Cak(:,2))
xlabel('time s')
ylabel('Ca uM')

subplot(4,6,2)
plot(Clk(:,1),Clk(:,2))
xlabel('time s')
ylabel('Clk uM')

subplot(4,6,3)
plot(eetk(:,1),eetk(:,2))
xlabel('time s')
ylabel('eetk uM')

subplot(4,6,4)
plot(HCO3k(:,1),HCO3k(:,2))
xlabel('time s')
ylabel('HCO3k uM')

subplot(4,6,5)
plot(HCO3s(:,1),HCO3s(:,2))
xlabel('time s')
ylabel('HCO3s')

subplot(4,6,6)
plot(ip3k(:,1),ip3k(:,2))
xlabel('time s')
ylabel('ip3 uM')

subplot(4,6,7)
plot(hk(:,1),hk(:,2))
xlabel('time s')
ylabel('hk')

subplot(4,6,8)
plot(Kk(:,1),Kk(:,2))
xlabel('time s')
ylabel('Kk uM')

subplot(4,6,9)
plot(Ks(:,1),Ks(:,2))
xlabel('time s')
ylabel('Ks uM')

subplot(4,6,10)
plot(mk(:,1),mk(:,2))
xlabel('time s')
ylabel('mk')

subplot(4,6,11)
plot(Nak(:,1),Nak(:,2)/1000)
hold on
plot(naexp1(:,1),naexp1(:,2))
xlabel('time s')
ylabel('Nak uM')
hold on
%plot(nahippo(:,1),nahippo(:,2))
%plot(Nadap(:,1),Nadap(:,2))
hold off

subplot(4,6,12)
plot(Nas(:,1),Nas(:,2))
xlabel('time s')
ylabel('Nas uM')

subplot(4,6,13)
plot(sk(:,1),sk(:,2))
xlabel('time s')
ylabel('sk')

subplot(4,6,14)
plot(vk(:,1),vk(:,2))
xlabel('time s')
ylabel('vk mV')

subplot(4,6,15)
plot(wk(:,1),wk(:,2))
xlabel('time s')
ylabel('wk')

subplot(4,6,16)
plot(JNCX(:,1),JNCX(:,2))
xlabel('time s')
ylabel('JNCX pA/um^2')


subplot(4,6,17)
plot(Odap(:,1),Odap(:,2))
xlabel('time s')
ylabel('Odap')

subplot(4,6,18)
plot(Oamp(:,1),Oamp(:,2))
xlabel('time s')
ylabel('Oamp')

subplot(4,6,19)
plot(OEAAt(:,1),OEAAt(:,2))
xlabel('time s')
ylabel('OEAAt')

subplot(4,6,20)
plot(Jdap(:,1),Jdap(:,2))
xlabel('time s')
ylabel('Jdap pA/um^2')

subplot(4,6,21)
plot(JNbqx(:,1),JNbqx(:,2))
xlabel('time s')
ylabel('JNbqx pA/um^2')

subplot(4,6,22)
plot(Jtbo(:,1),Jtbo(:,2))
xlabel('time s')
ylabel('Jtbo pA/um^2')

subplot(4,6,23)
plot(JNAKk(:,1),JNAKk(:,2))
xlabel('time s')
ylabel('JNak pA/um^2')

subplot(4,6,24)
plot(Jserca(:,1),Jserca(:,2))
xlabel('time s')
ylabel('Jserca pA/um^2')





