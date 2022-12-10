# -*- coding: utf-8 -*-
# 한줄 주석.
"""
여러줄 주석
여러줄 주석여러줄 주석
ㅇㅇ
"""
x = 10
y = 20
z = x + y
print(z)
print(type(z))

x = 3.14
y = 1.23
z = x + y
print(z)
print(type(z))

name = "홍길동"
print(name)
print(type(name))

name = '홍길동'
print(name)

name = "홍길동" + "성춘향"
print(name)

name = "홍길동" * 10
print(name)

print(1,2)
print(1,2,3,4, sep='@')
print("aa", "bb", "cc", sep='###')

print(1,2,3,4, end='!!!')
print("aa", "bb", "cc", sep='###', end='^^')
print("")

name = "홍길동"
age = 18

print("이름은 %s이고, 나이는 %d 입니다" %(name, age))

x = 1
y = 2
z = x + y
result = "%d + %d = %d " %(x, y, z)
print(result)

#name = input("이름:")
#print("당신이 입력한 이름은 : " + name)

year = "2000"
year = int(year)
age = 2022 - year
print("나이:", age)
