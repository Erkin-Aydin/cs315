def firstn(n):
    num = 0
    while num < n:
        yield num
        num += 1
        
print(sum(firstn(100)))

g = firstn(100)
print(g.__next__())
print(g.__next__())
print(g.__next__())
print(next(g))
print(next(g))