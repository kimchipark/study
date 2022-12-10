import pandas as pd

rows = ['준서', '예은']
columns = ['나이', '성별', '학교']
data = [[15, '남','덕영중'], [16, '여', '수리중']]

df = pd.DataFrame(data, rows, columns)
print(df)
print('======================================\n')

print(df['성별'])
print("=" * 30)

age = df["나이"]


print(df[['성별', '학교']])
print("=" * 30)

print(df.columns)
print(df.index)

#행 인덱스, 열이름 변경하기
df.columns = ['연세', '성별', '학교명']
df.index = ['학생1', '학생2']
print(df)
print("=" * 30)

#행 삭제 : axis=0 , axis=1 : 열삭제
df1 = df.drop('학생1', axis=0)
print(df)
print("=" * 30)
print(df1)
print("=" * 30)

#행삭제 원본 삭제 법
df.drop('학생1', axis=0, inplace=True)
print(df)
print("=" * 30)

#열삭제
df.drop('연세', axis=1, inplace=True)
print(df)