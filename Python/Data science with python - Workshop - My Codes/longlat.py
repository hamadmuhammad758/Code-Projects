# -*- coding: utf-8 -*-
"""
Created on Mon Jul  2 11:46:30 2018

@author: Admin
"""

import math
import numpy

def dist(y1,y2,o1,o2):
    y1=math.radians(y1)
    y2=math.radians(y2) #lat of isl
    o1=math.radians(o1)
    o2=math.radians(o2) #long of isl
    r=6371
    dd=2*r*numpy.arcsin(math.sqrt(((math.sin(o2-o1)**2)+math.cos(o1)*math.cos(o2)*(math.sin(y2-y1)**2))))
    return dd

if __name__=='__main__':
    print('Result: ', dist(45.41,38.9, -75.7,-77.04))

'''

    y1=math.radians(55.7558)
    y2=math.radians(33.6844) lat of isl
    o1=math.radians(37.6173)
    o2=math.radians(73.0479) long of isl
  

'''