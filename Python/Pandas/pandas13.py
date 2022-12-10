import pandas as pd
import matplotlib.pyplot as plt
from matplotlib import rc

df = pd.read_csv("pandas10.csv", encoding="euc-kr", thousands=",")
print(df)
print("=" * 30) 

rc("font", family="gulim")
df = df.set_index(['읍면'])
imsil = df.loc['임실읍']
plt.figure(figsize=(10, 8))

imsil.plot(kind="pie", subplots=True)

plt.show()