load Jtbocortex.dat
load Jtbohippocampus.dat
plot(Jtbocortex(:,1),Jtbocortex(:,2),'DisplayName','Cortex')
hold on
plot(Jtbohippocampus(:,1),Jtbohippocampus(:,2),'DisplayName','Hippocampus')
xlabel('Time (s)')
ylabel('TBOA (pA/um^2)')
legend("show")