def foo1(bar):
    bar.append(42)  # append modifies the bar
    print("In foo1: ",bar)      # prints [42]

answer_list = []   
foo1(answer_list)   # actual parameter, answer_list, is mutable
print("After foo1: ",answer_list)  # prints [42]

def foo2(bar):
   bar = bar + [53] # + operator creates a new list, assignment assigns the new value to new bar.
   print ("In foo2: ",bar)
answer_list = []
foo2(answer_list)   
print("After foo2: ",answer_list)  # prints []

def foo3(bar):
    bar = 'new value'  # assignment creates a new variable
    print ("In foo3: ",bar)

answer_list = 'old value'
foo3(answer_list)  
print("After foo3: ", answer_list) # prints 'old value'


