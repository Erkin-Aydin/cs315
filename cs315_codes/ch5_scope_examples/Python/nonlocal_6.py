def level1():
    x = 1
    def level2():
        y = 2
        def level3():
            nonlocal x
            x = 3
            print ("level3: x=",x, "y=",y)

        level3()
        print ("level2: x=",x, "y=",y)

    level2()
    print ("level1: x=",x)

level1()
