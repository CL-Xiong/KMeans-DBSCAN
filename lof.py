# -*- coding: utf-8 -*-
"""
Created on Thu Nov 26 12:52:46 2015

@author: MaGesh
"""

import numpy as np
from sklearn.neighbors import DistanceMetric


#k value with respect to min distance value
k = 100
#dataset
data=np.genfromtxt('F:\Fall 2015\Data Mining\Programming Assignments\PA2_data.txt',dtype=float)
distanceMeasure = DistanceMetric.get_metric('euclidean').pairwise(data)


knn = np.argsort(distanceMeasure, axis=1)[:,1 : k + 1]
radius = np.linalg.norm(data - data[knn[:, -1]], axis = 1)

#reachability distance
reachability_Distance = []
for i in range(knn.shape[0]):
    reachability_Distance.append(np.mean(np.maximum(distanceMeasure[i, knn[i]], radius[knn[i]])))

rho = 1. / np.array(reachability_Distance)
lof_score = np.sum(rho[knn], axis = 1)/ np.array(rho, dtype = np.float16)
lof_score *= 1./k
np.savetxt('F:\Fall 2015\Data Mining\Programming Assignments\outputh.txt',lof_score,newline='\n')