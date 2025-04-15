
i =1;
figure(1)
subplot(2,2,i)

plot(Freq_0k4 {1,i}(1,:), Moment_0k4 {1,i}(:,1),'k');
plot(Freq_1k6 {1,i}(1,:), Moment_1k6 {1,i}(:,1),'r');
plot(Freq_3k2 {1,i}(1,:), Moment_3k2 {1,i}(:,1),'m');
plot(Freq_4k8 {1,i}(1,:), Moment_4k8 {1,i}(:,1),'b');
xlim([0 10]);
legend('0,4°','1,6°','3,2°','4,8°');
legend('boxoff');
xlim([0 10]);
grid on;
p = get(gca, 'Position');
h = axes('Parent', gcf, 'Position', [p(1)+0.05 p(2)+0.2 p(3)-0.25 p(4)-0.2]);
hold(h); % <--- add this line
plot(h, Freq_0k4 {1,i}(1,:), Moment_0k4 {1,i}(:,1),'k');
plot(h, Freq_1k6 {1,i}(1,:), Moment_1k6 {1,i}(:,1),'r');
plot(h, Freq_3k2 {1,i}(1,:), Moment_3k2 {1,i}(:,1),'m');
plot(h, Freq_4k8 {1,i}(1,:), Moment_4k8 {1,i}(:,1),'b');
set(h, 'Xlim', [0.9 1.1], 'Ylim', [4 5.2]);
grid on;
hold off;
