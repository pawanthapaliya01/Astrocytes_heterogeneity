clc
close all
clear 
%format compact
load NakNMDAWT.dat
load NakNMDADAP.dat
load NakhippNMDAWT.dat
load NakhippNMDADAP.dat

load CakNMDAWT.dat
load CakNMDADAP.dat
load CakhippNMDAWT.dat
load CakhippNMDADAP.dat

% load Naknmda.dat
% load Naknonmda.dat
% load naexp1.csv
% load naexp2.csv
% load naexp3.csv
% load naexp4.csv

% X=categorical({'Glu','dap','nbqx+dap','dap+nbqx+tbo'});
% X = reordercats(X,{'Glu','dap','nbqx+dap','dap+nbqx+tbo'});
% 
%Y = [(max(NakNMDAWT(:,2))-14368)/1000,(max(NakhippNMDAWT(:,2))-13760)/1000;(max(NakNMDADAP(:,2))-14368)/1000, ...
%max(NakhippNMDADAP(:,2))-13760)/1000];
 Y = [(max(CakNMDAWT(:,2))-0.0802248),(max(CakhippNMDAWT(:,2))-0.073071);(max(CakNMDADAP(:,2))-0.0802245), ...
(max(CakhippNMDADAP(:,2))-0.073071)];
%err=[0,600;0, 100;0, 100;0, 30]*1.0d-3;
%ylow = [600 100 100 30]*1.0d-3;

figure


b=bar( Y, 'grouped','BarWidth',1,'facecolor','flat','LineWidth',2);
set(b(1),'FaceColor','w')
 b(1).CData(1,:) =[1 1 1];
 b(2).CData(1,:) = [17 17 17]; % group 1 2nd bar
 b(1).CData(2,:)=[1 1 1];
 b(2).CData(2,:)=[17 17 17];
% b(1).CData(3,:)=[1 1 1];
% b(2).CData(3,:)=[17 17 17];
% b(1).CData(4,:)=[1 1 1];
% b(2).CData(4,:)=[17 17 17];


LineArray={ '-' , '-' };
for k=1:2
  set(b(k),'LineStyle',LineArray{k},'LineWidth',2)
end
% hold on
% [ngroups,nbars] = size(Y);
% % Calculating the width for each bar group
% x = nan(nbars, ngroups);
% for i = 1:nbars
%     x(i,:) = b(i).XEndPoints;
%     %errorbar(x',Y*1.0d-3,err,'k','linestyle','none');
% end
% % Plot the errorbars
% errorbar(x',Y*1.0d-3,err,'k','linestyle','none');
% hold off

er.Color = [0 0 0];                            
er.LineStyle = 'none'; 
ytickformat('%.1f')
%title('Astrocyte cortex','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
legend('Cortex','Hippocampus','FontName','Times New Roman','FontSize',12,'FontWeight','bold');

legend 'boxoff'


%ylabel('[\DeltaNa]_a(mM)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ax=gca;
% ax.XAxis.FontSize =12;
% ax.XAxis.FontWeight = 'bold';
% ax.XAxis.Color='k';
% ax.XAxis.FontName='Times new Roman';
% ax.XAxis.LineWidth=3;
% 
%  a = get(gca,'XTickLabel');
% ax.YAxis.LineWidth =2;
% ax.YAxis.FontWeight='bold';
% ax.YAxis.FontSize=14;
% ax.YAxis.FontName='Times new Roman';
% ax.YAxis.Color='black';
% % ax.YLim=[-1,];
% % yticks(-1:2:7);
% 
% set(gca,'XTickLabel',a,'FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',2)
% set(gca, 'XTickLabel', {'Wild Type','APV'});
% set(gca, 'box', 'off')
% set(gca,'XTickLabelRotation',10)
%saveas(gcf,'Glusodcortex','epsc')
% % 


ylabel('[\DeltaCa]_a(uM)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
ax=gca;
ax.XAxis.FontSize =12;
ax.XAxis.FontWeight = 'bold';
ax.XAxis.Color='k';
ax.XAxis.FontName='Times new Roman';
ax.XAxis.LineWidth=2;

 a = get(gca,'XTickLabel');
ax.YAxis.LineWidth =2;
ax.YAxis.FontWeight='bold';
ax.YAxis.FontSize=12;
ax.YAxis.FontName='Times new Roman';
ax.YAxis.Color='black';
ax.YLim=[0,0.4];
yticks(0:.1:.4);

set(gca,'XTickLabel',a,'FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',2)
set(gca, 'XTickLabel', {'Wild Type','APV'});
set(gca, 'box', 'off')
set(gca,'XTickLabelRotation',10)
saveas(gcf,'Glusodcortex','epsc')
% % 
