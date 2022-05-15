# -*- coding: utf-8 -*-
"""
Created on Tue Jul 10 10:50:51 2018

@author: Admin
"""

import numpy as np

b=np.random.uniform(-1,0,(100,2))
a=np.random.uniform(0,1,(100,2))
points=np.vstack((a,b))

y=np.random.randint(-1,1,(200))

l1=np.ones((100,1))
l2=-1*np.ones((100,1))

labels=np.vstack((l1,l2))
labels=labels.flatten()


from sklearn.neighbors import KNeighborsClassifier
knn = KNeighborsClassifier(n_neighbors=1)
knn.fit(points,labels) 

#Testing

#y_pred = knn.predict(X_test)

from matplotlib import pyplot as plt

plt.scatter(a[:,0],a[:,1])
plt.scatter(b[:,0],b[:,1])
plt.show()
