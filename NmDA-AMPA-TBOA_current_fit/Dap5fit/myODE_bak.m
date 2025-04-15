
function F=myODE_bak(b)

format long
%close all

%load trace3.csv
load dap501.csv
%data1=trace3(10:end,:);
data1=dap501(7:end,:);
time1 = data1(:,1);
data = abs(data1(:,2));%/max(abs(data1(:,2)));


t0=[0:0.01:3];
y0=[0; 0; 0; 0;0];
[t,y] = ode15s(@(t,y)dydt(t,y,b),t0,y0);

y1 = y(:,3);

s=length(data);
d=zeros(1,s);
ix=zeros(1,s);
for i=1:s
    [ d(i), ix(i) ] = min( abs( t-time1(i) ) );
end
%simtime = t(ix);
sim=y1(ix);
F=sum((data-sim).^2)/s;

 
function dy = dydt(t,y,b)
format long

C2 = y(1);

C3 = y(2);
O = y(3);
D = y(4);
I=y(5);
C1 = 1-C2-C3-O-D-I; %R

kon = b(1);    %49.98 uM/sec
koff = b(2);   %161.73 1/sec 
beta = b(3);   %800 1/sec
alpha = b(4);  %31.95  1/sec 
kd = b(5);     %85 1/sec
kr = b(6);     %3.53 1/sec
kdc=b(7);
krc=b(8);


if t >= 0.0 && t < 2.0
    %glu = 100.0; % for trace3
    glu=0.1;
else
    glu = 0.0;
end 

kc1c2 = 2*glu*kon;
kc2c1 = koff;
kc2c3 = glu*kon;
kc3c2 = 2*koff;
kc3o  = beta;
koc3  = alpha;
kc3d  = kd;
kdc3  = kr;
kc3dc=kdc;
kdc3c=krc;
dydt1 =kc1c2*C1+kc3c2*C3-(kc2c1+kc2c3)*C2;    %C2 AR
dydt2 = kc2c3*C2+koc3*O-(kc3c2+kc3o)*C3;       %C3 A2R
dydt3 = kc3o*C3-koc3*O;                        %O
dydt4 = kc3d*C3-kdc3*D; %D
dydt5 =kc3dc*C3-kdc3c*I;% I

dy=[dydt1;dydt2;dydt3;dydt4;dydt5];

