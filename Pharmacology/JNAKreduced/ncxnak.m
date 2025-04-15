% %load vkcortex.dat
% load vkcortex1.dat
% %load vkNMDAhipinak0p5.dat
% load vkhippocampus.dat
% load vk.dat
% load vkhippocampusWT.dat


load Jsercacortex.dat
%load Jsercacortex1.dat
%load JsercaNMDAhipinak0p5.dat
load Jsercahippocampus.dat
load JsercacortexWT.dat
load JsercahippocampusWT.dat
load JsercahippocampusNMDA.dat
load JsercajnakreducedNMDA.dat

load JNAKkcortex.dat
%load JNAKkcortex1.dat
%load JNAKkNMDAhipinak0p5.dat
load JNAKkhippocampus.dat
load JNAKkcortexWT.dat
load JNAKkhippocampusWT.dat
load JNAKkhippocampusNMDA.dat
load JNAKkjnakreducedNMDA.dat


% load JNCXhippocampus.dat
% load JNCXhippocampus.dat
% %load JNCXNMDAhipinak0p5.dat
% load JNCXcortex1.dat
% %load JNCXcortex.dat
% 
% %load JNCXNMDAhipinak0p5.dat
% load JNCXcortex1.dat
% %load JNCXcortex.dat
% load JNCX.dat
% load JNCXhippocampusWT.dat

% load Jdaphippocampus.dat
% %load JdapNMDAhipinak0p5.dat
% load Jdapcortex1.dat
% %load Jdapcortex.dat
% load Jdap.dat
% load JdaphippocampusWT.dat

% load  Nashippocampus.dat
% %load  NasNMDAhipinak0p5.dat
% load  Nascortex1.dat
% %load  Nascortex.dat
% load Nas.dat
% load NashippocampusWT.dat

load  Nakcortex.dat
load  Nakhippocampus.dat
%load  Nakcortex1.dat
%load  Nakcortex.dat
load NakcortexWT.dat
load NakhippocampusWT.dat
load NakhippocampusNMDA.dat
load NakjnakreducedNMDA.dat

% load Kshippocampus.dat
% %load KsNMDAhipinak0p5.dat
% load Kscortex1.dat
% %load Kscortex.dat
% load Ks.dat
% load KshippocampusWT.dat

% load Kkcortex.dat
% load Kkhippocampus.dat
% %%load Kkcortex.dat
% load KkcortexWT.dat
% load KkhippocampusWT.dat
% 
% load Clkcortex.dat
% load Clkhippocampus.dat
% %load Clkcortex1.dat
% %load Clkcortex.dat
% load ClkcortexWT.dat
% load ClkhippocampusWT.dat

load Cakcortex.dat
load Cakhippocampus.dat
%load Cakcortex1.dat
%load Cakcortex.dat
load CakcortexWT.dat
load CakhippocampusWT.dat
load CakhippocampusNMDA.dat
load CakjnakreducedNMDA.dat









%subplot(2,3,1)

% plot(JNAKkcortexWT(:,1)-min(JNAKkcortexWT(:,1)),JNAKkcortexWT(:,2)/1000,'r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT cortex')
% hold on
% plot(JNAKkhippocampusWT(:,1)-min(JNAKkhippocampusWT(:,1)),JNAKkhippocampusWT(:,2)/1000,'k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT hippocampus')
% 
% plot(JNAKkcortex(:,1)-min(JNAKkcortex(:,1)),JNAKkcortex(:,2)/1000,':r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','0.5JNaKmax cortex')
% 
% plot(JNAKkhippocampus(:,1)-min(JNAKkhippocampus(:,1)),JNAKkhippocampus(:,2)/1000,':k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','0.5JNaKmax hippocampus')
% 
% 
% 
% plot(JNAKkjnakreducedNMDA(:,1)-min(JNAKkjnakreducedNMDA(:,1)),JNAKkjnakreducedNMDA(:,2)/1000,'--r','MarkerSize',2.5,...
%     'MarkerEdgeColor','g',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','0.5JNaKmaxAPV cortex')
% plot(JNAKkhippocampusNMDA(:,1)-min(JNAKkhippocampusNMDA(:,1)),JNAKkhippocampusNMDA(:,2)/1000,'--k','MarkerSize',2.5,...
%     'MarkerEdgeColor','b',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','0.5JNaKmaxAPV hippocampus')
% 
% ax=gca;
% xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ylabel('JNaK(nA/um^2)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ytickformat('%.0f')
% xtickformat('%.0f')
% legend('FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',2)
% legend 'boxoff'
% %title('Astrocyte cortex','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','black')
% % 
% %a = get(gca,'XTickLabel');
% %set(gca,'XTickLabel',a,'FontName','Times New Roman','fontsize',18','FontWeight','bold','LineWidth',2.5)
% ax.XAxis.FontSize = 12;
% ax.XAxis.FontWeight = 'bold';
% ax.XAxis.Color='black';
% ax.XAxis.LineWidth=2;
% ax.XAxis.FontName='Times new Roman';
% ax.YAxis.LineWidth = 2;
% ax.YAxis.FontWeight='bold';
% ax.YAxis.FontSize=12;
% ax.YAxis.FontName='Times new Roman';
% ax.YAxis.Color='black';
% ax.XLim=[0,60];
% ax.YLim=[6,18];
% xticks(0:10:60);
% yticks(6:2:18);
%  set(gca, 'box', 'off')
% hold off


% subplot(3,3,2)
% % plot(JNCXcortex(:,1),JNCXcortex(:,2)*1000,'-g','MarkerSize',2.5,...
% %     'MarkerEdgeColor','c',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% %     'DisplayName','0.5JNaKmaxCor LP')
% hold on
% plot(JNCXcortex1(:,1),JNCXcortex1(:,2)*1000,':r','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','0.5JNaKmax cor')
% plot(JNCXhippocampus(:,1),JNCXhippocampus(:,2)*1000,':k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','0.5JNaKmax Hip')
% % plot(JNCXNMDAhipinak0p5(:,1),JNCXNMDAhipinak0p5(:,2)*1000,'-m','MarkerSize',2.5,...
% %     'MarkerEdgeColor','c',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% %     'DisplayName','0.5JNaKmaxHip LP')
% plot(JNCX(:,1),JNCX(:,2)*1000,'-r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','WT cortex')
% plot(JNCXhippocampusWT(:,1),JNCXhippocampusWT(:,2)*1000,'-k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','WT hip')
% ax=gca;
% xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ylabel('JNCX(fA/um^2)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ytickformat('%.2f')
% xtickformat('%.2f')
% legend('FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',3)
% legend 'boxoff'
% %title('Astrocyte cortex','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','black')
% % 
% %a = get(gca,'XTickLabel');
% %set(gca,'XTickLabel',a,'FontName','Times New Roman','fontsize',18','FontWeight','bold','LineWidth',2.5)
% ax.XAxis.FontSize = 12;
% ax.XAxis.FontWeight = 'bold';
% ax.XAxis.Color='black';
% ax.XAxis.LineWidth=3;
% ax.XAxis.FontName='Times new Roman';
% ax.YAxis.LineWidth = 3;
% ax.YAxis.FontWeight='bold';
% ax.YAxis.FontSize=12;
% ax.YAxis.FontName='Times new Roman';
% ax.YAxis.Color='black';
%  ax.XLim=[90,200];
% ax.YLim=[-12,15];
% xticks(90:30:200);
%  yticks(-12:3:15);
%  set(gca, 'box', 'off')
% 
% hold off

% subplot(3,3,3)
% % plot(Jdapcortex(:,1),Jdapcortex(:,2),'-g','MarkerSize',2.5,...
% %     'MarkerEdgeColor','c',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% %     'DisplayName','0.5JNaKmaxCor LP')
% hold on
% plot(Jdapcortex1(:,1),Jdapcortex1(:,2),':r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','0.5JNaKmax cor')
% 
% plot(Jdaphippocampus(:,1),Jdaphippocampus(:,2),':k','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','0.5JNaKmax hip')
% % plot(JdapNMDAhipinak0p5(:,1),JdapNMDAhipinak0p5(:,2),'-m','MarkerSize',2.5,...
% %     'MarkerEdgeColor','c',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% %     'DisplayName','0.5JNaKmaxHip LP')
% plot(Jdap(:,1),Jdap(:,2),'-r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','WT cortex')
% plot(JdaphippocampusWT(:,1),JdaphippocampusWT(:,2),'-k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','WT hip')
% ax=gca;
% xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ylabel('JNMDA(pA/um^2)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ytickformat('%.2f')
% xtickformat('%.2f')
% legend('FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',3)
% legend 'boxoff'
% %title('Astrocyte cortex','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','black')
% % 
% %a = get(gca,'XTickLabel');
% %set(gca,'XTickLabel',a,'FontName','Times New Roman','fontsize',18','FontWeight','bold','LineWidth',2.5)
% ax.XAxis.FontSize = 12;
% ax.XAxis.FontWeight = 'bold';
% ax.XAxis.Color='black';
% ax.XAxis.LineWidth=3;
% ax.XAxis.FontName='Times new Roman';
% ax.YAxis.LineWidth = 3;
% ax.YAxis.FontWeight='bold';
% ax.YAxis.FontSize=12;
% ax.YAxis.FontName='Times new Roman';
% ax.YAxis.Color='black';
% ax.XLim=[90,200];
% ax.YLim=[0,1];
% xticks(90:30:200);
% yticks(0:.1241:1);
%  set(gca, 'box', 'off')
% 
% hold off



% subplot(3,4,6)
% plot(Nashippocampus(:,1),Nashippocampus(:,2)/1000,'-c','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','0.5JNaKmaxHip SP')
% hold on
% plot(NasNMDAhipinak0p5(:,1),NasNMDAhipinak0p5(:,2)/1000,'-m','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','0.5JNaKmaxHip LP')
% plot(Nascortex1(:,1),Nascortex1(:,2)/1000,'-b','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','0.5JNaKmaxCor SP')
% plot(Nascortex(:,1),Nascortex(:,2)/1000,'-g','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','0.5JNaKmaxCor LP')
% plot(Nas(:,1),Nas(:,2)/1000,'-r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','WT cortex')
% plot(NashippocampusWT(:,1),NashippocampusWT(:,2)/1000,'-k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','WT hip')
% ax=gca;
% xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ylabel('[Na]_s(mM)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ytickformat('%.2f')
% xtickformat('%.2f')
% legend('FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',3)
% legend 'boxoff'
% %title('Astrocyte cortex','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','black')
% % 
% %a = get(gca,'XTickLabel');
% %set(gca,'XTickLabel',a,'FontName','Times New Roman','fontsize',18','FontWeight','bold','LineWidth',2.5)
% ax.XAxis.FontSize = 12;
% ax.XAxis.FontWeight = 'bold';
% ax.XAxis.Color='black';
% ax.XAxis.LineWidth=3;
% ax.XAxis.FontName='Times new Roman';
% ax.YAxis.LineWidth = 3;
% ax.YAxis.FontWeight='bold';
% ax.YAxis.FontSize=12;
% ax.YAxis.FontName='Times new Roman';
% ax.YAxis.Color='black';
% ax.XLim=[90,200];
% ax.YLim=[130,180];
% xticks(90:30:200);
% yticks(130:10:180);
%  set(gca, 'box', 'off')
% 
% hold off

%subplot(2,3,2)

% plot(JsercacortexWT(:,1)-min(JsercacortexWT(:,1)),JsercacortexWT(:,2),'-r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT cortex')
% hold on
% plot(JsercahippocampusWT(:,1)-min(JsercahippocampusWT(:,1)),JsercahippocampusWT(:,2),'-k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT hippocampus')
% plot(Jsercacortex(:,1)-min(Jsercacortex(:,1)),Jsercacortex(:,2),':r','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','0.5JNaKmax cortex')
% 
%    
% plot(Jsercahippocampus(:,1)-min(Jsercahippocampus(:,1)),Jsercahippocampus(:,2),':k','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','0.5JNaKmax hippocampus ')
% 
% 
% 
% plot(JsercajnakreducedNMDA(:,1)-min(JsercajnakreducedNMDA(:,1)),JsercajnakreducedNMDA(:,2),'--r','MarkerSize',2.5,...
%     'MarkerEdgeColor','g',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','0.5JNaKmaxAPV cortex')
% plot(JsercahippocampusNMDA(:,1)-min(JsercahippocampusNMDA(:,1)),JsercahippocampusNMDA(:,2),'--k','MarkerSize',2.5,...
%     'MarkerEdgeColor','b',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','0.5JNaKmaxAPV hippocampus')
% ax=gca;
% xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ylabel('Jserca(pA/um^2)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ytickformat('%.2f')
% xtickformat('%.1f')
% legend('FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',2)
% legend 'boxoff'
% 
% 
% a = get(gca,'XTickLabel');
% %set(gca,'XTickLabel',a,'FontName','Times New Roman','fontsize',12','FontWeight','bold','LineWidth',2.5)
% ax.XAxis.FontSize = 12;
% ax.XAxis.FontWeight = 'bold';
% ax.XAxis.Color='black';
% ax.XAxis.LineWidth=2;
% ax.XAxis.FontName='Times new Roman';
% ax.YAxis.LineWidth = 2;
% ax.YAxis.FontWeight='bold';
% ax.YAxis.FontSize=12;
% ax.YAxis.FontName='Times new Roman';
% ax.YAxis.Color='black';
% ax.XLim=[0,60];
% ax.YLim=[0,25];
% xticks(0:10:60);
% yticks(0:5:25);
%  set(gca, 'box', 'off')
% hold off

% % subplot(3,3,5)
% % % plot(vkcortex(:,1),vkcortex(:,2),'-g','MarkerSize',2.5,...
% % %     'MarkerEdgeColor','c',...
% % %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% % %     'DisplayName','0.5JNaKmaxCor LP')
% % hold on
% % plot(vkcortex1(:,1),vkcortex1(:,2)+100.0,':r','MarkerSize',2.5,...
% %     'MarkerEdgeColor','c',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% %     'DisplayName','0.5JNaKmax cor')
% % % plot(vkNMDAhipinak0p5(:,1),vkNMDAhipinak0p5(:,2),'-m','MarkerSize',2.5,...
% % %     'MarkerEdgeColor','m',...
% % %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% % %     'DisplayName','0.5JNaKmaxHip LP')
% % plot(vkhippocampus(:,1),vkhippocampus(:,2)+100.0,':k','MarkerSize',2.5,...
% %     'MarkerEdgeColor','c',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% %     'DisplayName','0.5JNaKmax hip')
% % % 
% % plot(vk(:,1),vk(:,2)+100.0,'-r','MarkerSize',2.5,...
% %     'MarkerEdgeColor','r',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% %     'DisplayName','WT cortex')
% % plot(vkhippocampusWT(:,1),vkhippocampusWT(:,2)+100.0,'-k','MarkerSize',2.5,...
% %     'MarkerEdgeColor','k',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% %     'DisplayName','WT hip')
% % ax=gca;
% % xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% % ylabel('\Deltav_m(mV)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% % ytickformat('%.2f')
% % xtickformat('%.2f')
% % legend('FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',3)
% % legend 'boxoff'
% % %title('Astrocyte cortex','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','black')
% % % 
% % %a = get(gca,'XTickLabel');
% % %set(gca,'XTickLabel',a,'FontName','Times New Roman','fontsize',18','FontWeight','bold','LineWidth',2.5)
% % ax.XAxis.FontSize = 12;
% % ax.XAxis.FontWeight = 'bold';
% % ax.XAxis.Color='black';
% % ax.XAxis.LineWidth=3;
% % ax.XAxis.FontName='Times new Roman';
% % ax.YAxis.LineWidth = 3;
% % ax.YAxis.FontWeight='bold';
% % ax.YAxis.FontSize=12;
% % ax.YAxis.FontName='Times new Roman';
% % ax.YAxis.Color='black';
% %  ax.XLim=[90,200];
% % ax.YLim=[0,48];
% % xticks(90:30:200);
% %  yticks(0:6:48);
% %  set(gca, 'box', 'off')
% 
% 
%subplot(2,3,3)
plot(Nakcortex(:,1)-min(Nakcortex(:,1)),Nakcortex(:,2)/1000,':r','MarkerSize',2.5,...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
    'DisplayName','0.5JNaKmax cortex')
hold on
plot(Nakhippocampus(:,1)-min(Nakhippocampus(:,1)),Nakhippocampus(:,2)/1000,':k','MarkerSize',2.5,...
    'MarkerEdgeColor','k',...
    'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
    'DisplayName','0.5JNaKmax hippocampus')

plot(NakcortexWT(:,1)-min(NakcortexWT(:,1)),NakcortexWT(:,2)/1000,'-r','MarkerSize',2.5,...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
    'DisplayName','WT cortex')
plot(NakhippocampusWT(:,1)-min(NakhippocampusWT(:,1)),NakhippocampusWT(:,2)/1000,'-k','MarkerSize',2.5,...
    'MarkerEdgeColor','k',...
    'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
    'DisplayName','WT hippocampus')
plot(NakjnakreducedNMDA(:,1)-min(NakjnakreducedNMDA(:,1)),NakjnakreducedNMDA(:,2)/1000,'--r','MarkerSize',2.5,...
     'MarkerEdgeColor','r',...
     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
     'DisplayName','APV 0.5JNaKmax cortex ')
plot(NakhippocampusNMDA(:,1)-min(NakhippocampusNMDA(:,1)),NakhippocampusNMDA(:,2)/1000,'--k','MarkerSize',2.5,...
     'MarkerEdgeColor','k',...
     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
     'DisplayName','APV 0.5JNaKmax hippocampus')
ax=gca;
xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
ylabel('[Na]_a(mM)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
ytickformat('%.0f')
xtickformat('%.0f')
legend('FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',2)
legend 'boxoff'
%title('Astrocyte cortex','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','black')

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
ax.XLim=[0,60];
ax.YLim=[10,60];
xticks(0:10:60);
yticks(10:10:60);
 set(gca, 'box', 'off')
hold off



% 
%subplot(2,3,4)
% plot(Kkcortex(:,1),Kkcortex(:,2)/1000,':r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
%     'DisplayName','0.5JNaKmax cor')
% % hold on
% plot(Kkhippocampus(:,1),Kkhippocampus(:,2)/1000,':k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','0.5JNaKmax hip')
% % plot(KkNMDAhipinak0p5(:,1),KkNMDAhipinak0p5(:,2)/1000,'-m','MarkerSize',2.5,...
% %     'MarkerEdgeColor','c',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% %     'DisplayName','0.5JNaKmaxHip LP')
% 
% % plot(Kkcortex(:,1),Kkcortex(:,2)/1000,'-g','MarkerSize',2.5,...
% %     'MarkerEdgeColor','c',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% %     'DisplayName','0.5JNaKmaxCor LP')
% plot(KkcortexWT(:,1),KkcortexWT(:,2)/1000,'-r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT cortex')
% plot(KkhippocampusWT(:,1),KkhippocampusWT(:,2)/1000,'-k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT hip')
% ax=gca;
% xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ylabel('[K]_a(mM)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ytickformat('%.2f')
% xtickformat('%.2f')
% legend('FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',2)
% legend 'boxoff'
% %title('Astrocyte cortex','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','black')
% % 
% %a = get(gca,'XTickLabel');
% %set(gca,'XTickLabel',a,'FontName','Times New Roman','fontsize',18','FontWeight','bold','LineWidth',2.5)
% ax.XAxis.FontSize = 12;
% ax.XAxis.FontWeight = 'bold';
% ax.XAxis.Color='black';
% ax.XAxis.LineWidth=2;
% ax.XAxis.FontName='Times new Roman';
% ax.YAxis.LineWidth = 2;
% ax.YAxis.FontWeight='bold';
% ax.YAxis.FontSize=12;
% ax.YAxis.FontName='Times new Roman';
% ax.YAxis.Color='black';
% ax.XLim=[90,190];
% ax.YLim=[70,130];
% xticks(90:20:190);
% yticks(70:10:130);
%  set(gca, 'box', 'off')
% hold off
% 
% subplot(2,3,5)
% plot(Clkcortex(:,1),Clkcortex(:,2)/1000,':r','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%      'DisplayName','0.5JNaKmax cor')
% hold on
% plot(Clkhippocampus(:,1),Clkhippocampus(:,2)/1000,':k','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','0.5JNaKmax hip')
% % plot(ClkNMDAhipinak0p5(:,1),ClkNMDAhipinak0p5(:,2)/1000,'-m','MarkerSize',2.5,...
% %     'MarkerEdgeColor','c',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% %     'DisplayName','0.5JNaKmaxHip LP')
% 
% % plot(Clkcortex(:,1),Clkcortex(:,2)/1000,'-g','MarkerSize',2.5,...
% %     'MarkerEdgeColor','c',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',3,...
% %     'DisplayName','0.5JNaKmaxCor LP')
% plot(ClkcortexWT(:,1),ClkcortexWT(:,2)/1000,'-r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT cortex')
% plot(ClkhippocampusWT(:,1),ClkhippocampusWT(:,2)/1000,'-k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT hip')
% ax=gca;
% xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ylabel('[Cl]_a(mM)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ytickformat('%.2f')
% xtickformat('%.2f')
% legend('FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',2)
% legend 'boxoff'
% %title('Astrocyte cortex','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','black')
% % 
% %a = get(gca,'XTickLabel');
% %set(gca,'XTickLabel',a,'FontName','Times New Roman','fontsize',18','FontWeight','bold','LineWidth',2.5)
% ax.XAxis.FontSize = 12;
% ax.XAxis.FontWeight = 'bold';
% ax.XAxis.Color='black';
% ax.XAxis.LineWidth=2;
% ax.XAxis.FontName='Times new Roman';
% ax.YAxis.LineWidth = 2;
% ax.YAxis.FontWeight='bold';
% ax.YAxis.FontSize=12;
% ax.YAxis.FontName='Times new Roman';
% ax.YAxis.Color='black';
% ax.XLim=[90,190];
% ax.YLim=[5,40];
% xticks(90:20:190);
% yticks(5:5:40);
%  set(gca, 'box', 'off')
% hold off
% 
% subplot(2,3,6)
% plot(Cakcortex(:,1)-min(Cakcortex(:,1)),Cakcortex(:,2),':r','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','0.5JNaKmax cortex')
% hold on
% plot(Cakhippocampus(:,1)-min(Cakhippocampus(:,1)),Cakhippocampus(:,2),':k','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','0.5JNaKmax hippocampus')
% 
% 
% 
% plot(CakcortexWT(:,1)-min(CakcortexWT(:,1)),CakcortexWT(:,2),'-r','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT cortex')
% 
% plot(CakhippocampusWT(:,1)-min(CakhippocampusWT(:,1)),CakhippocampusWT(:,2),'-k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT hippocampus')
% 
% plot(CakjnakreducedNMDA(:,1)-min(CakjnakreducedNMDA(:,1)),CakjnakreducedNMDA(:,2),'--r','MarkerSize',2.5,...
%     'MarkerEdgeColor','g',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','APV 0.5JNaKmax cortex')
% plot(CakhippocampusNMDA(:,1)-min(Cakhippocampus(:,1)),CakhippocampusNMDA(:,2),'--k','MarkerSize',2.5,...
%     'MarkerEdgeColor','b',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','APV 0.5JNaKmax hippocampus')
% ax=gca;
% xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ylabel('[Ca]_a(uM)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ytickformat('%.2f')
% xtickformat('%.1f')
% legend('FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',2)
% legend 'boxoff'
% %title('Astrocyte cortex','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','black')
% 
% %a = get(gca,'XTickLabel');
% %set(gca,'XTickLabel',a,'FontName','Times New Roman','fontsize',18','FontWeight','bold','LineWidth',2.5)
% ax.XAxis.FontSize = 12;
% ax.XAxis.FontWeight = 'bold';
% ax.XAxis.Color='black';
% ax.XAxis.LineWidth=2;
% ax.XAxis.FontName='Times new Roman';
% ax.YAxis.LineWidth = 2;
% ax.YAxis.FontWeight='bold';
% ax.YAxis.FontSize=12;
% ax.YAxis.FontName='Times new Roman';
% ax.YAxis.Color='black';
% ax.XLim=[0,60];
% ax.YLim=[0,8.1];
% xticks(0:10:60);
% yticks(0:2:8.1);
%  set(gca, 'box', 'off')
% hold off
