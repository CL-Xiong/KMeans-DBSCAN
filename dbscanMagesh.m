data=load('data.txt'); 

eps=37;
MinPts=80;

[IDX, isnoise]=DBSCAN(data,eps,MinPts);

PlotClusterinResult(data, IDX);
title(['DBSCAN Clustering (eps = ' num2str(eps) ', MinPts = ' num2str(MinPts) ')']);
