import pandas as pd

dict_data = { 'a' : 1, 'b' : 2, 'c' : 3 }
dict_data["d"] = 4
dict_data["a"] = 10

print(dict_data)

sr = pd.Series(dict_data)
print(type(sr))
print(sr)

idx = sr.index
val = sr.values

print(idx)
print("\n")
print(val)