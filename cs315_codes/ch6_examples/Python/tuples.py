myTuple = (3, 5.8, 'apple')
print(myTuple[1])

# myTuple[1] = 6.7            # tuples are immutable

myTuple = [3, 5.8, 'apple']
print(myTuple)

myTuple[1] = 6.7            # lists are mutable
print(myTuple)

myTuple = tuple(myTuple)    # back to tuple
yourTuple = (1, "pear")
ourTuple= myTuple + yourTuple
print(ourTuple)
del yourTuple
#print(yourTuple)
x=5
print(x)
del x
#print(x)


