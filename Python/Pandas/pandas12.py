import pandas as pd
import matplotlib.pyplot as plt
from matplotlib import rc

df = pd.read_csv("pandas10.csv", encoding="euc-kr", thousands=",")
print(df)
print("=" * 30) 

df2 = df.set_index(['읍면'])
duck = df2.loc["덕치면"]
print(duck)
print("=" * 30) 
print(duck.index)
print(duck.values)

#덕치면 선그래프 그리기
rc("font", family="gulim")

plt.style.use("ggplot")

plt.xticks(rotation=45)

plt.title("덕치면 인구수")
plt.xlabel("성별")
plt.ylabel("인구수")
plt.plot(duck.index, duck.values)