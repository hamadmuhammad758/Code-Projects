# -*- coding: utf-8 -*-
"""
Created on Thu Jul  5 19:19:26 2018

@author: Hamad-PC
"""
from math import sin,cos,atan2,sqrt,radians

def getdistance(phi_1,lambda_1,phi_2,lambda_2):
   # phi_1, lambda_1=38.9, -77.04
    #phi_2, lambda_2=14.93, -23.51#22.9083, -43.1964
    d_phi=phi_2-phi_1
    d_lambda=lambda_2-lambda_1
    phi_1,phi_2=radians(phi_1),radians(phi_2)
    lambda_1,lambda_2=radians(lambda_1),radians(lambda_2)
    d_phi,d_lambda=radians(d_phi),radians(d_lambda)
    a=sin(d_phi/2.0)**2+cos(phi_1)*cos(phi_2)*(sin(d_lambda/2.0)**2)
    b=2*atan2(sqrt(a),sqrt(1-a))
    R=6371
    d=R*b
    return d
    

45.41,38.9, -75.7,-77.04