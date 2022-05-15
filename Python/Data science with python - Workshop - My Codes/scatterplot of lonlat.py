# -*- coding: utf-8 -*-
"""
Created on Mon Jul  9 13:58:13 2018

@author: Admin
"""

import csv
import numpy as np
from classdistance import getdistance

data=[]
with open('countries.csv') as cf:
    reader=csv.reader(cf)
    
    for row in reader:
        data.append(row[:2]+[float(v) for v in row[2:]])
    distance=np.zeros((len(data),len(data)))
    alldist=[]
    for row in range(0,len(data)):
        for col in range(row+1,len(data)):
            distance[row,col]=getdistance(data[row][2],data[row][3],data[col][2],data[col][3])
            distance[col,row]=distance[row,col]
            alldist.append(distance[row,col])
            
d=np.array(data)
lats=d[:,2]
longs=d[:,3]

lats=lats.astype(float)
longs=longs.astype(float)

from matplotlib import pyplot as plt

plt.scatter(lats,longs)
plt.xlabel('latitude')
plt.ylabel('longitude')
C=d[:,0]
for label,x,y in zip(C,lats,longs):
     plt.annotate(
     label,
     xy=(x,y) , xytext=(-20,20),
     textcoords='offset points' , ha ='right', va='bottom' ,
     bbox=dict(boxstyle='round,pad=0.5', fc='yellow', alpha=0.5),
     arrowprops=dict(arrowstyle='->',connectionstyle='arc3,rad=0'))
     
plt.show()
plt.figure()
from scipy.cluster.hierarchy import dendrogram,linkage
z=linkage(distance,method='ward')
c=d[:,0]
dendrogram(z,labels=c,leaf_rotation=90, leaf_font_size=8)
