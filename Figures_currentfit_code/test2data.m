clc
close all
load test2data.csv
o=test2data(:,2);
y=-o;
F=@(b,o) b*o%*0.83*(80)/(1+.33*(0.7*(80)));
b0=[1.5]
b=lsqcurvefit(F,b0,o,y);

plot(o,F(b,o))