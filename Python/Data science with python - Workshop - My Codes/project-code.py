# -*- coding: utf-8 -*-
"""
Created on Wed Jul 11 13:38:02 2018

@author: Admin
"""

import numpy as np
from sklearn.neighbors import KNeighborsClassifier

 # Loading data
train_data = np.genfromtxt('F:/shorttrain.csv',delimiter=",")
images=train_data[:,1:]
digits=train_data[:,0]
X_test = np.genfromtxt('F:/mnist_test_nolabels.csv',delimiter=",")

# genrating Labels
labels  = 2*(digits>=5)-1 #conversion to binary classification problems

X_train = images
y_train = labels


from sklearn.svm import SVC
clf=SVC(C=1.0,kernel='rbf')

# Trining KNN
clf.fit(X_train,y_train) 

# Testing KNN
y_pred = clf.predict(X_test)



#print(np.mean(y_pred==y_test))
#np.savetxt('out.csv',y_pred)
