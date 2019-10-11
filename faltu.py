def insertion_sort(alist):
    for i in range(1, len(alist)):
        temp = alist[i]
        j = i - 1
        while (j >= 0 and temp < alist[j]):
            alist[j + 1] = alist[j]
            j = j - 1
        alist[j + 1] = temp
        
x=int(input('phela no. dalo '))
y=int(input('dusra no. dalo '))
nums = list(map(int,input("baaki no. daalo: ").split()))
nums.insert(0,y)
nums.insert(0,x)
insertion_sort(nums)

print("ye lo sorted ",nums)









