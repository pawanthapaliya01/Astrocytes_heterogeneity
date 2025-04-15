clc
close all
%load r.dat
load Data.csv
x=Data(:,1); %glutamte concentratin in log scale
y= Data(:,2);



f= @(b,x) 1.0./(1.0+(b(1)./x).^(b(2)));%+b(3); % r=I/Imax= 1/(1+(EC50/[A])^n)
b0=[1.9 1.5];%y 0.18]; % initial guess



b=lsqcurvefit(f,b0,x,y);


xa = [0.01:0.01:100];
semilogx(x,y,'o')
hold on
semilogx(xa,f(b,xa))

hold off

b

