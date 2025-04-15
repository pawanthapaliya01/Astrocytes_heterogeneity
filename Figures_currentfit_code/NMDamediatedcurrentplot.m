clc
close all
load INMDA.dat
load NMDAastrocytes.csv
NMDAst=csvread('NMDAastrocytes.csv');
plot(INMDA(:,1),INMDA(:,2))
xlabel('time ms')
ylabel('NMDAastrocytes current pA')

hold on
plot(NMDAst(:,1),NMDAst(:,2))
xlabel('time ms')
ylabel('INMDAastrocytes pA')

hold off
legend('Simulated','experimental')
title(' NMDA mediated current in astrocytes')