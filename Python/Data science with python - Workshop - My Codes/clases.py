# -*- coding: utf-8 -*-
"""
Created on Thu Jul  5 11:52:31 2018

@author: Admin
"""

class Rectangle:
    def __init__(self,l,w):
        self.length=l
        self.width=w
    def area(self):
        return self.length*self.width
    
    
r1=Rectangle(4,3)
print(r1.area())
    