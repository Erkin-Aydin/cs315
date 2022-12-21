def foo(a, b, c):
  return a + b*c

result1 = foo(3, 4, 5)
print(result1)

result2 = foo(3, c=5, b=4)
print(result2)
