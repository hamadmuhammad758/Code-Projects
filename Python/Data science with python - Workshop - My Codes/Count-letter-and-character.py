# -*- coding: utf-8 -*-
"""
Created on Tue Jul  3 22:14:35 2018

@author: Hamad-PC
"""
import operator
#def countletterandcharacter(a):
a='اس پنڈ دی بھوئیں نوں لوئر باری دوآب دے سجے پاسےاوں نکلن آلی پہلی شاخ نہر ، گوگیرہ برانچ نہر پانی دیندی اے جسنال ایتھے دیاں زمیناں آباد ہوئیاں،اس لئی اس پنڈ ناں دے نال جی  تیراں ایل ضلع ساہیوال دا اک پنڈ اے جہڑا لوئر باری دوآب نہر دی سجے پاسےاوں نکلن آلے اک نکے لنڈو نہر ایل اتے پیندا اے '

#f = open('F:\punjabi-content.txt', 'r+', encoding='utf-8')

f = open('F:\punjabi-content.txt', 'r+', encoding='utf-8')

worddict={}
chdict={}
for line in f:
    lis=line.split()
    print(lis)
    for i in lis:
        for j in i:
            if j in chdict:
                chdict[j]=chdict[j]+1
            else:
                chdict[j]=1
                
        if i in worddict:
            worddict[i]=worddict[i]+1
        else:
            worddict[i]=1 
            
    s = max(worddict.items(), key=operator.itemgetter(1))[0]  
    s = max(chdict.items(), key=operator.itemgetter(1))[0]    
    
f.close()

#with open (myfile.txt) as file 