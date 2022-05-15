# -*- coding: utf-8 -*-
"""
Created on Tue Jul  3 19:20:24 2018

@author: Hamad-PC
"""

import wikipedia as wiki
import operator
from punctuationsremoval import cleaner


#sys.stdout = codecs.getwriter('utf8')(sys.stdout.buffer)


wiki.set_lang("en") #Setting the language to Urdu
#All language codes available at: http://meta.wikimedia.org/wiki/List_of_Wikipedias

def getWikiPage(s):
    """
    This function returns the page associated with a given Wikipedia title string.
    If there are multiple pages associated with a title string, it picks the
    first one in the disambiguation of that page.
    Input: s (Wikipedia page title)
    Return: Wikipedia Python API page object
    """
    try:
        p = wiki.page(s)
    except wiki.exceptions.DisambiguationError as disambiguation:
    #This exception is raised if there are multiple Wikipedia pages associated with the given title
        print (disambiguation) #We display the titles of all the pages
        print ("Warning: Picking",disambiguation.options[0]) #But we pick the first one
        s = disambiguation.options[0] #Like this!
        p = wiki.page(s)
    return p
#s = 'کمپیوٹر پروگرام' #Use wiki.random() to Pick a random title from Wikipedia.
    

worddict={}
chdict={}
for i in range(50):
    s=wiki.random()
    #s='List of compositions by Franz Schubert'
    print( "The string for wikipedia is:",s)
    try:
        p=getWikiPage(s)
    except Exception as e:
    #Just in case there are any unexpected errors
        print ('Failed to access the page associated with \'',s,'\'. The error returned is: ',e)
    else: #If everything goes well, print stuff!
        print ('*'*10,"Title",p.title,'*'*10+'\n')
        print ('*'*10,"id",p.pageid,'*'*10+'\n')
        print ('*'*10,"Summary",'*'*10+'\n',p.summary)
        print ('*'*10,"Content",'*'*10+'\n',p.content)
        g=cleaner(p.content)
        print(g)       
    
    
    g=g.split()
    for i in g:
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
    
