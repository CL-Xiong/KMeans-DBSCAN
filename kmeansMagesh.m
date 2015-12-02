load('data.txt');
clusterKMean = kmeans(data,10);

clusterK1 = data(clusterKMean == 1, :);
clusterK2 = data(clusterKMean == 2, :);
clusterK3 = data(clusterKMean == 3, :);
clusterK4 = data(clusterKMean == 4, :);
clusterK5 = data(clusterKMean == 5, :);
clusterK6 = data(clusterKMean == 6, :);
clusterK7 = data(clusterKMean == 7, :);
clusterK8 = data(clusterKMean == 8, :);
clusterK9 = data(clusterKMean == 9, :);
clusterK10 = data(clusterKMean == 10,:);

figure;

plot(clusterK1(:,1),clusterK1(:, 2), 'b*'); hold all
plot(clusterK2(:,1),clusterK2(:, 2), 'g*')
plot(clusterK3(:,1),clusterK3(:, 2), 'r*')
plot(clusterK4(:,1),clusterK4(:, 2), 'b+')
plot(clusterK5(:,1),clusterK5(:, 2), 'g+')
plot(clusterK6(:,1),clusterK6(:, 2), 'r+')
plot(clusterK7(:,1),clusterK7(:, 2), 'b-')
plot(clusterK8(:,1),clusterK8(:, 2), 'g-')
plot(clusterK9(:,1),clusterK9(:, 2), 'r-')
plot(clusterK10(:,1),clusterK10(:, 2), '*')



IDX(IDX==0) = 15;
rand = RandIndex(clusterKMean,IDX)
