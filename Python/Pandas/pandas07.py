import pandas as pd

dict_data = { '이름' : ['홍길동', '김길동', '박길동'],
             '수학' : [11, 21, 31],
             '영어' : [12, 22, 32],
             '국어' : [13, 23, 33]
             }

df = pd.DataFrame(dict_data)

print(df)
print("=" * 30)

print(df[['이름', '국어']])
print("=" * 30)

print(df.iloc[0])

ndf1 = df.set_index(['이름'])
print("=" * 30)
print(df)
print("=" * 30)
print(ndf1)
print("=" * 30)


print(ndf1.loc['홍길동'])
print("=" * 30)

ndf2 = df.set_index(['이름', '수학'])
print(ndf2)
print("=" * 30)


#정렬
ndf2 = df.sort_values(by="이름", ascending=True)
print(ndf2)
print("=" * 30)

#시리즈 연산
ndf3 = ndf2 + ndf2
print(ndf3)
print("=" * 30)

#시리즈 연산
ndf2 = df[['수학', '영어']]
ndf3 = ndf2 + 10
print(ndf3)
print("=" * 30)