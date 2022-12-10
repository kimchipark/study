import numpy as np
import csv

x = [1, 2, 3, 4]
y = [3, 6, 7, 8]
z = x + y
print(z)

data1 = np.array(x)
print(type(x))
print(type(data1))

data2 = np.array(y)
print(type(y))
print(type(data2))

z = data1 * data2
print(type(z))
print(z)

list = [1, 2, 3, 4, 5]
data = np.array(list)
print(data.size)
print(data)
print(type(data))
print(data.dtype)
print(data.sum())

list = [ [1, 2, 3], [4, 5, 6]]
data = np.array(list)
print(data[0])
print(data[1])
print(type(data))
print(data.dtype)
print(data[0].sum())
print(data[1].sum())
print(data[0].mean())
print(data[1].mean())
print(data[0] + data[1])

data = np.zeros(10)
print(data)
print(data.dtype)

data = np.zeros((2, 2))
print(data)
print(data.dtype)

data = np.zeros((2, 2), dtype=np.int32)
print(data)
print(data.dtype)

data = np.zeros((2, 2), dtype=np.int64)
print(data)
print(data.dtype)

data = np.ones(10, dtype=np.int64)
print(data)
print(data.dtype)

data = np.arange(1, 10, 2)
print(data)

data1 = np.arange(0, 5, 1)
print(data1)

data2 = np.arange(10, 15, 1)
print(data2)

data3 = data1 + data2
print(data3)


list1 = [1, 2, 3, 4, 5]
data1 = np.array(list1)


list2 = [10, 20, 30, 40, 50]
data2 = np.array(list2)

data3 = data1 + data2 - 1
print(data3)

print(data3.sum()) # 합
print(data3.mean()) # 평균
print(data3.min()) # 최소값
print(data3.max()) # 최대값

#필터링
data4 = np.where(data3 > 20, "a", "b")
print(data4)
print(type(data4))

#오름차순 정렬 default
data3.sort()
print(data3)

#csv와 numpy를 이용한 sum+
file = open("py16.csv", "r")
datas = csv.reader(file)
for line in datas :
    if len(line) == 0 :
        continue
    print(line)
    item = np.array(line, dtype=np.int64)
    print(item)
    print(item.sum())
file.close()