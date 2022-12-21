import sys
import gc
class MyClass(object):
  pass

a = MyClass()
print(sys.getrefcount(a))         # 2
a.obj = a
print(sys.getrefcount(a))         # 3
gc.collect()                      
print(sys.getrefcount(a))         # 3
del a
#print(sys.getrefcount(a))
#Traceback (most recent call last):
#  File "<stdin>", line 1, in <module>
#NameError: name 'a' is not defined
gc.collect() # The number of unreachable objects found is returned.  # 2
gc.collect() # 0

