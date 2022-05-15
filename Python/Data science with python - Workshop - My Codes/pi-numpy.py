# -*- coding: utf-8 -*-
"""
Created on Thu Jul  5 09:35:03 2018

@author: Admin
"""
import numpy  as np
c=0

#a=np.where(np.sum((np.random.uniform(-1,1,(6,2)))**2,axis=1)<1,c=c+1)

a=4*((np.sum(np.where(np.sqrt(np.sum((np.random.uniform(-1,1,(100000,2)))**2,axis=1))<1,1,0)))/100000)

    

     