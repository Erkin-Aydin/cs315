import sys

foo = []

print(sys.getrefcount(foo))
# 2 references, 1 from the foo var and 1 from getrefcount

def bar(a):
    print(sys.getrefcount(a))
    # 4 references
    # from the foo var, function argument, getrefcount and Python's function stack
bar(foo)
print(sys.getrefcount(foo))
# 2 references, the function scope is destroyed

