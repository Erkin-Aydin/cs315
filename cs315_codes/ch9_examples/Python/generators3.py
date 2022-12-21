# Python3 code to demonstrate yield keyword
 
# generator to print even numbers
def print_even(lst) :
    for i in lst:
        if i % 2 == 0:
            yield i
 
L = [1, 8, 3, 4, 5, 2, 6, 7]
print("list:", L)
 
# printing even numbers
print ("even ints in L are :", end = " ")
for j in print_even(L):
    print (j, end = " ")

print()

