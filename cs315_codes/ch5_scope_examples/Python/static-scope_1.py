def foo ():
  x = 5
  def bar():
    # x = 7
    print("in bar x is", x)

  print("in foo x is", x)
  bar()
  print("in foo x is", x)

x = 3
print("in main x is", x)
foo()
print("in main x is", x)
