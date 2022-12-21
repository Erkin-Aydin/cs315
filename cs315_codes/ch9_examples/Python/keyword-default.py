def foo (a, b='BB', c='CC', d='DD'):
  print "a=",a,"b=",b,"c=",c,"d=",d
  
>>> foo(5)					# 1 positional argument
a= 5 b= BB c= CC d= DD
>>> foo(a=7)				# 1 keyword argument
a= 7 b= BB c= CC d= DD
>>> foo(a=7, c=3)			# 2 keyword arguments
a= 7 b= BB c= 3 d= DD
>>> foo(d=9,a=5)			# 2 keyword arguments
a= 5 b= BB c= CC d= 9
>>> foo(3,5,7)				# 3 positional arguments
a= 3 b= 5 c= 7 d= DD
>>> foo(4,d=9)				# 1 positional, 1 keyword
a= 4 b= BB c= CC d= 9

Invalid calls:
>>> foo()			# required argument missing
>>> foo(a=5, 7)			# non-keyword arg after a kw arg
>>> foo(3, a=5)			# duplicate value for the same arg
>>> foo(e=50)			# unknown keyword argument
