import csv

file = open("py14.csv", "r", encoding="euc-kr")

datas = csv.reader(file)
man_total = 0
for line in datas :
    print(line)
    if "" in line :
        continue
    sum = int(line[1]) + int(line[2])
    print(line[1], "남녀 합계:", sum)
    man_total += int(line[1])
file.close()

print("전체 남학생:", man_total)

csvdata = ", 1월, 2월\n기온,10,15\n"
file = open("py-14-1.csv", "w", encoding="euc-kr")
file.write(csvdata)
file.close()