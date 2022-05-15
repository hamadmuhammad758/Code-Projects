# -*- coding: utf-8 -*-
"""
Created on Thu Jul  5 14:21:28 2018

@author: Admin
"""

from classdistance import getdistance
import csv
import numpy as np

data=[]
with open('countries.csv') as cf:
    reader=csv.reader(cf)
    
    for row in reader:
        data.append(row[:2]+[float(v) for v in row[2:]])
    
    distance=np.zeros((len(data),len(data)))
    alldist=[]
    
    for row in range(0,len(data)):
            distance[row,col]=getdistance(data[row][2],data[row][3],data[col][2],data[col][3])
            distance[col,row]=distance[row,col]
            alldist.append(distance[row,col])
            
from matplotlib import pyplot as plt

plt.hist(alldist, bins=20)
plt.show()


       
#farthest apart capitals

t=(np.where(distance==np.max(distance)))

print('\nThe farthest apart capital have distance :',np.max(distance))
print(data[t[0][0]])
print(data[t[0][1]])

 
t=(np.where(distance==np.min(alldist)))

print('\nThe Closest capital have distance :', np.min(alldist))
print(data[t[0][0]])
print(data[t[0][1]])


c=np.sort(distance, axis=0)
c=c[:, [1]]
max_near_distance=np.max(c)
t=np.where(distance==max_near_distance)

print("\nMost isolated: ",)
print(data[t[0][1]])


#data.append(row[:2]+[float(v) for v in row[2:]])


for row in range(0,len(data)):     
    t=np.sort(distance[[row], :])
    t=np.where(distance==t[0,1])
    print(" **nearest** ",data[t[0][0]][1],' -- ',data[t[0][1]][1]) 
    t=np.sort(distance[[row], :])
    t=np.where(distance==t[0,240])
    print(" **farthest** ",data[t[0][0]][1],' -- ',data[t[0][1]][1])
    

x=np.random.rand(5,5)
x=x+x.T
idx=np.argmax(x,axis=0)
city=['A','b','c','d']
for i in range(0,len(city)):
    print (city[i],'-',city[idx])
'''
with open('names.csv', 'w') as csvfile:
    fieldnames = ['first_name', 'last_name']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

    writer.writeheader()
    writer.writerow({'first_name': 'Baked', 'last_name': 'Beans'})
    writer.writerow({'first_name': 'Lovely', 'last_name': 'Spam'})
    writer.writerow({'first_name': 'Wonderful', 'last_name': 'Spam'})
    
 '''