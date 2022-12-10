import pandas as pd
import matplotlib.pyplot as plt
from matplotlib import rc

df = pd.read_csv("pandas10.csv", encoding="euc-kr", thousands=",")
print(df)
print("=" * 30) 

#한글폰트 설정
rc("font", family='gulim')

x = df['읍면']
y = df['합계']
print(x)
print("=" * 30) 
print(y)
print("=" * 30) 

plt.figure(figsize=(10,4), dpi=300)
#plt.scatter(x = x, y = y)
plt.title("한글")
plt.xlabel('읍면')
plt.ylabel('인구수')
plt.bar(x, y)
plt.show()