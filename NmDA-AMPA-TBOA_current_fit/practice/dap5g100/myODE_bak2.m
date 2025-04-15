function F=myODE_bak2(b)

format long
%close all

%load trace3.csv
load dap100.csv
data1=dap100(11:end,:);
time1 = data1(:,1);
%experimental open probability data
data = abs(data1(:,2));%/max(abs(data1(:,2)));


t0=[0:0.01:3];
y0=[0; 0; 0; 0];
[t,y] = ode15s(@(t,y)dydt(t,y,b),t0,y0);
%simulated probability
y1 = y(:,3);

% Glutamate mediated NMDA current calculated using experimental
% openprobability
%b01=[120;0.028;0.0067];
%v=-80;
%dataInmda= b01(1)*data*b01(2)*v/(1+exp(b01(3)*v));
% Glutamted mediated NMDA current calculated using simulated open
% probability
%Inmda= b(7)*y1*b(8)*v/(1+exp(b(9)*v));
s=length(data);
d=zeros(1,s);
ix=zeros(1,s);
for i=1:s
    [ d(i), ix(i) ] = min( abs( t-time1(i) ) );
end
%simtime = t(ix);
%sim=Inmda(ix);
sim=y1(ix);
%data=dataInmda;
%size(data)
F=sum((data-sim).^2)/s;

hold on
plot(time1,data,'s','MarkerSize',5','MarkerEdgeColor','r','LineWidth', 2)
%plot(time1,dataInmda,'s','MarkerSize',5','MarkerEdgeColor','r','LineWidth', 2)
xlabel('time s')
ylabel('INMDA pa')

plot(t,y1,'-b','LineWidth', 2)
%plot(t,Inmda,'-b','Linewidth',2)
xlabel('time s')
ylabel('INMDA pa')
legend('exp','sim')


 
function dy = dydt(t,y,b)
format long

C2 = y(1);

C3 = y(2);
O = y(3);
D = y(4);

C1 = 1-C2-C3-O-D;

kon = b(1);    %49.98 uM/sec
koff = b(2);   %161.73 1/sec 
beta = b(3);   %800 1/sec
alpha = b(4);  %31.95  1/sec 
kd = b(5);     %85 1/sec
kr = b(6);     %3.53 1/sec

if t >= 0.0 && t < 2.0
    glu = 100.0; %b(2); for Cai_trace3

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

dydt1 = kc1c2*C1+kc3c2*C3-(kc2c1+kc2c3)*C2;    %C2
dydt2 = kc2c3*C2+koc3*O-(kc3c2+kc3o)*C3;       %C3
dydt3 = kc3o*C3-koc3*O;                        %O
dydt4 = kc3d*C3-kdc3*D;                        %D

dy=[dydt1;dydt2;dydt3;dydt4];

