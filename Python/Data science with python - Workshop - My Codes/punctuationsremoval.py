# -*- coding: utf-8 -*-
"""
Created on Tue Jul  3 11:02:27 2018

@author: Admin
"""

import string
def cleaner(a):    
    #a="In cryptography, a Caesar cipher, also known as Caesar\'s cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of three, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of three, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar (100BC-44BC), who used it in his private correspondence."
    ans=''
    for i in a:
        if i not in string.punctuation :
            if i not in string.digits:
                ans=ans+i
    return ans

if __name__=='__main__': 
 print (cleaner('hamad12,.sdada'))