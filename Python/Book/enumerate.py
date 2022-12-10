list = [11, 22, 33, 44]

for x in list :
    print(x)
print("=" * 20)

for v in enumerate(list):
    print(v)
print("=" * 20)

for i,v in enumerate(list):
    print(i, v, sep=":")
print("=" * 20)

dict = {1:"one", 2:"two", 3:"three"}

for x in dict :
    print(x)
print("=" * 20)

for x in dict :
    print(dict[x])
print("=" * 20)

for k, v in dict.items() :
    print(str(k) + "=>" + v)
print("=" * 20)

for k in enumerate(dict) :
    print(k)
print("=" * 20)

for idx, v in enumerate(dict.items()) :
    print(idx, "=>", v)
print("=" * 20)


for idx, (k, v) in enumerate(dict.items()) :
    print(k, "=>", v)
print("=" * 20)