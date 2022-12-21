import gc
i = 0

# create a cycle and on each iteration x as a list
# assigned to 1
def create_cycle():
    x = [i]
    x.append(x)
    print x

# lists are cleared 
collected = gc.collect()
print "Garbage collector: collected %d objects." % (collected)
# No garbage is collected

print "Creating cycles..."
for i in range(5):
    create_cycle()
#lists are created but they are not returned, so they are garbage!

collected = gc.collect()
print "Garbage collector: collected %d objects." % (collected)
# 5 objects are collected
