# -*- coding: utf-8 -*-
"""
Created on Tue Jul 10 22:44:12 2018

@author: afsar
"""

import numpy as np
import matplotlib.pyplot as plt

def plotit(X,Y=None,clf=None, markers = ('s','o'), hold = False, transform = None):
    """
    Just a function for showing a data scatter plot and classification boundary
    of a classifier clf
        X: nxd data numpy array of n examples with d-dimensions
        Y: n dmensional vector of labels (binary, +1/-1), optional
        clf: classifier object (with clf.decision_function or clf.predict_proba implementation)        
    """
    minx, maxx = np.min(X[:,0]), np.max(X[:,0])
    miny, maxy = np.min(X[:,1]), np.max(X[:,1])
    extent = [minx,maxx,miny,maxy]
    if clf is not None:        
        npts = 50
        xx, yy = np.meshgrid(np.linspace(minx, maxx, npts),np.linspace(miny, maxy, npts))       
        t = np.c_[xx.ravel(), yy.ravel()]
        if transform is not None:
            t = transform(t)
        try:            
            z = clf.decision_function(t)
        except AttributeError:
            z = 2*clf.predict_proba(t)[:,1]-1
        z = z.reshape(xx.shape)
        plt.contour(z,[-1.0,0.0,1.0],linewidths = [2],colors=('b','k','r'),extent=extent, label='f(x)=0', antialiased = True)
        plt.pcolormesh(xx, yy, z, cmap=plt.cm.Purples, vmin = -2, vmax = +2, shading = 'gouraud'); plt.colorbar()        
    if Y is not None:
        plt.scatter(X[Y==1,0],X[Y==1,1],marker = markers[0], c = 'y', s = 30)
        plt.scatter(X[Y==-1,0],X[Y==-1,1],marker = markers[1],c = 'c', s = 30)
        plt.xlabel('$x_1$')
        plt.ylabel('$x_2$')        
    else:
        plt.scatter(X[:,0],X[:,1],marker = '.', c = 'k', s = 5)
    plt.axis(extent)
    if not hold:
        plt.grid()
        plt.show()
#Let's generate some training data

Xp = 1+np.random.randn(100,2)
Xn = -1-np.random.randn(100,2)
X = np.vstack((Xp,Xn))
Y = np.array([1]*Xp.shape[0]+[-1]*Xn.shape[0])

from sklearn.neighbors import KNeighborsClassifier
clf = KNeighborsClassifier(n_neighbors=5)


clf.fit(X[0:50,:],Y[:50])
y_pred = clf.predict(X[50:,:])

print(np.mean(y_pred==Y[:50]))
plotit(X,Y, clf)

