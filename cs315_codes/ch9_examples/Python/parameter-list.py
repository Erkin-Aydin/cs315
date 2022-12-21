def foo(x, *arguments, **keywords):
  print("x is", x)
  for arg in arguments:
    print("arg is", arg)
  print("-" * 40)
  for kw in keywords:
    print(kw, ":", keywords[kw])

foo ("abc", "d", "e", "f", color="blue", size="Medium", price="affordable")
