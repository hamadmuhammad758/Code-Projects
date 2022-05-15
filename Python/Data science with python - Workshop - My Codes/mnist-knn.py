# -*- coding: utf-8 -*-
"""
Created on Tue Jul 10 11:48:23 2018

@author: Admin
"""



import csv
import numpy as np
from matplotlib import pyplot as plt

points=np.zeros((1,784))
labels=np.zeros((1,1))
testpoints=np.zeros((1,784))
testlabels=np.zeros((1,1))
count=0
with open('F:/shorttrain.csv') as cf:
    reader=csv.reader(cf)
    for row in reader:       
        if count==2600:
            break
        elif count<139:            
            row=np.asarray(row,dtype=np.float)
            points=np.vstack((points,np.array(row[1:])))
            labels=np.vstack((labels,row[0]))
        elif count>=139:
            row=np.asarray(row,dtype=np.float)
            testpoints=np.vstack((testpoints,np.array(row[1:])))
            testlabels=np.vstack((testlabels,row[0]))        
        count+=1  

testpoints=testpoints[1:,:] 
testlabels=testlabels[1:,:] 
points=points[1:,:] 
labels=labels[1:,:] 
   
labels=labels.flatten()
testlabels=testlabels.flatten()

from sklearn.neighbors import KNeighborsClassifier
knn = KNeighborsClassifier(n_neighbors=1)
knn.fit(points,labels) 
    
iter=0
count=0   
li=[] 
for row in testpoints:
    iter+=1
    res=knn.predict(([row]))
    li.append(''+repr(res[0])+'--'+repr(testlabels[count]))
    if res[0]==testlabels[count]:
        count+=1
        
        
print ('accuracy=',count/iter)        
'''
row1 = next(reader)
row1=np.asarray(row1,dtype=np.float)
arr=np.array(row1[1:]).reshape(28,28)
#plt.imshow(arr)
'''