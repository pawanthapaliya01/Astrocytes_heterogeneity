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

plot(x0dap,y0dap,'s','MarkerSize',5','MarkerEdgeColor','r','LineWidth', 2)
hold on
plot(tdap,y1dap,'-b','LineWidth', 2)
plot(t1dap,y3dap,'s','MarkerSize',5','MarkerEdgeColor','m','LineWidth', 2)
plot(t2dap,y4dap,'-g','LineWidth',2)
xlabel('time s')
ylabel('I/Imax')
legend('Experimental data','peak','experimental','steady','Location','northwest')
hold off