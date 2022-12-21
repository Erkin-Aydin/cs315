import sys
class MyClass(object):
    pass # The pass statement is a null operation

a = MyClass()
print(sys.getrefcount(a))       # 2
a.obj = 7
print(sys.getrefcount(a))       # 2
a.obj = a
print(sys.getrefcount(a))       # 3
del a                          
print(sys.getrefcount(a))
