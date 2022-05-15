# -*- coding: utf-8 -*-
"""
Created on Tue Jul  3 14:43:36 2018

@author: Admin
"""
import string

CODE = {'A': '.-',     'B': '-...',   'C': '-.-.', 
        'D': '-..',    'E': '.',      'F': '..-.',
        'G': '--.',    'H': '....',   'I': '..',
        'J': '.---',   'K': '-.-',    'L': '.-..',
        'M': '--',     'N': '-.',     'O': '---',
        'P': '.--.',   'Q': '--.-',   'R': '.-.',
        'S': '...',    'T': '-',      'U': '..-',
        'V': '...-',   'W': '.--',    'X': '-..-',
        'Y': '-.--',   'Z': '--..',     

        '0': '-----',  '1': '.----',  '2': '..---',
        '3': '...--',  '4': '....-',  '5': '.....',
        '6': '-....',  '7': '--...',  '8': '---..',
        '9': '----.' 
        }
remorse=dict(zip(CODE.values(),CODE.keys()))


def tomorse(a):
    a=a.upper()
    ans=''
    for i in a:
        ans=ans+' '+CODE[i]
    return ans
    

def frommorse(a):
    a=a.split()
    ans=''
    for i in a:
        ans=ans+remorse[i]
    return ans

c=tomorse('ABC') 
print(c)
print(frommorse(c))