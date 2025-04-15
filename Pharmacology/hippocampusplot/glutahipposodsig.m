clc
close all
load NakWT.dat
load Nakdap.dat
load Naknbqx.dat
load Naktbo.dat
load naexpglu.csv
 load naexpdap.csv
load naexpnbqx.csv
load naexptbo.csv
% load d1.csv
% load d2.csv
% load d3.csv
% load d4.csv
X = categorical({'Glu','dap','nbqx+dap','dap+nbqx+tbo'});
X = reordercats(X,{'Glu','dap','nbqx+dap','dap+nbqx+tbo'});

Y = [(max(NakWT(:,2))-13706), 2576;(max(Nakdap(:,2))-13706),2075; (max(Naknbqx(:,2))-13706), 1978; (max(Naktbo(:,2))-13706),5]*1.0d-3;
err=[0,300;0,100;0,100;0,30]*1.0d-3;

% %bar(X,Y)
% %subplot(1,2,1)
 plot(NakWT(:,1)-min(NakWT(:,1)),NakWT(:,2)*1.0d-3,'-r','DisplayName','Wild Type','LineWidth',2)
 hold on
 

plot(Nakdap(:,1)-min(Nakdap(:,1)),Nakdap(:,2)*1.0d-3,'-m','DisplayName','DAP ','LineWidth',2)


 plot(Naknbqx(:,1)-min(Naknbqx(:,1)),Naknbqx(:,2)*1.0d-3','-c','DisplayName','DAP+NBQX ','LineWidth',2)


 plot(Naktbo(:,1)-min(Naktbo(:,1)),Naktbo(:,2)*1.0d-3,'-k','DisplayName','DAP+NBQX+TBOA ','LineWidth',2)
 plot(naexpglu(:,1)-min(naexpglu(:,1))+4.9,naexpglu(:,2),'o','MarkerSize',.1,...
    'MarkerEdgeColor','r',...
    'LineWidth',2,...
    'DisplayName','EXP Wild Type')
% plot(d1(:,1),d1(:,2),'o','MarkerSize',5,...
%     'MarkerEdgeColor','r',...
%     'LineWidth',2,...
%     'DisplayName','EXP Wild Type')
%  plot(d2(:,1),d2(:,2),'o','MarkerSize',5,...
%     'MarkerEdgeColor','m',...
%     'LineWidth',2,...
%     'DisplayName','EXP DAP')
  plot(naexpdap(:,1)-min(naexpdap(:,1))+4.9,naexpdap(:,2),'o','MarkerSize',.1,...
    'MarkerEdgeColor','m',...
    'LineWidth',2,...
    'DisplayName','EXP DAP')   

 plot(naexpnbqx(:,1)-min(naexpnbqx(:,1))+4.9,naexpnbqx(:,2),'o','MarkerSize',.1,...
    'MarkerEdgeColor','c',...
    'LineWidth',2,...
    'DisplayName','EXP DAP+NBQX')

%  plot(d3(:,1),d3(:,2),'o','MarkerSize',5,...
%     'MarkerEdgeColor','c',...
%     'LineWidth',2,...
%     'DisplayName','EXP DAP+NBQX')
 plot(naexptbo(:,1)-min(naexptbo(:,1))+4.9,naexptbo(:,2),'o','MarkerSize',.1,...
    'MarkerEdgeColor','k',...
    'LineWidth',2,...
    'DisplayName','EXP DAP+NBQX+TBOA')
% plot(d4(:,1),d4(:,2),'o','MarkerSize',5,...
%     'MarkerEdgeColor','k',...
%     'LineWidth',2,...
%     'DisplayName','EXP DAP+NBQX+TBOA')

xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
ylabel('[Na]_a(mM)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
ytickformat('%.0f')
xtickformat('%.0f')
legend('FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',2)
legend 'boxoff'
% title('Astrocyte Hippocampus','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','black')
ax=gca;
% a = get(gca,'XTickLabel');
% set(gca,'XTickLabel',a,'FontName','Times New Roman','fontsize',18','FontWeight','bold','LineWidth',2)
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
ax.XLim=[0,60];
ax.YLim=[12,22];
xticks(0:10:60);
yticks(12:2:22);
set(gca, 'box', 'off')


 hold off
% % %subplot(1,2,2)
% % 
b=bar(Y, 'grouped','BarWidth',1,'FaceColor','flat','LineWidth',2);
b(1).CData(1,:) =[1 1 1];
b(2).CData(1,:) = [17 17 17]; % group 1 2nd bar
b(1).CData(2,:)=[1 1 1];
b(2).CData(2,:)=[17 17 17];
b(1).CData(3,:)=[1 1 1];
b(2).CData(3,:)=[17 17 17];
b(1).CData(4,:)=[1 1 1];
b(2).CData(4,:)=[17 17 17];
b(2).CData(1,:)=[1 0 0];
b(2).CData(2,:)=[1 0 0];
b(2).CData(3,:)=[1 0 0];
b(2).CData(4,:)=[1 0 0];

LineArray={ '-' , '-' };
for k=1:2
  set(b(k),'LineStyle',LineArray{k},'LineWidth',2)
end
hold on
 hold on

 [ngroups,nbars] = size(Y);
%Calculating the width for each bar group
 x = nan(nbars, ngroups);
 for i = 1:nbars
     x(i,:) = b(i).XEndPoints;
 end
%Plot the errorbars
 errorbar(x',Y,err,'k','linestyle','none','MarkerSize',.1,'LineWidth',1);

  
ax=gca;
ytickformat('%.0f')

ax.XAxis.FontSize = 12;
ax.XAxis.FontWeight = 'bold';
ax.XAxis.Color='k';
ax.XAxis.FontName='Times new Roman';
ax.XAxis.LineWidth=2;
legend('SIM','EXP','FontName','Times New Roman','FontSize',12,'FontWeight','bold')
legend 'boxoff'
a = get(gca,'XTickLabel');
ax.YAxis.LineWidth = 2;
ax.YAxis.FontWeight='bold';
ax.YAxis.FontSize=12;
ax.YAxis.FontName='Times new Roman';
ax.YAxis.Color='black';
ax.YLim=[0,8.02];
yticks(0:2:8.02);



ylabel('[\DeltaNa]_a(mM)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')

set(gca, 'box', 'off')

set(gca,'XTickLabel',a,'FontName','Times New Roman','fontsize',12,'FontWeight','bold','LineWidth',2)
set(gca, 'XTickLabel', {'Wild Type','APV','NBQX+APV','APV+NBQX+TBOA'});
saveas(gcf,'Glusodcortex','epsc')
set(gca, 'box', 'off')
set(gca,'XTickLabelRotation',10)
print( 'FileName', '-dbmp', '-r300')

hold off
