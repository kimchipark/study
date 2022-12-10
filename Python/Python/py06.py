# -*- coding: utf-8 -*-
"""
Created on Fri Oct  7 09:37:42 2022

@author: MYCOM
"""

datas = [1, 22, 44, 56, 333, 77]

for i in range(0, len(datas)):
    print(datas[i], end=" ")
print("")


for d in datas :
    print(d, end=" ")
print("")


sum = 0
for i in range(0, len(datas)):
    sum = sum + datas[i]
    
print("합계:", sum)
print("평균:", int(sum/len(datas)))

sum = 0
for d in datas:
    sum = sum + d
print("합계:", sum)

datas.sort()
print(datas)

datas.sort(reverse=True)
print(datas)

data1 = ["aa", "bb", "cc"]
data2 = ["dd", "ee", "ff"]
data3 = data1 + data2
print(data3)

score = [ [11, 22, 33], [44, 55, 66]]
for s in score:
    print(s)
    sum = 0
    for x in s :
        sum += x
    print("합계:", sum)
    

note = [["aa","bb","cc"], ["dd", "ee", "ff"]]

print(len(note[0]))