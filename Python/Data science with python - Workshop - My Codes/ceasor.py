# -*- coding: utf-8 -*-
"""
Created on Tue Jul  3 10:31:07 2018

@author: Muhammad Hamad
"""
import operator

import string
def cleaner(a):    
    #a="In cryptography, a Caesar cipher, also known as Caesar\'s cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of three, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of three, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar (100BC-44BC), who used it in his private correspondence."
    ans=''
    for i in a:
        if i not in string.punctuation :
            if i not in string.digits:
                ans=ans+i
    return ans


def decrypt(offset,a):
    c=0
    ans=''
    a=a.lower()
    while(c<len(a)):
        ans=ans+chr((((ord(a[c])-97-offset)%26))+97)
        c=c+1
    return ans

def encrypt(offset,a):
    c=0
    ans=''
    a=a.lower()
    while(c<len(a)):
        ans=ans+chr((((ord(a[c])-97+offset)%26))+97)
        c=c+1
    return ans

def breakCipher(a):
    a=a.lower()
    print('\nEncrypted Text: ',a)
    dict={}
    for i in a:
        if i in dict:
            dict[i]=dict[i]+1
        else:
            dict[i]=1 
    s = max(dict.items(), key=operator.itemgetter(1))[0]    
    shift=ord(s)-ord('e')
    print('Shift is of:',shift)
    print('\nDecrypted text: ',decrypt(shift,a))

if __name__=='__main__': 
    print (cleaner('hamad12,.sdada'))
    breakCipher(encrypt(17,cleaner('incryptographyacaesarcipheralsoknownascaesarsciphertheshiftciphercaesarscodeorcaesarshiftisoneofthesimplestandmostwidelyknownenryptiontechniquesitisatypeofsubstitutioncipherinwhicheachletterintheplaintextisreplacedbyalettersomefixednumberofpositionsdowntealphabetforexamplewithaleftshiftofthreedwouldbereplacedbyaewouldbecomebandsoonthemethodisnamedafterjuliuscaesarwhouseditinhispivatecorrespondence')))
   # print(decrypt(17,encrypt(17,'incryptographyacaesarcipheralsoknownascaesarsciphertheshiftciphercaesarscodeorcaesarshiftisoneofthesimplestandmostwidelyknownenryptiontechniquesitisatypeofsubstitutioncipherinwhicheachletterintheplaintextisreplacedbyalettersomefixednumberofpositionsdowntealphabetforexamplewithaleftshiftofthreedwouldbereplacedbyaewouldbecomebandsoonthemethodisnamedafterjuliuscaesarwhouseditinhispivatecorrespondence')))
    
    