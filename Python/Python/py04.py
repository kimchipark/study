x = 0
sum = 0
while x < 10 :
    x = x + 1
    sum = sum + x
    print(x)    
print("합계:",sum)    

for i in range(1,10,2):
    print(i)
    
for i in (1,3,5):
    print(i)    
    

sum_odd  = 0
sum_even = 0
for i in range(0,101) :
    if i % 2 == 1 :
        sum_odd += i
    else :
        sum_even += i
print(sum_odd)
print(sum_even)

for i in range(1,100,2) :
    print("i=",i)
 
for x in range(0,10) :
    for y in range(0,x) :
        print("*",end="")
    print("")
    
for x in range(0,10) :
    for y in range(x,10) :
        print("*",end="")
    print("")    


for i in range(1,5) :
     for j in range(4-i):
         print(" ", end="")
     for k in range(1, i*2):
         print("*", end="")
     print("")

    