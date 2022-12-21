def foo(data=None):
  if data is None:
    data = []
  data.append('a')
  return data

for i in range(4):
  print(foo())
