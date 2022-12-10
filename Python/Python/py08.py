# -*- coding: utf-8 -*-
"""
Created on Fri Oct  7 10:10:47 2022

@author: MYCOM
"""

person = {"이름 " : "홍길동", "나이" : 16}
print(person)
print(person["나이"])

person["나이"] = 20
print(person)

for key in person:
    print(key,":", person[key])
    

score = {"국어" : 10, "영어" : 20, "과학" : 30}
sum = 0
for key in score:
    sum = sum + score[key]
print(sum)


score = {"홍길동" : [1, 2, 3], "김길동" : [4, 5, 6]}

for key in score :
    sum = 0
    print(score[key])
    for s in score[key]:
        sum += s
    print(key + ":", sum)
    
    
score = [ 
    { 
      "이름" : "홍길동",
      "수학" : 10,
      "과학" : 20,
      "영어" : 30
    }, 
    { 
      "이름" : "성춘향",
      "수학" : 30,
      "과학" : 40,
      "영어" : 50
    }]


for i in range(0,len(score)):
    sum = 0
    for key in score[i]:
        print(key, ":", score[i][key])
        if "이름" in key :
            continue
        sum += int(score[i][key])
        if "영어" in key :
            print("총점 :", sum, "평균 :%.2f" %(sum/3))
    print("")
print(sum)