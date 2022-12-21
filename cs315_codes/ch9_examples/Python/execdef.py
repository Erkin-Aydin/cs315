def foo(n):
  if (n%2 ==0):
    def bar(n):
      return 2*n
  else:
    def bar(n):
      return 2*n+1
  return bar(n)

number= int(input("Enter a number: "))
foo_number = foo(number)
print("number is "+str(number)+" foo(number) is "+str(foo_number))

"""
print("bar(n)"+str(bar(number)))
"""
