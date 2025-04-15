clc
close all
load INMDA.dat
load DAP5sensitive.csv
DAP5=csvread('DAP5sensitive.csv');
plot(INMDA(:,1),INMDA(:,2))
hold on
plot(DAP5(:,1),DAP5(:,2))
hold off


