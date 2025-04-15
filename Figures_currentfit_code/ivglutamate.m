clc
close all
clear all
load gluvolt.csv
load ivglutamate1.csv;
load errorbargluvolt.csv
%f=csvread('ivglutamate1.csv');
f=csvread('gluvolt.csv');
x=round(f(:,1));
y=f(:,2);
diff=errorbargluvolt(:,2)-gluvolt(:,2);
%diff(end+1,:)=0;

fu= @ (b,x) b(1).* x./(1+exp(b(2).*x));%+ b(3);
b0= [0.82 0.06];% -0.2];

[b,resnorm,residual,exitflag,output]=lsqcurvefit(fu,b0,x,y);


xa=[-80:0.01:100];
figure
h(1)=plot(x,y,'ro','MarkerSize',5,'MarkerEdgecolor','r','MarkerFaceColor','w',...
    'LineWidth',2,...
    'DisplayName','EXP');
hold on
h(2)=plot(xa,fu(b,xa),'-k','MarkerSize',5,...
    'LineWidth',2,...
    'DisplayName','SIM');
%plot(x,residual)
errorbar(gluvolt(:,1),gluvolt(:,2),diff,'ks','MarkerSize',1.5,'MarkerEdgecolor','k',...
    'MarkerFaceColor',[0 0 0]','LineWidth',1)
hold off
ax=gca;
xlabel('Voltage (mV)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
ylabel('I/Imax','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
ytickformat('%.0f')
xtickformat('%.0f')
legend(h([1,2]),'FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',2)
legend 'boxoff'
%title('Astrocyte cortex','FontName','Times New Roman','FontSize',14,'FontWeight','bold','Color','black')
% 
%a = get(gca,'XTickLabel');
%set(gca,'XTickLabel',a,'FontName','Times New Roman','fontsize',18','FontWeight','bold','LineWidth',2.5)
ax.XAxis.FontSize = 12;
ax.XAxis.FontWeight = 'bold';
ax.XAxis.Color='black';
ax.XAxis.LineWidth=2;
ax.XAxis.FontName='Times new Roman';
ax.YAxis.LineWidth = 2;
ax.YAxis.FontWeight='bold';
ax.YAxis.FontSize=12;
ax.YAxis.FontName='Times new Roman';
ax.YAxis.Color='black';
ax.XLim=[-100,100];
ax.YLim=[-3,2];
xticks(-100:50:100);
yticks(-3:1:2);
 set(gca, 'box', 'off')
hold off