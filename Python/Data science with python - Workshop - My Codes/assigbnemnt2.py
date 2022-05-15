# -*- coding: utf-8 -*-
"""
Created on Tue Jul  3 11:42:01 2018

@author: Admin
"""
from punctuationsremoval import cleaner
from ceasor import encrypt,decrypt

a='hazm,ra.z'
a=cleaner(a)
print(a)
a=encrypt(3,a)
a=decrypt(3,a)

print(a)