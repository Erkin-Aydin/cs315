def foo (item):
  def fun():
    lst.append(item)
    print('lst is %s' % str(lst))

  lst =['in foo']
  return fun

a = foo("Hello")
a()
a()
a()

del foo

a()
