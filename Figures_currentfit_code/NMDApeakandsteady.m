lc
close all
peak=[0.1103;0.2237;0.4566;0.76;0.8047;0.882]/0.882;
steady=[0.076;0.1909;0.3442;0.456;0.485;0.548]/0.548;
glu=[0.03;0.1;0.3;1;10;100];
semilogx(glu,peak,'r-o','MarkerSize',5,'MarkerEdgecolor','r','LineWidth',2)
hold on
semilogx(glu,steady,'m-o','Linewidth',2)
xlabel('Glutamate Concentration uM')
ylabel('I/Imax')
legend('peak','steady','location','northwest')
hold off