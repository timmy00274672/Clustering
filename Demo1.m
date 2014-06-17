clear,clc
load('Sample.mat');
opts = statset('Display','iter');
cluster1 = kmeans(Sample,3,'distance','cityblock','start',mean1,'Options',opts);
[silh] =silhouette(Sample,cluster1,'cityblock');
fprintf('The first one gets mean(silh) = %3.4f\n\n', mean(silh));
cluster2 = kmeans(Sample,3,'distance','cityblock','start',mean2,'Options',opts);
[silh2] =silhouette(Sample,cluster2,'cityblock');
mean(silh2);
fprintf('The second one gets mean(silh) = %3.4f\n', mean(silh2));