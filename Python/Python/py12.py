# -*- coding: utf-8 -*-
"""
Created on Mon Oct 17 09:41:22 2022

@author: MYCOM
"""

import py11 as p
import math
import random

#print(p.Add(1, 2))
#print(math.floor(3.1457))
#print(int(random.random() * 100))


rand = int(random.random() * 100 + 1)
print(rand)
life = 5
while True :
    if life == 0:
        print("GameOver!!")
        print("정답은 ", rand, "입니다!")
        break
    
    print("남은 기회 ", life)
    
    result = int(input("1~100까지의 숫자를 입력하세요 : "))
    
    if result < rand :
        print("UP!!")
        life -= 1
    elif result > rand :
        print("DOWN!!")
        life -= 1
    else :
        print("BINGO!!")
        break
    

