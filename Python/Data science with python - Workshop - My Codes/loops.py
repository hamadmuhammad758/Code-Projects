# -*- coding: utf-8 -*-
"""
Created on Mon Jul  2 13:48:23 2018

@author: Admin
"""
import random
from math import sqrt,pi 

def fun():
    inside=0
    a=0
    app={}
    while a<100000:
       a=a+1
       if a%100==0:
           app[a]=abs(pi-4*(inside/a))
       
       x=random.uniform(-1,1)
       y=random.uniform(-1,1)
       if sqrt(x**2+y**2)<=1:
               inside=inside+1
               
'''
print (inside)
pii=4*(inside/a)
print(pi)

import matplotlib.pyplot as plt
import numpy as np

y = app.values()
t = app.keys()
plt.plot(t,y) # t and y can be python lists or numpy arrays
plt.xlabel('t')
plt.ylabel('y')
pylab.ylim([0,10])
plt.grid()
plt.legend()


plt.hist(np.random.random(1000)); plt.show()
'''