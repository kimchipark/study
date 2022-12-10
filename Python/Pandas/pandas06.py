import pandas as pd

rows = ['준서', '예은']
columns = ['나이', '성별', '학교']
data = [[15, '남','덕영중'], [16, '여', '수리중']]

df = pd.DataFrame(data, rows, columns)
#print(df)
#print('======================================\n')

#열 선택
item = df['나이']
print(item)
print("=" * 30)

item = df[['나이', '학교']]
print(item)
print("=" * 30)

#행 선택
item = df.loc['준서']
print(item)
print("=" * 30)

item = df.iloc[0]
print(item)
print("=" * 30)

item = df.loc['준서']['나이']
print(item)
print("=" * 30)

item = df.loc['준서'][0]
print(item)
print("=" * 30)

item = df.iloc[0][0]
print(item)
print("=" * 30)