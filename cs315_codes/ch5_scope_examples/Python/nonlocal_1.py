msg = "Global"
def outside():
    msg = "Outside!"
    def inside():
        global msg
        msg = "Inside!"
        print(msg)
    inside()
    print(msg)
 
outside()
print(msg)

