import pandas as pd

dict_data = {'종목코드' : ['001', '002', '003'],
             '종목명' : ['삼성전자', '네이버', '카카오'],
             '가격' : [100, 200, 300]}

df = pd.DataFrame(dict_data, index=['삼성', '네이버', '카카오'])

print(type(df))
print('\n')

print(df)

print("="*30)
print(df["종목명"])

print("="*30)
print(df["가격"])

print("="*30)
print(df[["종목코드" , "종목명"]])

print("="*30)
price = df["가격"]
print(price)
print(type(price))

print("="*30)
print(df.loc[['삼성', '네이버', '카카오'], ['종목명', '가격']])
