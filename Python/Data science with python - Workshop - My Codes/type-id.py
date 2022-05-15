# -*- coding: utf-8 -*-
"""
Created on Tue Jul  3 09:26:11 2018

@author: Admin
"""

a='kamran'
print(a[0:3])
b=a
print(type(a))
print(type(b))


print(id(a))
print(id(b))
a='ali'
print(a[0])


print(type(a))
print(type(b))


print(id(a))
print(id(b))

#print(dir(a))

s=('gr','mn') #tuples
#s[0]='ab'
print (s)

an=['cat','dog'] #list
an[0]='parrot'

print(an)

a={'aniq','hani','ali'} #set ,distinct elements , not support indexing 

print(a)

a={'kamran':'1','ali':'2'}

print(a['ali'])    
