import pandas as pd

data = ('홍길동', '2021-01-01', True, 123)
sr = pd.Series(data, index = ['이름', '생년월일', '학생여부', '나이'])

print(sr)

print("=" * 30)

for i in range(0, 4):
    print(sr[i])

print("=" * 30)
for data in sr :
    print(data)

print("=" * 30)

print(sr["이름"])

print("=" * 30)
print(sr[0:3])

print("=" * 30)
print(sr["이름" : "나이"])

print("=" * 30)
for key in sr.index :
    print(sr[key])