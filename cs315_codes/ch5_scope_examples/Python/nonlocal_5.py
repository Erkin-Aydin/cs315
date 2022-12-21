x = 0
def outer():
    y = 1
    def inner():
        nonlocal x
        x = 2
        print ("inner:", x)

    inner()
    print ("outer:", x)

outer()
print ("global:", x)
