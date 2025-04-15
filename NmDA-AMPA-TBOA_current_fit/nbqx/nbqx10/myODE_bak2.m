function F=myODE_bak(b)

format long
%close all

%load trace3.csv
load ampa10.csv
%data1=trace3(10:end,:);
data1=ampa10(2:end,:);
time1 = data1(:,1);
data = abs(data1(:,2));%/max(abs(data1(:,2)));


t0=[0:0.01:3];
y0=[0; 0; 0; 0;0];
[t,y] = ode15s(@(t,y)dydt(t,y,b),t0,y0);

y1 = y(:,3);
%y1=y1/max(y1)*0.3;
s=length(data);
d=zeros(1,s);
ix=zeros(1,s);
for i=1:s
    [ d(i), ix(i) ] = min( abs( t-time1(i) ) );
end
%simtime = t(ix);
sim=y1(ix);
F=sum((data-sim).^2)/s;     

figure()
plot(time1,data,'o','MarkerSize',5','MarkerEdgeColor','r','LineWidth', 2)
hold on
plot(t,y1,'-b','LineWidth', 2)
legend('EXP','SIM','Location','northeast','FontName','Times New Roman','FontSize',12,'FontWeight','bold')
legend 'boxoff'
xlabel('Time(s)')
ylabel('Open Probability')
ytickformat('%.1f')
xtickformat('%.0f')
ax=gca;
ax.XAxis.FontSize = 12;
ax.XAxis.FontWeight = 'bold';
ax.XAxis.Color='black';
ax.XAxis.LineWidth=2;
ax.XAxis.FontName='Times New Roman';
ax.YAxis.FontSize = 12;
ax.YAxis.FontWeight = 'bold';
ax.YAxis.Color='black';
ax.YAxis.LineWidth=2;
ax.YAxis.FontName='Times New Roman';
ax.XLim=[-0.5,3];
ax.YLim=[0,1];
xticks(0:1:3);
yticks(0:.2:1);
set(gca, 'box', 'off')

 
function dy = dydt(t,y,b)
format long

C1 = y(1);

C2 = y(2);
O = y(3);
D1 = y(4);
D2=y(5);

C0 = 1-C1-C2-O-D1-D2;



Rb= b(1);   %uM^-1s^-1
Rmu1 = b(2);  %s^-1  
Rmu2 = b(3);  %s^-1 
Rd = b(4);  %s^-1
Rr = b(5);  %s^-1   
Ro = b(6);   %s^-1  
Rc=b(7);  %s^-1


if t >= 0.0 && t < 2.0
    %glu = 100.0; %b(2); for Cai_trace3
    glu=10.0;
else
    glu = 0.0;
end 


kc0c1=Rb*glu;
kc1c0=Rmu1;
kc1c2=kc0c1;
kc2c1=Rmu2;
kc2o=Ro;
koc2=Rc;
kc1d1=Rd;
kd1c1=Rr;
kc2d2=kc1d1;
kd2c2=kd1c1;


dydt1=kc0c1*C0-(kc1c0+kc0c1+kc1d1)*C1+kc2c1*C2+kd1c1*D1; %C1
dydt2=kc1c2*C1+koc2*O+kd2c2*D2-(kc2c1+kc2o+kc2d2)*C2; %C2
dydt3=kc2o*C2-koc2*O; % O
dydt4=kc1d1*C1-kd1c1*D1; %D1
dydt5=kc2d2*C2-kd2c2*D2; %D2

dy=[dydt1;dydt2;dydt3;dydt4;dydt5];

