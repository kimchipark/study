"""
참고 URL : https://wikidocs.net/44249
"""
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import re
import urllib.request
from konlpy.tag import Okt
from tqdm import tqdm
from tensorflow.keras.preprocessing.text import Tokenizer
from tensorflow.keras.preprocessing.sequence import pad_sequences

train_data = pd.read_table('ratings_train.txt')
test_data  = pd.read_table('ratings_test.txt')

# 훈련용 리뷰 개수 출력
print('훈련용 리뷰 개수 :',len(train_data)) 

# 상위 5개 출력
print(train_data[:5])

# 테스트용 리뷰 개수 출력
print('테스트용 리뷰 개수 :',len(test_data)) 

# 상위 5개 출력
print(test_data[:5])


# document 열과 label 열의 중복을 제외한 값의 개수
train_data['document'].nunique()
train_data['label'].nunique()


# document 열의 중복 제거
train_data.drop_duplicates(subset=['document'], inplace=True)


print('총 샘플의 수 :',len(train_data))

#train_data에서 해당 리뷰의 긍, 부정 유무가 기재되어있는 레이블(label) 값의 분포
#긍정/부정의 비율이 50%:50% 임 
train_data['label'].value_counts().plot(kind = 'bar')

#긍정/부정의 배율을 화면에 출력한다.
print(train_data.groupby('label').size().reset_index(name = 'count'))

#리뷰가 없는 데이터가 있는지 출력 
print(train_data.isnull().values.any())

#리뷰가 없는 데이터 갯수 출력 
print(train_data.isnull().sum())

#리뷰가 없는 데이터 위치(인덱스) 출력 
print(train_data.loc[train_data.document.isnull()])

#Null 값을 가진 데이터 제거 
train_data = train_data.dropna(how = 'any') # Null 값이 존재하는 행 제거
print(train_data.isnull().values.any()) # Null 값이 존재하는지 확인

#Null 값을 가진 데이터 제거 후 갯수 출력 
print(len(train_data))

#알파벳과 공백을 제외하고 모두 제거하는 연습 
eng_text = 'do!!! you expect... people~ to~ read~ the FAQ, etc. and actually accept hard~! atheism?@@'
print(re.sub(r'[^a-zA-Z ]', '', eng_text))


# 한글과 공백을 제외하고 모두 제거
print(train_data[:5])
print("=" * 30)
train_data['document'] = train_data['document'].str.replace("[^ㄱ-ㅎㅏ-ㅣ가-힣 ]","",regex=True)
print(train_data[:5])
print("=" * 30)

## 한글과 공백을 제외하고 모두 제거 후 white space 데이터를 empty value로 변경
train_data['document'] = train_data['document'].str.replace('^ +', "",regex=True) 
train_data['document'].replace('', np.nan, inplace=True)
print(train_data.isnull().sum())

# 한글과 공백을 제외하고 모두 제거 후 Null 값을 가진 데이터 출력
print(train_data.loc[train_data.document.isnull()][:5])

#Null 값을 가진 데이터 제거 후 갯수 출력 
train_data = train_data.dropna(how = 'any')
print(len(train_data))

#테스트 데이터에 대해서도 한글과 공백을 제외하고 모두 제거 후 #Null 값을 가진 데이터 제거
# document 열에서 중복인 내용이 있다면 중복 제거
test_data.drop_duplicates(subset = ['document'], inplace=True) 
# 정규 표현식 수행
test_data['document'] = test_data['document'].str.replace("[^ㄱ-ㅎㅏ-ㅣ가-힣 ]","",regex=True) 
# 공백은 empty 값으로 변경
test_data['document'] = test_data['document'].str.replace('^ +', "",regex=True) 
# 공백은 Null 값으로 변경
test_data['document'].replace('', np.nan, inplace=True) 
# Null 값 제거
test_data = test_data.dropna(how='any') 
print('전처리 후 테스트용 샘플의 개수 :',len(test_data))


#불용어 목록 선언 
stopwords = ['의','가','이','은','들','는','좀','잘','걍','과','도','를','으로','자','에','와','한','하다']

okt = Okt()
token = okt.morphs('와 이런 것도 영화라고 차라리 뮤직비디오를 만드는 게 나을 뻔', stem = True)
print(token)

#훈련용 데이터를 불용어를 제거하면서 형태소 분석을 수행한다.
X_train = []
for sentence in tqdm(train_data['document']):
    # 토큰화
    tokenized_sentence = okt.morphs(sentence, stem=True) 
    # 불용어 제거
    stopwords_removed_sentence = [word for word in tokenized_sentence if not word in stopwords] 
    X_train.append(stopwords_removed_sentence)
    
#형태소 분석된 자료 상위 3개만 출력 
print(X_train[:3])

#테스트 데이터를 불용어를 제거하면서 형태소 분석을 수행한다.
X_test = []
for sentence in tqdm(test_data['document']):
    tokenized_sentence = okt.morphs(sentence, stem=True) # 토큰화
    stopwords_removed_sentence = [word for word in tokenized_sentence if not word in stopwords] # 불용어 제거
    X_test.append(stopwords_removed_sentence)
    
    
#형태소 분석된 자료 상위 3개만 출력 
print(X_test[:3])

#정수 인코딩 : 기계가 텍스트를 숫자로 처리할 수 있도록 훈련 데이터와 테스트 데이터에 
#정수 인코딩을 수행한다. 
#훈련 데이터에 대해서 단어 집합(vocaburary)을 작성한다.
tokenizer = Tokenizer()
tokenizer.fit_on_texts(X_train)

#고유 정수를 출력한다.
print(tokenizer.word_index)

#등장 빈도수가 3회 미만인 단어들이 이 데이터에서 얼만큼의 비중을 차지하는지 확인
threshold = 3
total_cnt = len(tokenizer.word_index) # 단어의 수
rare_cnt = 0 # 등장 빈도수가 threshold보다 작은 단어의 개수를 카운트
total_freq = 0 # 훈련 데이터의 전체 단어 빈도수 총 합
rare_freq = 0 # 등장 빈도수가 threshold보다 작은 단어의 등장 빈도수의 총 합

# 단어와 빈도수의 쌍(pair)을 key와 value로 받는다.
for key, value in tokenizer.word_counts.items():
    total_freq = total_freq + value

    # 단어의 등장 빈도수가 threshold보다 작으면
    if(value < threshold):
        rare_cnt = rare_cnt + 1
        rare_freq = rare_freq + value

print('단어 집합(vocabulary)의 크기 :',total_cnt)
print('등장 빈도가 %s번 이하인 희귀 단어의 수: %s'%(threshold - 1, rare_cnt))
print("단어 집합에서 희귀 단어의 비율:", (rare_cnt / total_cnt)*100)
print("전체 등장 빈도에서 희귀 단어 등장 빈도 비율:", (rare_freq / total_freq)*100)


#등장 빈도수가 2이하인 단어들의 수를 제외한 단어의 개수를 단어 집합의 최대 크기로 제한
# 전체 단어 개수 중 빈도수 2이하인 단어는 제거.
# 0번 패딩 토큰을 고려하여 + 1
vocab_size = total_cnt - rare_cnt + 1
print('단어 집합의 크기 :',vocab_size)

#케라스 토크나이저의 인자로 넘겨주고 텍스트 시퀀스를 정수 시퀀스로 변환
tokenizer = Tokenizer(vocab_size) 
tokenizer.fit_on_texts(X_train)
X_train = tokenizer.texts_to_sequences(X_train)
X_test = tokenizer.texts_to_sequences(X_test)

#X_train에 대해서 상위 3개의 샘플만 출력    
print(X_train[:3])

#각 샘플 내의 단어들은 각 단어에 대한 정수로 변환된 것을 확인할 수 있다. 
#단어의 개수는 19,416개로 제한되었으므로 0번 단어 ~ 19,415번 단어까지만 사용 중이다.
#0번 단어는 패딩을 위한 토큰임을 상기합시다. 
#train_data에서 y_train과 y_test를 별도로 저장해줍니다 .
y_train = np.array(train_data['label'])
y_test = np.array(test_data['label'])

# 빈 샘플(empty samples) 제거
drop_train = [index for index, sentence in enumerate(X_train) if len(sentence) < 1]

# 빈 샘플들을 제거
X_train = np.delete(X_train, drop_train, axis=0)
y_train = np.delete(y_train, drop_train, axis=0)
print(len(X_train))
print(len(y_train))


#서로 다른 길이의 샘플들의 길이를 동일하게 맞춰주는 패딩 작업을 진행
print('리뷰의 최대 길이 :',max(len(review) for review in X_train))
print('리뷰의 평균 길이 :',sum(map(len, X_train))/len(X_train))
plt.hist([len(review) for review in X_train], bins=50)
plt.xlabel('length of samples')
plt.ylabel('number of samples')
plt.show()

def below_threshold_len(max_len, nested_list):
  count = 0
  for sentence in nested_list:
    if(len(sentence) <= max_len):
        count = count + 1
  print('전체 샘플 중 길이가 %s 이하인 샘플의 비율: %s'%(max_len, (count / len(nested_list))*100))
  
max_len = 30
below_threshold_len(max_len, X_train)

X_train = pad_sequences(X_train, maxlen=max_len)
X_test = pad_sequences(X_test, maxlen=max_len)



#LSTM으로 네이버 영화 리뷰 감성 분류하기  
"""
하이퍼파라미터인 임베딩 벡터의 차원은 100, 은닉 상태의 크기는 128입니다. 
모델은 다 대 일 구조의 LSTM을 사용합니다. 
해당 모델은 마지막 시점에서 두 개의 선택지 중 하나를 예측하는 이진 분류 
문제를 수행하는 모델입니다. 이진 분류 문제의 경우, 출력층에 로지스틱 회귀를 
사용해야 하므로 활성화 함수로는 시그모이드 함수를 사용하고, 손실 함수로 
크로스 엔트로피 함수를 사용합니다. 하이퍼파라미터인 배치 크기는 64이며, 
15 에포크를 수행합니다.

EarlyStopping(monitor='val_loss', mode='min', verbose=1, patience=4)는 
검증 데이터 손실(val_loss)이 증가하면, 과적합 징후므로 검증 데이터 손실이 
4회 증가하면 정해진 에포크가 도달하지 못하였더라도 학습을 조기 종료(Early Stopping)한다는 
의미입니다. ModelCheckpoint를 사용하여 검증 데이터의 정확도(val_acc)가 
이전보다 좋아질 경우에만 모델을 저장합니다. validation_split=0.2을 
사용하여 훈련 데이터의 20%를 검증 데이터로 분리해서 사용하고, 검증 데이터를 
통해서 훈련이 적절히 되고 있는지 확인합니다. 검증 데이터는 기계가 훈련 데이터에 
과적합되고 있지는 않은지 확인하기 위한 용도로 사용됩니다.
"""

from tensorflow.keras.layers import Embedding, Dense, LSTM
from tensorflow.keras.models import Sequential
from tensorflow.keras.models import load_model
from tensorflow.keras.callbacks import EarlyStopping, ModelCheckpoint

embedding_dim = 100
hidden_units = 128

model = Sequential()
model.add(Embedding(vocab_size, embedding_dim))
model.add(LSTM(hidden_units))
model.add(Dense(1, activation='sigmoid'))

es = EarlyStopping(monitor='val_loss', mode='min', verbose=1, patience=4)
mc = ModelCheckpoint('best_model.h5', monitor='val_acc', mode='max', verbose=1, save_best_only=True)

model.compile(optimizer='rmsprop', loss='binary_crossentropy', metrics=['acc'])
history = model.fit(X_train, y_train, epochs=15, callbacks=[es, mc], batch_size=64, validation_split=0.2)

#학습 결과를 파일로 저장한다.
#model.save('best_model.h5')

loaded_model = load_model('best_model.h5')
print("\n 테스트 정확도: %.4f" % (loaded_model.evaluate(X_test, y_test)[1]))

#리뷰 예측해보기
def sentiment_predict(new_sentence):
  new_sentence = re.sub(r'[^ㄱ-ㅎㅏ-ㅣ가-힣 ]','', new_sentence)
  new_sentence = okt.morphs(new_sentence, stem=True) # 토큰화
  new_sentence = [word for word in new_sentence if not word in stopwords] # 불용어 제거
  encoded = tokenizer.texts_to_sequences([new_sentence]) # 정수 인코딩
  pad_new = pad_sequences(encoded, maxlen = max_len) # 패딩
  score = float(loaded_model.predict(pad_new)) # 예측
  if(score > 0.5):
    print("{:.2f}% 확률로 긍정 리뷰입니다.\n".format(score * 100))
  else:
    print("{:.2f}% 확률로 부정 리뷰입니다.\n".format((1 - score) * 100))
    
sentiment_predict('이 영화 개꿀잼 ㅋㅋㅋ')

sentiment_predict('이 영화 핵노잼 ㅠㅠ')

sentiment_predict('이딴게 영화냐 ㅉㅉ')

sentiment_predict('감독 뭐하는 놈이냐?')

sentiment_predict('와 개쩐다 정말 세계관 최강자들의 영화다')

    

