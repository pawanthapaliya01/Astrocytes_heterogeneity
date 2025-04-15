clc
close all

load Data001.mat
x=Data001(:,1); %glutamte concentratin in log scale
x=10.^x;      % linear x
y= Data001(:,2);



f= @(b,x) 1.0./(1.0+(b(1)./x).^(b(2)))+b(3); % r=I/Imax= 1/(1+(EC50/[A])^n)
b0=[1.9 1.5 0.18]; % initial guess


b=lsqcurvefit(f,b0,x,y);

%b=nlinfit(log(x),y,f,b0);


semilogx(x,y,'ro')
hold on
semilogx(x,f(b,x))
hold off







