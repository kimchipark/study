# -*- coding: utf-8 -*-
"""
Created on Mon Oct 17 10:33:06 2022

@author: MYCOM
"""
#class Calculater [[ =============
class Calculater :
    x = 50
    y = 50
    def __init__(self) :
        print("생성자1")

    def __init__(self, x, y) :
        self.x = x
        self.y = y
        print("생성자2")
        
    def Add(self, x, y) :
        return  x + y + self.x
#class Calculater ]] =============    
    
a = Calculater(1, 2)
print(a.Add(10, 20))