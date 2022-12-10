# -*- coding: utf-8 -*-
"""
Created on Fri Oct  7 09:17:03 2022

@author: MYCOM
"""

datas = [ "사과", "감", "오렌지", "귤"]
print(datas)
print(len(datas))

#리스트 끝에 값을 추가하는 함수.
datas.append("고구마")
print(datas)

#리스트의 원하는 index에 값을 넣는다.
datas.insert(1, "감자")
print(datas)

for v in datas :
    print(v)
    
for v in range(0, len(datas)):
    print(datas[v])

#원하는 index의 값을 꺼내온다.
d = datas.pop(1)
print(datas)
print(d)

#원하는 index의 값을 삭제한다.
del(datas[0])
print(datas)

#0번째 데이터를 변경한다.
datas[0] = "키위"
print(datas)

datas = [ "AA", "BB", "CC", "AA"]
print("전체갯수 :", len(datas))
print("AA갯수:", datas.count("AA"))
datas.sort()
print(datas)
datas.sort(reverse=True)
print(datas)

datas = [ ["고구마", "감자"], ["사과", "배"]]
print(datas[0])
print(datas[0][0])
print(datas[0][1])

for v in datas[1]:
    print(v, end=", ")
    
for i in range(0, len(datas)):
    for j in range(0, len(datas[i])):
        if j == len(datas[i]) - 1:
            print(datas[i][j], end="")
        else:
            print(datas[i][j], end=", ")
    print("")
        
