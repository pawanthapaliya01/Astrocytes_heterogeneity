close all
%for 10uM glutamate parameter

load Data.csv %glutamate mediated  dap 
load peaksteadydap.dat
load peaksteadynmda.dat
load peaksteadyampa.dat
load peaksteadytbo.dat
load ampa.csv
load tboexp.csv
load NMDAdata.csv
load errorbarampa.csv
load errorbardap.csv
load errorbarNMDA.csv
load errorbartbo.csv
diffNMDA=errorbarNMDA(:,2)-NMDAdata(1:end-1,2);
diffNMDA(end+1,:)=0;
diffdap=errorbardap(1:end-1,2)-Data(1:end-1,2);
diffdap(end+1,:)=0;
diffampa=errorbarampa(1:end-1,2)-ampa(1:end-1,2);
diffampa(end+1,:)=0;
difftbo=errorbartbo(1:end-1,2)-tboexp(1:end-1,2);
difftbo(end+1,:)=0;
%glutamate mediated NMDA current ratio

gludap=peaksteadydap(:,1);
peakdap=peaksteadydap(:,2)/max(peaksteadydap(:,2));
steadydap=peaksteadydap(:,3)/max(peaksteadydap(:,3));

% Nmda mediated Nmdacurrent ratio

nmda=peaksteadynmda(:,1);
peaknmda=peaksteadynmda(:,2)/max(peaksteadynmda(:,2));
steadynmda=peaksteadynmda(:,3)/max(peaksteadynmda(:,3));

% Glutamate mediated ampa current
glu=peaksteadyampa(:,1);
peakampa=peaksteadyampa(:,2)/max(peaksteadyampa(:,2));
steadyampa=peaksteadyampa(:,3)/max(peaksteadyampa(:,3));
%glu=[0.1;1;10;100;1000];

% Glutmate transporter current
% Glutamate mediated ampa current
tbo=peaksteadytbo(:,1);
peaktbo=peaksteadytbo(:,2)/max(peaksteadytbo(:,2));
steadytbo=peaksteadytbo(:,3)/max(peaksteadytbo(:,3));clc


%subplot(2,2,1)
h(1)=semilogx(gludap,peakdap,'r','MarkerSize',5,...
    'MarkerEdgeColor','r',...
    'LineWidth',2,...
    'DisplayName','Peak');
hold on
h(2)=semilogx(gludap,steadydap,'m','MarkerSize',5,...
    'MarkerEdgeColor','m',...
   'LineWidth',2,...
    'DisplayName','Steady');
h(3)=semilogx(Data(:,1),Data(:,2),'o', 'MarkerEdgeColor','r',...
    'LineWidth',2,...
    'DisplayName','EXP');
h(4)=errorbar(Data(:,1),Data(:,2),diffdap,'ks','MarkerSize',1.5,...
    'MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 0 0]','LineWidth',1,...
    'DisplayName','Errorbar');

xlabel('[Glutamate](uM)')
ylabel('I/Imax')
legend(h([3,1,2]),'FontName','Times New Roman','FontSize',12,'FontWeight','bold','location','northwest')
 legend 'boxoff'
%title('Peak and steady value of DAP sensitive current \newline at different glutamte concentration',...
 %   'FontName','Times','FontSize',18,'FontWeight','bold','Color','black')
ytickformat('%.1f')
ax=gca;
ax.XAxis.FontSize = 12;
ax.XAxis.FontWeight = 'bold';
ax.XAxis.Color='black';
ax.XAxis.LineWidth=2;
ax.XAxis.FontName='Times New Roman';
ax.YAxis.FontSize = 12;
ax.YAxis.FontWeight = 'bold';
ax.YAxis.Color='black';
ax.YAxis.FontName='Times New Roman';
ax.YAxis.LineWidth=2;

ax.YLim=[0,1.02];
ax.XLim=[1e-3 1e4];
yticks(0:.2:1.02);
xticks(10.^(-2:2:4)),
set(gca, 'box', 'off')
 a = get(gca,'XTickLabel');
 set(gca,'XTickLabel',a,'FontName','Times','fontsize',12,'FontWeight','bold')
 hold off

% %subplot (2,2,2)
% 
% h(1)=semilogx(nmda,peaknmda,'r','MarkerSize',5,...
%     'MarkerEdgeColor','r',...
%     'LineWidth',2,...
%     'DisplayName','Peak');
% hold on
% h(2)=semilogx(nmda,steadynmda,'m','MarkerSize',5,...
%     'MarkerEdgeColor','m',...
%    'LineWidth',2,...
%     'DisplayName','Steady');
% h(3)=semilogx(NMDAdata(:,1),NMDAdata(:,2),'o', 'MarkerEdgeColor','r',...
%     'LineWidth',2,...
%     'DisplayName','EXP');
% errorbar(NMDAdata(:,1),NMDAdata(:,2),diffNMDA,'ks','MarkerSize',1.5,...
%     ...'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[0 0 0 ]','LineWidth',1,...
%     'DisplayName','Errorbar')
% % 
% xlabel('[NMDA](uM)')
% ylabel('I/Imax')
% legend(h([3,1,2]),'FontName','Times New Roman','FontSize',12,'FontWeight','bold','location','northwest')
% legend 'boxoff'
% 
% ytickformat('%.1f')
% ax=gca;
% ax.XAxis.FontSize = 12;
% ax.XAxis.FontWeight = 'bold';
% ax.XAxis.Color='black';
% ax.XAxis.LineWidth=2;
% ax.XAxis.FontName='Times New Roman';
% ax.YAxis.FontSize = 12;
% ax.YAxis.FontWeight = 'bold';
% ax.YAxis.Color='black';
% ax.YAxis.FontName='Times New Roman';
% ax.YAxis.LineWidth=2;
% % 
% ax.YLim=[0,1.02];
% ax.XLim=[1e-3 1e4];
% yticks(0:.2:1.02);
% xticks(10.^(-2:2:4)),
% set(gca, 'box', 'off')
%  hold off

% % % subplot(2,2,3)
% h(1)=semilogx(glu,peakampa,'r','MarkerSize',5,'MarkerEdgecolor','r',...
%      'LineWidth',2,...
%     'DisplayName','Peak');
% hold on
% h(2)=semilogx(glu,steadyampa,'m','MarkerSize',5,'MarkerEdgecolor','m',...
%      'LineWidth',2,...
%      'DisplayName','Steady');
% h(3)=semilogx(ampa(:,1),ampa(:,2),'o','MarkerSize',5,'MarkerEdgecolor','r',...
%      'LineWidth',2,...
%     'DisplayName','EXP');
% h(4)=errorbar(ampa(:,1),ampa(:,2),diffampa,'ks','MarkerSize',1.5,'MarkerEdgecolor','k',...
%      'MarkerFaceColor',[1 0 0]','LineWidth',1);
% 
% xlabel('[Glutamate](uM)')
% ylabel('I/Imax')
% legend(h([3,1,2]),'FontName','Times New Roman','FontSize',12,'FontWeight','bold','location','northwest')
%  legend 'boxoff'
% % %title('Peak and steady value of nbqx sensitive current \newline at different glutamate concentration  ',...
% %     %'FontName','Times','FontSize',18,'FontWeight','bold','Color','black')
%  ytickformat('%.1f')
%  ax=gca;
% ax.XAxis.FontSize = 12;
% ax.XAxis.FontWeight = 'bold';
% ax.XAxis.Color='black';
% ax.XAxis.FontName='Times New Roman';
% ax.XAxis.LineWidth=2;
% ax.YAxis.LineWidth=2;
% ax.YAxis.FontSize = 12;
% ax.YAxis.FontWeight = 'bold';
% ax.YAxis.Color='black';
% ax.YAxis.FontName='Times New Roman';
% ax.YAxis.LineWidth=2;
% ax.YLim=[0,1];
% ax.XLim=[1e-2 1e4];
% yticks(0:.2:1);
% xticks(10.^(-2:2:4)),
% set(gca, 'box', 'off');
% hold off
% subplot(2,2,4)
% semilogx(tbo,peaktbo,'r-o','MarkerSize',5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2.5,...
%     'DisplayName','Peak')
% hold on
% semilogx(tbo,steadytbo,'m-o','MarkerSize',5,...
%     'MarkerEdgeColor','m',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2.5,...
%     'DisplayName','Steady')
% errorbar(tboexp(:,1),tboexp(:,2),difftbo,'bo','MarkerSize',5,...
%     'MarkerEdgeColor','b',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2.5,...
%     'DisplayName','errorbar')
% semilogx(tboexp(:,1),tboexp(:,2),'go','MarkerSize',5,...
%     'MarkerEdgeColor','green',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2.5,...
%     'DisplayName','Exp')
% xlabel('Glutamate uM')
% ylabel('I/Imax')
% legend('FontName','Times','FontSize',12,'FontWeight','bold','location','northwest')
% title('Peak and steady value of transporter current \newline at different glutamate concentration  ',...
%     'FontName','Times','FontSize',18,'FontWeight','bold','Color','black')
% ytickformat('%.1f')
% ax=gca;
% ax.XAxis.FontSize = 18;
% % ax.XAxis.FontWeight = 'bold';
% ax.XAxis.Color='black';
% ax.XAxis.FontName='Times';
% ax.YAxis.FontSize = 18;
% ax.YAxis.FontWeight = 'bold';
% ax.YAxis.Color='black';
% ax.YAxis.FontName='Times New Roman';
% hold off
% 
% 
