def ref_demo(x):   
    print("x=",x," id=",id(x))
    x.append(5)
    print("x=",x," id=",id(x))

L = [1, 2]
print("L=", L," id=",id(L))
ref_demo(L)
print("L=", L," id=",id(L))
