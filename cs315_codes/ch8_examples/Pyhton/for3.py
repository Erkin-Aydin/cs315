"""
A for loop is used for iterating over a sequence,
that is either a list, a tuple, a dictionary, a set, or a string.
"""
# list
for fruit in ["apple", "banana", "cherry"]:
  print (fruit)

print ("-"*10)
# tuple
for friend in ("Ali", "Veli", "Selami"):
  print (friend)

print ("-"*10)
# string
for grade in "abcdf":
  print (grade)

print ("-"*10)
# set
x = set(['foo', 'bar', 'baz', 'foo', 'qux'])
for fun in x:
  print (fun)
