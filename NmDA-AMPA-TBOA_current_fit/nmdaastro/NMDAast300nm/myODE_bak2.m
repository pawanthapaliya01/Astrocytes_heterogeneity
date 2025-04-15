function F=myODE_bak(b)

format long
%close all

%load trace3.csv
load NMDAast300nm.csv

%data2=nmdac(1:22,:);

data1=NMDAast300nm(3:end,:);
%size(data1)
time1 = data1(:,1);
data = abs(data1(:,2));%/max(abs(data1(:,2)));

t0=[0:0.01:3];
y0=[0; 0; 0; 0];
[t,y] = ode15s(@(t,y)dydt(t,y,b),t0,y0);
% simulated open probability
y1 = y(:,3);



% Nmda mediated experimental nmda current
%b01=[324;0.0356;0.00011];
v=-80;

%dataInmda=b01(1)*data*b01(2)*v/(1+exp(b01(3)*v));
% nmda mediated NMDA current obtained from simulation
%Inmda= b(7)*y1*b(8)*v/(1+exp(b(9)*v));

s=length(data);
d=zeros(1,s);
ix=zeros(1,s);
for i=1:s
    [ d(i), ix(i) ] = min( abs( t-time1(i) ) );
end
%simtime = t(ix);
sim=y1(ix);
%sim=Inmda(ix);
%data=-data*320;
%data=dataInmda;
F=sum((data-sim).^2)/s;

figure()
%plot(time1,dataInmda,'o','MarkerSize',5','MarkerEdgeColor','r','LineWidth', 2)
plot(time1,data,'o','MarkerSize',5','MarkerEdgeColor','r','LineWidth', 2)
hold on
plot(t,y1,'-b','LineWidth', 2)
%plot(t,Inmda,'-b','LineWidth',2)


%plot(nmdac(:,1),nmdac(:,2),'s','MarkerSize',5','MarkerEdgeColor','r','LineWidth', 2)
legend('EXP','SIM','Location','northeast','FontName','Times New Roman','FontSize',12,'FontWeight','bold')
legend boxoff
xlabel('Time(s)')
ylabel('Open Probability')
%title('Nmda mediated Nmda current fit at 0.3 uM nmda concentration',...
 %   'FontName','Times','FontSize',18,'FontWeight','bold','Color','black')
 ytickformat('%.2f')
 xtickformat('%.2f')
 ax=gca;
 ax.XAxis.FontSize = 12;
 ax.XAxis.FontWeight = 'bold';
 ax.XAxis.Color='black';
 ax.XAxis.FontName='Times New Roman';
 ax.YAxis.FontSize = 12;
 ax.YAxis.FontWeight = 'bold';
 ax.YAxis.Color='black';
 ax.YAxis.FontName='Times New Roman';
 ax.YAxis.LineWidth=2;
 ax.XAxis.LineWidth=2;
 ax.XLim=[-0.5,3];
 ax.YLim=[0,1];
 xticks(-1:1:3);
 yticks(0:.2:1);
 set(gca, 'box', 'off')
hold off
 
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
    nmda = 0.3; %b(2); for Cai_trace3

else
    nmda = 0.0;
end 

kc1c2 = 2*nmda*kon;
kc2c1 = koff;
kc2c3 = nmda*kon;
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

