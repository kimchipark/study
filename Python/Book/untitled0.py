import csv
import pandas as pd
# -*- coding: utf-8 -*-
"""
Created on Fri Nov  4 15:46:44 2022

@author: MYCOM
"""
"""
filename = "Reivew(pr).csv"
movie = pd.read_csv("movie.csv",encoding="utf8")
review = pd.read_csv(filename,encoding="cp949")

f = open(filename,'rt',encoding="cp949")
reader = csv.reader(f)

csv_list = []

for i in reader :
    csv_list.append(i)
f.close()

review = pd.DataFrame(csv_list)

print(review)
movie_info = pd.concat([movie,review], axis=1)

movie_info.to_csv("movie_info.csv",encoding="UTF-8")


movie_info = pd.read_csv("movie_info.csv",encoding="utf8",sep=",")
"""

movie_info = pd.read_csv("movie_info.csv",encoding="cp949",sep=",")
        
movie_genre = movie_info.loc[movie_info['장르'] == '한국']

print(movie_genre)




