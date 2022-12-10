class MoveInfo :
#{{{{{{{{    
    #생성자
    def __init__(self) :
        self.title    = ""
        self.director = ""
        self.no       = ""
        
    #제목
    def setTitle(self,title) :
        self.title = title
    #감독
    def setDirector(self,director):
        self.director = director
    #네이버 영화 번호
    def setNo(self,no):
        no = no.replace("/movie/bi/mi/basic.naver?code=","")
        self.no = no
    #영화 정보 출력
    def PrintInfo(self) :
        print("제목:" , self.title)
        print("감독:" , self.director)
        print("번호:" , self.no)
        print("-" * 30)    
#}}}}}}}}     
