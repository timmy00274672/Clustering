clear,clc
load('Sample.mat');

for i = 2:20
    cluster = MBSAS(Sample, sqrt(2), i );
    [silh] =silhouette(Sample,cluster);
    fprintf('Set Max class = %d, cluster : %d, (silh) = %3.4f\n\n',i , max(cluster),mean(silh));
end
