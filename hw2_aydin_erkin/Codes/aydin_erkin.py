#The "break" statement exists in Python. It can be used to terminate a loop.
#This example demonstrates how the "break" statement works in Python. 0, 1, and 2 will be printed but 4 and 5 will not be, as we break when i == 2
for i in range(0, 5):
    print(i)
    if(i == 2):
        break

print("#####################################################\n")

#The continue statement exists in Python. It can be used to terminate a single iteration.
#This example demonstrates how the "continue" statement works in Python. 2 will not be printed as the iteration will be terminated before it is printed.
#However, the rest of the values (0,1,3, and 4) will be printed, as only a single iteration is terminated.
for i in range(0,5):
    if(i == 2):
        continue
    print(i)


#Labeled exists do not exist in Python. It is possible to find some workaround ways to do it, using
#return statements and calling loops through functions, adding flag variables, etc..
