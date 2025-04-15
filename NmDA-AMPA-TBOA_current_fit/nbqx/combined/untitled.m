data1amp=readtable('ta0pamp.txt');
data0amp=readtable('tapamp.txt');
data2amp=readtable('t0samp.txt');
data3amp=readtable('tasamp.txt');
x0pamp=data1amp{:,1};
y0pamp=data1amp{:,2};
tamp=data0amp{:,1};
y1amp=data0amp{:,2};
t0samp=data2amp{:,1};
y2amp=data2amp{:,2};
tasamp=data3amp{:,1};
y3amp=data3amp{:,2};
%%%%%%%%%%%%%%%%%%
data1dap=readtable('t0pdap.txt');
data0dap=readtable('t1pdap.txt');
data2dap=readtable('t0sdap.txt');
data3dap=readtable('t1sdap.txt');
x0dap=data1dap{:,1};
y0dap=data1dap{:,2};
tdap=data0dap{:,1};
y1dap=data0dap{:,2};
t1dap=data2dap{:,1};
y3dap=data2dap{:,2};
t2dap=data3dap{:,1};
y4dap=data3dap{:,2};

%%%%%%%%%%%%%%%%%%%%%%%
data1ast=readtable('t0past.txt');
data0ast=readtable('t1past.txt');
data2ast=readtable('t0sast.txt');
data3ast=readtable('t1sast.txt');
x0past=data1ast{:,1};
y0past=data1ast{:,2};
tast=data0ast{:,1};
y1ast=data0ast{:,2};
t0sast=data2ast{:,1};
y2ast=data2ast{:,2};
tasast=data3ast{:,1};
y3ast=data3ast{:,2};
figure(1)
subplot(2,2,1)
plot(x0pamp,y0pamp,'s','MarkerSize',5,'MarkerEdgeColor','r','LineWidth', 2)
hold on
%plot(t,y1)
plot(tamp,y1amp,'-b','LineWidth', 2)
plot(t0samp,y2amp,'s','MarkerSize',5,'MarkerEdgeColor','m','LineWidth', 2)
plot(tasamp,y3amp,'-g','LineWidth',2)
xlabel('time s')
ylabel('I/Imax')
legend('Experimental data','peak current','experimental',...
    'Steady state current','Location','Northwest')
ttl2=('Glutamate mediated ampa current ratio for the application of 1000 uM glutamate for 2 second');
title(ttl2,'FontWeight','bold', 'FontSize',12, 'FontName','Times New Roman');
subplot(2,2,2)
plot(x0dap,y0dap,'s','MarkerSize',5','MarkerEdgeColor','r','LineWidth', 2)
hold on
plot(tdap,y1dap,'-b','LineWidth', 2)
plot(t1dap,y3dap,'s','MarkerSize',5','MarkerEdgeColor','m','LineWidth', 2)
plot(t2dap,y4dap,'-g','LineWidth',2)
xlabel('time s')
ylabel('I/Imax')
legend('Experimental data','peak','experimental',...
    'steady','Location','northwest')
ttl1 = sprintf('Glutamate mediated NMDA current ratio for the application of \n100 uM glutamate for 2 second');
title(ttl1,'FontWeight','bold', 'FontSize',12, 'FontName','Times New Roman');
subplot(2,2,3)
plot(x0past,y0past,'s','MarkerSize',5,'MarkerEdgeColor','r','LineWidth', 2)
hold on
%plot(t,y1)
plot(tast,y1ast','-b','LineWidth', 2)
plot(t0sast,y2ast,'s','MarkerSize',5,'MarkerEdgeColor','m','LineWidth', 2)
plot(tasast,y3ast,'-g','LineWidth',2)
xlabel('time s')
ylabel('I/Imax')
legend('Experimental data','peak current','experimental',...
    'Steady state current','Location','Northwest')
ttl = sprintf('NMDA mediated Astrocytic NMDA current ratio for the \napplication of 10 uM NMDA for 2s');
title(ttl,'FontWeight','bold', 'FontSize',12, 'FontName','Times New Roman');


