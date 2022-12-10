# -*- coding: utf-8 -*-
"""
Created on Mon Oct 17 09:32:08 2022

@author: MYCOM
"""

#file stream
file = open("c:\\temp\\data.txt", "w")
file.write("this is data1\n")
file.write("this is data2\n")
file.close()

file = open("c:\\temp\\data.txt", "r")
data = file.readline()
print("data1:" + data)
data = file.readline()
print("data1:" + data)
file.close()


