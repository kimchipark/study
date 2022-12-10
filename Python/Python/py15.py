import matplotlib.pyplot as plt
from matplotlib import rc

y = [1, 2, 3]
x = [1, 2, 3]

rc("font", family="Malgun Gothic")
font1 = {"size":15, "color":"green"}

plt.title("한글", fontdict=font1)
plt.xlabel("x축")
plt.ylabel("y축")
plt.plot(x, y)
plt.show()

xdata = ["안지영", "홍지수", "황예린"]
ydata1 = [90, 85, 88]
ydata2 = [83, 88, 91]
ydata3 = [50, 80, 100]
plt.plot(xdata, ydata1, label="국어")
plt.plot(xdata, ydata2, label="영어")
plt.plot(xdata, ydata3, label="수학")
plt.legend(loc="upper center")
plt.title("세명 학생의 성적")

plt.show()

xdata = ["안지영", "홍지수", "황예린"]
ydata1 = [90, 85, 88] #국어
ydata2 = [83, 88, 91] #영어
ydata3 = [85, 97, 78] #수학
ydata4 = [92, 88, 82] #과학

plt.plot(xdata, ydata1, label="국어", color="red", linestyle="-", marker="o")
plt.plot(xdata, ydata2, label="영어", color="#00ffff", linestyle="--", marker="x")
plt.plot(xdata, ydata3, label="수학", color="#00ff00", linestyle="-", marker="v")
plt.plot(xdata, ydata4, label="과학", color="#0000ff", linestyle="--", marker="v")
plt.legend(loc="upper right")
plt.show()
