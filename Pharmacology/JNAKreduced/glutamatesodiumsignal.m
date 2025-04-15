clc
close all
clear 
%format compact
load  Nakcortex.dat
load  Nakhippocampus.dat

load NakcortexWT.dat
load NakhippocampusWT.dat
load NakhippocampusNMDA.dat
load NakjnakreducedNMDA.dat


load Cakcortex.dat
load Cakhippocampus.dat
load CakcortexWT.dat
load CakhippocampusWT.dat
load CakhippocampusNMDA.dat
load CakjnakreducedNMDA.dat
% load Naknmda.dat
% load Naknonmda.dat
% load naexp1.csv
% load naexp2.csv
% load naexp3.csv
% load naexp4.csv

% Y = [(max(NakcortexWT(:,2))-14368)/1000,(max(NakhippocampusWT(:,2))-13760)/1000;(max(Nakcortex(:,2))-14368)/1000, ...
% (max(Nakhippocampus(:,2))-13760)/1000;(max(NakjnakreducedNMDA(:,2))-14368)/1000, ...
% (max(NakhippocampusNMDA(:,2))-13760)/1000];
 Y = [(max(CakcortexWT(:,2))-0.0802248),(max(CakhippocampusWT(:,2))-0.073071);(max(Cakcortex(:,2))-0.0802245), ...
(max(Cakhippocampus(:,2))-0.073071);(max(CakjnakreducedNMDA(:,2))-0.0802245), ...
(max(CakhippocampusNMDA(:,2))-0.073071)];


figure


b=bar( Y, 'grouped','BarWidth',1,'facecolor','flat','LineWidth',2);
set(b(1),'FaceColor','w')
 b(1).CData(1,:) =[1 1 1];
 b(2).CData(1,:) = [17 17 17]; % group 1 2nd bar
 b(1).CData(2,:)=[1 1 1];
 b(2).CData(2,:)=[17 17 17];
 b(1).CData(3,:)=[1 1 1];
 b(2).CData(3,:)=[17 17 17];
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
ytickformat('%.0f')
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
ax.YLim=[0,8];
yticks(0:2:8);
% ax.YLim=[0,60];
%yticks(0:10:60);
set(gca,'XTickLabel',a,'FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',2)
set(gca, 'XTickLabel', {'Wild Type','0.5 JNaKmax','0.5JNaKmaxAPV'});
set(gca, 'box', 'off')
set(gca,'XTickLabelRotation',10)
saveas(gcf,'Glusodcortex','epsc')
% % 
