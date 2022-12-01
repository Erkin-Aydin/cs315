print("#######################################################")
print("1)Initialize:")
assoc_array = {"key1": "val1", "key2": "val2", "key3": "val3"}
print(assoc_array)

print("#######################################################")
print("2)Get the value for a given key:")
print(assoc_array["key1"])
print(assoc_array["key2"])
print(assoc_array["key3"])

print("#######################################################")
print("3)Add a new element:")
assoc_array["key4"] = "val4"
print(assoc_array)

print("#######################################################")
print("4)Remove an element:")
del assoc_array["key1"]
#pop method can also be used. popItem can be used for the last item
print(assoc_array)


print("#######################################################")
print("5)Modify the value of an existing element")
assoc_array["key2"] = "VAL2"
print(assoc_array)

print("#######################################################")
print("6)Search for the existence of the keys \"key2\" and \"key1\"")
#has_key() method could've been used for python2. It is removed in python3.
#get() can also be used. I used if conditions, as it seems to work for every version of python
key = "key2"
if key in assoc_array:
    print("\"key2\" Found")
else:
    print("\"key2\" Not Found")
key = "key1"
if key in assoc_array:
    print("\"key1\" Found")
else:
    print("\"key1\" Not Found")


print("#######################################################")
print("7)Search vor the existence of values \"val2\" and \"VAL2\"")
val = "val2"
print("Does \"val2\" exists: " + str(val in assoc_array.values()))
val = "VAL2"
print("Does \"VAL2\" exists: " + str(val in assoc_array.values()))

print("#######################################################")
print("8)Loop through an associative array, apply a function, called foo, which simply prints the key-value pair")

def foo(key, val):
    print("Key: " + key + ", Value: " + val)

for key in assoc_array:
    foo(key, assoc_array[key])
