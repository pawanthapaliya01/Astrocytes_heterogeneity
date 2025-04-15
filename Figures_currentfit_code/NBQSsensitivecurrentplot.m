clc
close all
load INMDA.dat
load ampacurrent.csv
NBQX=csvread('ampacurrent.csv');
plot(INMDA(:,1),INMDA(:,2))
hold on
plot(NBQX(:,1),NBQX(:,2))
hold off