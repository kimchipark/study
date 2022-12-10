import pandas as pd
from pandas import DataFrame
import matplotlib.pyplot as plt
from matplotlib import rc

url = "http://192.168.0.23:8080/WebSample/index.jsp"
html = pd.read_html(url, header=0)
print(html)
print("=" * 30)


df = DataFrame(html[0])
print(df.head())
print("=" * 30)


rc("font", family="gulim")
df = df.set_index(['읍면'])
imsil = df.loc['임실읍']
plt.figure(figsize=(10, 8))

imsil.plot(kind="pie", subplots=True)

plt.show()