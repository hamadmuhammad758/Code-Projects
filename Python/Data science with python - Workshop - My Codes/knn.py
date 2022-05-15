# -*- coding: utf-8 -*-
"""
Created on Tue Jul 10 11:14:44 2018

@author: Admin
"""

#Fitting/ Training

from sklearn.neighbors import KNeighborsClassifier
knn = KNeighborsClassifier(n_neighbors=1)
knn.fit(X_train,y_train) 

#Testing

y_pred = knn.predict(X_test)