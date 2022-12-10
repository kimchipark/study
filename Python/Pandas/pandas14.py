import pandas as pd

df = pd.read_csv("pandas14.csv", encoding="euc-kr")
df = df.set_index(["읍면"])

print(df)
print("=" * 30)

#null 여부 출력
print(df.isnull())
print("=" * 30)

#notnull 여부 출력
print(df.notnull())
print("=" * 30)

#컬럼별로 데이터 출력

for col in df.columns :
    print(df[col])
    print("=" * 30)
    
df = df.dropna(subset=["합계"], how="any", axis=0)
print(df)
print("=" * 30)

df = df.dropna(subset=["여"], how="any", axis=0)
print(df)
print("=" * 30)

#"여"의 중복 데이터 삭제
df = df.drop_duplicates(subset=["여"])
print("[여]의 중복데이터 삭제")
print(df)
print("=" * 30)

#전체 중복데이터 삭제
df = df.drop_duplicates()
print("전체 중복 데이터 삭제")
print(df)
print("=" * 30)

#데이터 타입확인
print("데이터 타입 확인")
print(df.dtypes)
print("=" * 30)

#콤마 제거
df["합계"] = df["합계"].str.replace(",", "")
df["여"] = df["여"].str.replace(",", "")
print(df)
print("=" * 30)
print(df.dtypes)
print("=" * 30)

#타입변환
df["합계"] = df["합계"].astype("int64")
df["여"] = df["여"].astype("int64")
print("데이터 타입 변환")
print(df.dtypes)
print("=" * 30)
