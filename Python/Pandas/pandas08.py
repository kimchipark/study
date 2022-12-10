import pandas as pd

#csv 읽기

df = pd.read_csv("pandas08.csv", encoding="euc-kr")
print(df)
print("=" * 30)

df = pd.read_csv("pandas08.csv", header=None, encoding="euc-kr")
print(df)
print("=" * 30)

df.columns = ['컬럼1','컬럼2','컬럼3','컬럼4']
df.index = ['행1', '행2', '행3', '행4']
print(df)