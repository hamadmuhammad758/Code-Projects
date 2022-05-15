# -*- coding: utf-8 -*-
"""
Created on Thu Jul 12 10:01:12 2018

@author: Admin
"""

from matplotlib import pyplot as plt
from sklearn.decomposition import PCA
import numpy as np
a=np.random.uniform(0,1,(100))
b=np.random.uniform(0,1,(100))
b=0.1*b
b=a+b

plt.scatter(a,b)
a=np.vstack((a,b)).T


plt.figure()
plt.show()
pca =PCA()
pca.fit(a)
a=pca.transform(a)
plt.scatter(a[:,0],a[:,1])
plt.show()
