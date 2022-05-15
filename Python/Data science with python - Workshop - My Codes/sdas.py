# -*- coding: utf-8 -*-
"""
Created on Tue Jul  3 10:31:07 2018

@author: Admin
"""

def bound(value, low=97, high=122):
     diff = high - low
     return (((value - low) % diff) + low)


def decrypt(offset,a):
    c=0
    ans=''
    a=a.lower()
    while(c<len(a)):
        ans=ans+chr((bound(ord(a[c])-offset)))
        c=c+1
    return ans

def encrypt(offset,a):
    c=0
    ans=''
    a=a.lower()
    while(c<len(a)):
        ans=ans+chr((bound(ord(a[c])+offset)))
        c=c+1
    return ans


if __name__=='__main__': 
    print(encrypt(3,'hamadz'))
    print(decrypt(3,encrypt(3,'hamasdadsadsaddzsaasd')))