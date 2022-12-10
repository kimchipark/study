s = "abcdefghijklmn"
print(s,end=':')
#문자열의 길이 출력
print(len(s))

print(s[0])
print(s[1])
print(s[1:4])
print(s[1:])
print(s[:4])

print(s[-2])
print(s[-2:])
print(s[-4:-2])


wdate = "2022-04-19 15:45:40"
print("날짜",wdate[:10])
print("시간:", wdate[11:])


flag = True
print(flag)

flag = False
print(flag)

flag = 10 > 20
print(flag)

flag = 10 <= 20
print(flag)

flag = True and False
print(flag)

flag = (10 < 20) and ( 20 <= 30 )
print(flag)

x = 7 / 3
print(x)

x = 7 // 3
print(x)

x = 4
x = x ** 3
print(x)


str = "abc"
str = str * 10
print(str)

str  = "abc"
str2 = "xyz"
str = (str * 10) + (str2 * 2)
print(str)

score = 100
subj  = "과학"
print(subj  + ":" , score , "점")
print("%s: %d점" %(subj, score));

name = "홍길동"
str = "나의 이름은 %s입니다." % name
print(str)

str = "나의 점수는 %05d입니다." % score
print(str)

year  = 2021
month = 7
day   = 19

str = "오늘은 %04d년 %02d월 %02d일입니다." % (year,month,day)
print(str)

pi = 3.14
str = "원주율은 %.2f 입니다." % pi
print(str)

str = "i am a boy"
str = str.upper()
print(str)
str = str.lower()
print(str)


a = "A"
b = "B"
c = "C"
d = 10
print(a, b, c, d)
print(a, b, c, d, sep="_")


x = "abcde"
y = "ijklmn"
print(x,end="-->")
print(y)


