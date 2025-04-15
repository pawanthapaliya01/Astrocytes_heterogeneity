clc
close all
%load r.dat
load peak.csv
x=peak(:,1); %glutamte concentratin in log scale
y= peak(:,2);



f= @(b,x) 1.0./(1.0+(b(1)./x).^(b(2)));%+b(3); % r=I/Imax= 1/(1+(EC50/[A])^n)
b0=[39.8 6];%y 0.18]; % initial guess
%f=@(b,x) 1.0./(1.0+(b(1)./(x.*b(2))).^b(3))+b(4);
%b0=[.1368 0.072 1.5 0.15];

b=lsqcurvefit(f,b0,x,y);

%b=nlinfit(log(x),y,f,b0)

xa = [0.01:0.01:1000];
semilogx(x,y,'o')
hold on
semilogx(xa,f(b,xa))

hold off