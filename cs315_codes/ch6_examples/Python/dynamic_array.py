mylist = [2, 1.6, (3+5j), 'c', "a word"]
print(mylist)

x = (1+2j) * mylist[2]
print(x)

a = ['a', 3]
print(a)
a.append('q')
print('a is', a)

# indexing
print('first element of a is', a[0])
a[0] = 'z'

# slicing
a[3:5] = ["hale", "jale", "lale"]
print("a is", a)

del a[3]
print("a is", a)

print("last element of a is", a[-1])
