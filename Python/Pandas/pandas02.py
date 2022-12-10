import pandas as pd

list_data = ['2021-01-01', 3.14, 'ABC', True]

sr = pd.Series(list_data)

print(sr)

idx = sr.index
val = sr.values

print(idx)
print("\n")
print(val)

sr[0] = '111'
print(val)