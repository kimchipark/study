import pandas as pd

dict_data = { '이름' : ['홍길동', '김길동', '박길동'],
             '수학' : [11, 21, 31],
             '영어' : [12, 22, 32],
             '국어' : [13, 23, 33]
             }

df = pd.DataFrame(dict_data)
print(df)
print("=" * 30)

#csv 저장
df.to_csv("pandas09.csv", encoding="euc-kr")