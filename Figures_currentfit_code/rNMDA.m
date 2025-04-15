clc
close all
load NMDAdata.csv
f=csvread('NMDAdata.csv');
x=f(:,1); %data in log scale
y=f(:,2);
fun = @ (b,x) 1./(1+(b(1)./x).^b(2));%+ b(3);
b0=[0.34 1.5];% 0.15]; % 0.34
%fun=@(b,x) 1./(1+(b(1)./(x.*b(2))).^b(3))+b(4);
%b0=[0.072 6.6 1.5 0.1];
b=lsqcurvefit(fun,b0,x,y);
xa=(0.01:0.01:100);
semilogx(x,y,'ro')
hold on
semilogx(xa,fun(b,xa))
hold off
b
