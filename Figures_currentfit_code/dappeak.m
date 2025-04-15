clc
clear off

load r100.dat
load r3.dat
load r1.dat
% peak
y1p=max(r1(:,2));
dat=r3(:,2);

y2p=max(r3(:,2));
y3p=max(r100(:,2));
xp=[0.1;3.0;100];
yp=[y1p;y2p;y3p]/y3p;


y1sg1=0.1784;
y2sg3=0.5109;
y3sg100=0.598;
xs=[0.1;3.0;100];
ys=[y1sg1;y2sg3;y3sg100]/y3sg100;


semilogx(xp,yp,'r-o','MarkerSize',5,'MarkerEdgecolor','r','LineWidth',2)

hold on
semilogx(xs,ys,'m-o','Linewidth',2)
xlabel('Glutamate Concentration uM')
ylabel('I/Imax')
legend('peak','steady','location','northwest')

hold off

