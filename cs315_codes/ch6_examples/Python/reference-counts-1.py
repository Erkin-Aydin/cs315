import sys
a = 'my-string'
print(sys.getrefcount(a))    #2   # one in the global env + 1 on the formal par of func
b = [a] # Make a list with a as an element.
print(sys.getrefcount(a))    #3
del b
print(sys.getrefcount(a))    #2
c = { 'key': a } # Create a dictionary with a as one of the values.

print(sys.getrefcount(a))    #3


