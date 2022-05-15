# -*- coding: utf-8 -*-
"""
Created on Thu Jul 12 08:24:50 2018

@author: Admin
"""

import numpy as np
from sklearn.neighbors import KNeighborsClassifier

 # Loading data
train_data = np.genfromtxt('F:/mnist_train.csv',delimiter=",")
images=train_data[:,1:]
digits=train_data[:,0]
X_test = np.genfromtxt('F:/mnist_test_nolabels.csv',delimiter=",")

# genrating Labels
labels  = 2*(digits>=5)-1 #conversion to binary classification problems

X_train = images
y_train = labels

# Trining KNN


from sklearn.svm import SVC
knn=SVC(C=1.0,kernel='rbf')
knn.fit(X_train,y_train) 
# Testing KNN
y_pred = knn.predict(X_test)
#plotit(X_test,y_test,y_pred)
# Testing KNN
np.savetxt('out.csv',y_pred)