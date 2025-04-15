y = [2 4 3];
b = bar(y);
hold on
h=bar(y(1:1));
%set(h,'EdgeColor', 'k','LineWidth', 2);

h2=bar(y(2:2));
set(b,'EdgeColor', 'r','LineWidth', 2);