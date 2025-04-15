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
plot(x0pamp,y0pamp,'s','MarkerSize',5,'MarkerEdgeColor','r','LineWidth', 2)
hold on
%plot(t,y1)
plot(tamp,y1amp,'-b','LineWidth', 2)
plot(t0samp,y2amp,'s','MarkerSize',5,'MarkerEdgeColor','m','LineWidth', 2)
plot(tasamp,y3amp,'-g','LineWidth',2)
xlabel('time s')
ylabel('I/Imax')
legend('Experimental data','peak current','experimental','Steady state current','Location','Northwest')