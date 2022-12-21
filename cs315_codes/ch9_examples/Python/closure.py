def makeAdder(x):
  def foo(y):
    return x+y
  return foo

add10 = makeAdder(10)
add5 = makeAdder(5)

print("add 10 to 20: " + str(add10(20)))
print("add 5 to 20: " + str(add5(20)))

 
