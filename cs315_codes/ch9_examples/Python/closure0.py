def print_msg(msg):
    def printer():
        print(msg)
    return printer

a = print_msg("Hello")
a()
del print_msg
# print_msg("Hi")
a()