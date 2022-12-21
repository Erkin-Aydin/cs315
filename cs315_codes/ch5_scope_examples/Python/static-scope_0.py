def foo ():
    print ("in foo:", x)
    def bar():
        print("in bar:", x)
    bar()

x=7
foo()
