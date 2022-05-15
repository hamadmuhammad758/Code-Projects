# -*- coding: utf-8 -*-
"""
Created on Wed Jul  4 12:07:18 2018

@author: Admin
"""
import numpy as np

str="target neutralized"

a=np.array([[3,3],[2,5]])
x=np.array([[],[]])
for i in range(0,len(str)-1):
    n=np.array([[ord(str[i])],[ord(str[i+1])]])
    x=np.hstack((x,n))
    
a=a.dot(x)%251

ff=''

for i in a:
    for j in i:
        ff=ff+chr(int(j))
print(ff)