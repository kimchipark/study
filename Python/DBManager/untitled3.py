import pandas as pd
import csv
# -*- coding: utf-8 -*-
"""
Created on Mon Nov  7 20:12:38 2022

@author: user
"""

movie_info = pd.read_csv("movie_info.csv",encoding="cp949")

#print(movie_info.info())

#movie = movie_info[movie_info['표지이미지'].isnull()].index

movie = movie_info[movie_info['장르'] == '일본'].index

print(movie)


movie_info3 = movie_info.drop(movie)
movie_info3.to_csv("movie_info1.csv",encoding="cp949")
