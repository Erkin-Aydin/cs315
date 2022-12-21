g = 3 # global
def sub1():
   a = 3  # local to sub1
   print "point 1.1: g=", g, " a=", a
   def sub2():
      global g   # global g is assignable
      b = 5 # local to sub2
      print "point 2.1: g=", g, " a=", a, " b=", b
      g = 11 # global
      def sub3():
         b = 7 # local to sub3
         print "point 3: g=", g, " a=", a, " b=", b
      sub3()
      print "point 2.2: g=", g, " a=", a, " b=", b
   sub2()
   print "point 1.2: g=", g, " a=", a
    
sub1()
print "g=",g # point 1


