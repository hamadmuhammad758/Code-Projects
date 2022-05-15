# -*- coding: utf-8 -*-
"""
Created on Thu Jul  5 11:20:32 2018

@author: Admin
"""

from scipy.io import wavfile
from matplotlib import pyplot as plt
import numpy as np


(fs,x)=wavfile.read('slides/zero_1.wav')

x=np.array(x,dtype='int64')

a=(np.array(x*x))

energy=int(np.sum(a))

print('Energy: ',energy)

x=x[abs(x)>3000]

#cox=np.corrcoef(x,y)
# 3To localize here means: to find where the signal is mostly concentrated, and with what precision


plt.plot(x)
plt.xlabel('samples')
plt.ylabel('x')
plt.show(x)
