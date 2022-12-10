import pandas as pd

#csv 읽기
#thousands는 콤마를 없애고 숫자로 변경
df = pd.read_csv("pandas10.csv", encoding="euc-kr", thousands=",")
print(df)
print("=" * 30)

print(df["읍면"].dtype)
print(df["합계"].dtype)
print(df["남"].dtype)
print(df["여"].dtype)
print("=" * 30)


#상위 5개의 행 확인
print(df.head())
print("=" * 30)


#상위 10개의 행 확인
print(df.head(10))
print("=" * 30)

#하위 5개 행 확인
print(df.tail())
print("=" * 30)

#하위 10개 행 확인
print(df.tail(10))
print("=" * 30)

#데이터 프레임 정보 확인
print(df.info())
print("=" * 30)

#각 열의 갯수 확인
print(df.count())
print("=" * 30)

#각 열의 고유값 갯수 확인
print(df.value_counts())
print("=" * 30)

#읍면의 값의 갯수 확인
print(df['읍면'].count())
print("=" * 30)

#읍면의 고유값의 확인
print(df['읍면'].value_counts())
print("=" * 30)

#인구수 평균 값
print("평균값 : %.2f" %(df["남"].mean()))
print("평균값 : %.2f" %(df["여"].mean()))

print("합계", df["남"].sum())
print("합계", df["여"].sum())

#인구수 중간값
print("중간값", df["남"].median())
print("중간값", df["여"].median())

#인구수 최대값
print("최대값", df["남"].max())
print("최대값", df["여"].max())

#인구수 최소값
print("최소값", df["남"].min())
print("최소값", df["여"].min())

#임실군 인구 통계 로딩
df = pd.read_csv("pandas10.csv", encoding="euc-kr")
print(df['여'])
print(df.info())
print("=" * 30)


########################################
def to_int(price) :
    price = price.replace(",", "")
    price = int(price)
    return price
#######################################

df['여'] = df['여'].apply(to_int)
print(df.info())

print("콤마 변환 후...")
print(df["여"])