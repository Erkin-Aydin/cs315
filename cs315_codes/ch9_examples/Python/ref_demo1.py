def ref_demo(x):
    print("x=",x," id=",id(x))
    x=4
    print("x=",x," id=",id(x))

a = 5
print(id(a))
b = 5
print(id(b))

ref_demo(a)
print(id(a))


