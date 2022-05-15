# -*- coding: utf-8 -*-
"""
Created on Wed Jul  4 14:16:05 2018

@author: Admin
"""

import matplotlib.pyplot as plt
import numpy as np

t = np.linspace(0,1,100) 
y = np.sin(2*np.pi*2*t)
plt.plot(t,y) # t and y can be python lists or numpy arrays
plt.xlabel('t')
plt.ylabel('y')
plt.grid()
plt.legend()


plt.hist(np.random.random(1000)); plt.show()


