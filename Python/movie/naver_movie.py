import pandas as pd
import requests
from bs4 import BeautifulSoup
from movieinfo import *
    
def GetNaverMovie(movie_name) :
#{{{{{{{{
    mURL = "https://movie.naver.com/movie/search/result.naver?query=" + movie_name + "&section=all"
    agent_head = {
        "user-agent" : "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36",
        "accept" : "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
        }
    html    = requests.get(mURL,headers=agent_head).text
    soup    = BeautifulSoup(html, "html.parser")
    content = soup.select("ul.search_list_1 > li")
   
    movielist = []
   
    for item in content :
        movie = MoveInfo()
        movie.setNo(item.dt.a["href"])
        movie.setTitle(item.dt.getText())
        etc = item.select("dd.etc")
        for etc_item in etc :
            etc_text = etc_item.getText()
            nPos = etc_text.find("감독 :")
            if nPos >= 0 :
                etc_text = etc_text[nPos:]
                etc_text = etc_text.replace("감독 :","")
                nPos = etc_text.find("|")
                etc_text = etc_text[:nPos]            
                etc_text = etc_text.strip()
                movie.setDirector(etc_text)
        movielist.append(movie)
    return movielist        
#}}}}}}}}
        
list = GetNaverMovie("어벤져스")
for m in list :
    m.PrintInfo()



