# -*- coding: utf-8 -*-
"""
Created on Mon Jul  2 11:32:44 2018

@author: Admin
"""
import math

def dist(x1,x2,y1,y2):
    d=math.sqrt((x2-x1)**2 +(y2-y1)**2)
    return d
     
if __name__=='__main__':
    dist(1,2,3,4)