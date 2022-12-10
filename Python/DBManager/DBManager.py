import pymysql
import pandas as pd

class DBManager :
    monitoring = True
    def DBOpen(self) :
        try :
            self.con = pymysql.connect(host="127.0.0.1", port=3306, user="root", passwd="ezen",
            db="stock", charset ="euckr")
            
            if self.con != None :
                self.cursor = self.con.cursor()
            else :
                exit(0)
        except :
            return False
        return True
    
    def DBClose(self) :
        self.con.close()
        
    def RunSQL(self, sql):
        if self.monitoring == True :
            print(sql)
            
        try :
            self.cursor.execute(sql)
            self.con.commit()
        except :
            return False
        return True
    
    def OpenQuery(self,sql):
        if self.monitoring == True :
            print(sql)
            
        try :
            self.cursor.execute(sql)
            self.data = self.cursor.fetchall()
            #컬럼 이름을 담을 리스트를 만든다
            name_list = []
            for name in self.cursor.description :
                name_list.append(name[0])
            #select해서 얻어온 값을 데이터프레임으로 변환시킨다.    
            self.df = pd.DataFrame(self.data, columns=name_list)
            self.num_fields = len(self.cursor.description)
            return self.df
        except :
            return False       
        
    def CloseQuery(self) :
        self.cursor.close()
        
    def GetTotal(self):
        return len(self.data)
    
    def GetValue(self,index,column):
        return self.df.iloc[index][column]
        '''
        count = -1
        for name in self.cursor.description:
            count = count + 1
            print(name[0])
            if name[0] == column :            
                return self.data[index][count]
        return ""
        '''    
a = DBManager()
a.DBOpen()
sql = "select start, end from stock "
a.OpenQuery(sql)
for i in range(0, a.GetTotal()):
    print("start :", a.GetValue(i, "start"))
    print("end :", a.GetValue(i, "end"))
a.DBClose()
"""

db = DBManager()
if db.DBOpen("127.0.0.1", "memodb", "root", "ezen") == False :
    print("Error")
else:    
    print("ok")
    
    for i in range(1,51):
        title = "%02d 번째 제목입니다." % i
        sql  = "insert into imsi (title) "
        sql += "values ('" + title + "')"
        #sql = "delete from imsi "
        db.RunSQL(sql)
    
    db.OpenQuery("select * from imsi")
    print(db.GetTotal())
    for row in range(0,5) :
        print(db.GetValue(row,"title"))
    db.CloseQuery() 
"""     