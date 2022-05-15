# -*- coding: utf-8 -*-
"""
Created on Tue Jul 10 14:44:59 2018

@author: Admin
"""

import numpy as np
from sklearn.neighbors import KNeighborsClassifier
#from heatmap import plotit 

 # Loading data
train_data = np.genfromtxt('F:/mnist_train.csv',delimiter=",")
images=train_data[:,0:]
digits=train_data[:,0]

li=[]
#for i in range(100,230):
    # genrating Labels
labels = 2*(digits>=5)-1
Ntrain = 15000
mtrain = 30000 
#Spliting into train and test
X_train = images[0:Ntrain,:mtrain]
y_train = labels[0:Ntrain]

X_test = images[Ntrain:,:mtrain]
y_test = labels[Ntrain:mtrain]

'''
# Trining KNN
knn = KNeighborsClassifier(n_neighbors=1)
knn.fit(X_train,y_train) 


# Testing KNN
y_pred = knn.predict(X_test)
print(np.mean(y_pred==y_test))


knn = KNeighborsClassifier(n_neighbors=1)
knn.fit(X_test,y_test) 
'''

from sklearn.svm import SVC
knn=SVC(C=1.0,kernel='rbf')

knn.fit(X_test,y_test) 
#plotit(X_test,y_test,y_pred)
# Testing KNN

y_pred = knn.predict(X_train)
print(np.mean(y_pred==y_train))

'''
knn.fit(X_train,y_train) 
#plotit(X_test,y_test,y_pred)
# Testing KNN
y_pred = knn.predict(X_test)
print(np.mean(y_pred==y_test))

#li.append(np.mean(y_pred==y_test))

#plotit(X_test,y_test,y_pred)

import matplotlib.pyplot as plt
plt.plot(li)
'''