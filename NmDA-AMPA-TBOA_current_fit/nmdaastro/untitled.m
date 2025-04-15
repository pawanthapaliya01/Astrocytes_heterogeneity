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
plot(x0past,y0past,'s','MarkerSize',5,'MarkerEdgeColor','r','LineWidth', 2)
hold on
%plot(t,y1)
plot(tast,y1ast','-b','LineWidth', 2)
plot(t0sast,y2ast,'s','MarkerSize',5,'MarkerEdgeColor','m','LineWidth', 2)
plot(tasast,y3ast,'-g','LineWidth',2)
%xlabel('time s')
%ylabel('I/Imax')
legend('Experimental data','peak current','experimental','Steady state current','Location','Northwest')