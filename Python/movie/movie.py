import pandas as pd
import requests
from bs4 import BeautifulSoup

file_path = "KOBISLIST.csv"
movie = pd.read_csv(file_path, encoding='cp949')

print(movie.head())
print("=" * 30)
print(type(movie))
print("=" * 30)
print(movie['영화명'].head(10))
print("=" * 30)

name = movie[['영화명', '감독']].head()
print(name)
print(type(name))
print("=" * 30)
row_total = len(name['영화명'])
####
def GetNaverMovie(moviename, drct) :
    mURL = "https://movie.naver.com/movie/search/result.naver?query=" +moviename
    agent_head = {
        "user-agent" : "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36",
        "accept" : "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
        }
    response = requests.get(mURL,headers=agent_head)
    return response.text
####
    
for row_no in range(0, row_total) :
    movie_name = name.iloc[row_no]['영화명']
    movie_drct = name.iloc[row_no]['감독']
    print(GetNaverMovie(movie_name, movie_drct))
    print(movie_name)
    print(movie_drct)
    

    



#print(response.text)
#print("=" * 30)
"""
soup = BeautifulSoup(response.text, "html.parser") #html로 바꾸는것 !

content = soup.select("ul.search_list_1 > li")

textAll = ""

print("*" * 30)

for i,item in enumerate(content) :
    #print(item)
    #print("=" * 30)    
    if item.p == None :
        continue    
    link = item.p.a["href"]
    img  = item.p.a.img["src"]
    director = soup.find_all(class_='etc')[1 + i * 2]
    director = director.getText()
    director = director[4:11]
    print(director)
    
    title = item.dt.getText()
    print(title)
    print("#" * 30)
    print(director)
    print("#" * 30)
    print(item.p.a["href"])   
    print(item.p.a.img["src"])
    print("=" * 30)
    """


