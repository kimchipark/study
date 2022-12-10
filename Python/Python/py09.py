# -*- coding: utf-8 -*-
"""
Created on Mon Oct 17 09:07:46 2022

@author: MYCOM
"""
#함수 선언방법!
def add(x = 11, y = 22) :
    print("x :", x)
    print("y :", y)
    return x + y

a = add(y = 33)
print(a)
a = add(1, 2)
print(a)

def PrintMul(x) :
    for y in range(1, 10) :
        print("%d * %d = %d" %(x, y, x*y))
        
for k in range(1, 10) :
    PrintMul(k)
    print("=" * 10)
    
a = add(y = 10, x = 20)
print(a)

def IsOdd(x = 3) :
    if x % 2 == 1 :
        return True
    else :
        return False
    
if IsOdd() == True :
    print("홀수입니다")
else :
    print("짝수입니다")