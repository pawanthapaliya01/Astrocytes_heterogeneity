% %load vkcortex.dat
% load vkcortex1.dat
% %load vkNMDAhipinak0p5.dat
% load vkhippocampus.dat
% load vk.dat
% load vkhippocampusWT.dat


%load Jsercacortex.dat
%load Jsercacortex1.dat
%load JsercaNMDAhipinak0p5.dat
load JsercaNMDAWT.dat
load JsercaNMDADAP.dat

load JsercahippNMDAWT.dat
load JsercahippNMDADAP.dat
%load JsercajnakreducedNMDA.dat

load JNAKkNMDAWT.dat
load JNAKkNMDADAP.dat

load JNAKkhippNMDAWT.dat
load JNAKkhippNMDADAP.dat


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

load NakNMDAWT.dat
load NakNMDADAP.dat

load NakhippNMDAWT.dat
load NakhippNMDADAP.dat

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

load CakNMDAWT.dat
load CakNMDADAP.dat

load CakhippNMDAWT.dat
load CakhippNMDADAP.dat









%subplot(2,3,1)
% 
% 
% plot(JNAKkNMDAWT(:,1)-min(JNAKkNMDAWT(:,1)),JNAKkNMDAWT(:,2)/1000,'-r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT cortex')
% 
% hold on   
% plot(JNAKkhippNMDAWT(:,1)-min(JNAKkhippNMDAWT(:,1)),JNAKkhippNMDAWT(:,2)/1000,'-k','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT hippocampus')
% 
% plot(JNAKkNMDADAP(:,1)-min(JNAKkNMDADAP(:,1)),JNAKkNMDADAP(:,2)/1000,':r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','APV cortex')
% plot(JNAKkhippNMDADAP(:,1)-min(JNAKkhippNMDADAP(:,1)),JNAKkhippNMDADAP(:,2)/1000,':k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','APV hippocampus')
% ax=gca;
% xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ylabel('JNaK(nA/um^2)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ytickformat('%.2f')
% xtickformat('%.1f')
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
% ax.YLim=[11.5,16];
% xticks(0:10:60);
% yticks(11:1:16);
%  set(gca, 'box', 'off')
% hold off
% % 
% 
% 
% 
% 
% 
% 
% 
% 
% % % 
% plot(JsercaNMDAWT(:,1)-min(JsercaNMDAWT(:,1)),JsercaNMDAWT(:,2),'-r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT cortex')
% 
% hold on   
% plot(JsercahippNMDAWT(:,1)-min(JsercahippNMDAWT(:,1)),JsercahippNMDAWT(:,2),'-k','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT hippocampus')
% % 
% plot(JsercaNMDADAP(:,1)-min(JsercaNMDADAP(:,1)),JsercaNMDADAP(:,2),':r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','APV cortex')
% plot(JsercahippNMDADAP(:,1)-min(JsercahippNMDADAP(:,1)),JsercahippNMDADAP(:,2),':k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','APV hippocampus')
% % plot(JsercajnakreducedNMDA(:,1),JsercajnakreducedNMDA(:,2),'--r','MarkerSize',2.5,...
% %     'MarkerEdgeColor','g',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
% %     'DisplayName','NMDAblocked cortex')
% % plot(JsercahippocampusNMDA(:,1),JsercahippocampusNMDA(:,2),'--k','MarkerSize',2.5,...
% %     'MarkerEdgeColor','b',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
% %     'DisplayName','NMDAblocked hip')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%axes('Position',[.7 .7 .2 .2])
%box on
%plot(JsercaNMDAWT(:,1)-min(JsercaNMDAWT(:,1)),JsercaNMDAWT(:,2),'-r')
% grid on;
% p = get(gca, 'Position');
% h = axes('parent', gcf, 'Position', [p(1)+0.2 p(2)+0.2 p(3)-0.2 p(4)-0.2]);
% hold(h); % <--- add this line
% plot(h, JsercaNMDAWT(:,1)-min(JsercaNMDAWT(:,1)),JsercaNMDAWT(:,2),'-r');
% plot(h, JsercahippNMDAWT(:,1)-min(JsercahippNMDAWT(:,1)),JsercahippNMDAWT(:,2),'-k');
% plot(h, JsercaNMDADAP(:,1)-min(JsercaNMDADAP(:,1)),JsercaNMDADAP(:,2),':r');
% plot(h, JsercahippNMDADAP(:,1)-min(JsercahippNMDADAP(:,1)),JsercahippNMDADAP(:,2),':k');
% set(h, 'Xlim', [5 10], 'Ylim', [12 16]);
% grid on;
% hold off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% ax=gca;
% xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ylabel('Jserca(pA/um^2)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% ytickformat('%.2f')
% xtickformat('%.1f')
% legend('FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',2)
% legend 'boxoff'
% % 
% % 
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
% ax.YLim=[0,16];
% xticks(0:10:60);
% yticks(0:2:16);
%  set(gca, 'box', 'off')
% hold off

% % 
% %subplot(2,3,3) % 
% % plot(NakNMDAWT(:,1),NakNMDAWT(:,2)/1000,'-r','MarkerSize',2.5,...
% %     'MarkerEdgeColor','r',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
% %     'DisplayName','WT cortex')
% % 
% % hold on   
% % plot(NakhippNMDAWT(:,1),NakhippNMDAWT(:,2)/1000,'-k','MarkerSize',2.5,...
% %     'MarkerEdgeColor','c',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
% %     'DisplayName','WT hippocampus')
% % 
% % plot(NakNMDADAP(:,1),NakNMDADAP(:,2)/1000,':r','MarkerSize',2.5,...
% %     'MarkerEdgeColor','r',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
% %     'DisplayName','APV cortex')
% % plot(NakhippNMDADAP(:,1),NakhippNMDADAP(:,2)/1000,':k','MarkerSize',2.5,...
% %     'MarkerEdgeColor','k',...
% %     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
% %     'DisplayName','APV hippocampus')
% % ax=gca;
% % xlabel('Time(s)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% % ylabel('[Na]_a(mM)','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','k')
% % ytickformat('%.2f')
% % xtickformat('%.1f')
% % legend('FontName','Times New Roman','FontSize',12,'FontWeight','bold','LineWidth',2)
% % legend 'boxoff'
% % %title('Astrocyte cortex','FontName','Times New Roman','FontSize',12,'FontWeight','bold','Color','black')
% % % 
% % %a = get(gca,'XTickLabel');
% % %set(gca,'XTickLabel',a,'FontName','Times New Roman','fontsize',18','FontWeight','bold','LineWidth',2.5)
% % ax.XAxis.FontSize = 12;
% % ax.XAxis.FontWeight = 'bold';
% % ax.XAxis.Color='black';
% % ax.XAxis.LineWidth=2;
% % ax.XAxis.FontName='Times new Roman';
% % ax.YAxis.LineWidth = 2;
% % ax.YAxis.FontWeight='bold';
% % ax.YAxis.FontSize=12;
% % ax.YAxis.FontName='Times new Roman';
% % ax.YAxis.Color='black';
% % ax.XLim=[90,160];
% % ax.YLim=[13,21];
% % xticks(90:10:160);
% % yticks(13:1:21);
% %  set(gca, 'box', 'off')
% % hold off
% 
% 
% 
% 
% 
% subplot(2,3,6)
% plot(CakNMDAWT(:,1),CakNMDAWT(:,2),'-r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT cortex')
% 
% hold on   
% plot(CakhippNMDAWT(:,1),CakhippNMDAWT(:,2),'-k','MarkerSize',2.5,...
%     'MarkerEdgeColor','c',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','WT hippocampus')
% 
% plot(CakNMDADAP(:,1),CakNMDADAP(:,2),':r','MarkerSize',2.5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','APV cortex')
% plot(CakhippNMDADAP(:,1),CakhippNMDADAP(:,2),'-k','MarkerSize',2.5,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[1 .6 .6]','LineWidth',2,...
%     'DisplayName','APV hippocampus')
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
% ax.XLim=[90,160];
% ax.YLim=[0,.45];
% xticks(90:10:160);
% yticks(0:.05:.45);
%  set(gca, 'box', 'off')
% hold off
