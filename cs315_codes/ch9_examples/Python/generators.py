def foo():
    yield 1
    yield 2
    yield 3
    yield

foo()
foo().next()