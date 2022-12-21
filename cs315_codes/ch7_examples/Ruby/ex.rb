class Tester
 def initialize x  # constructor
   @x = x
 end

 def x  # to get the value of the instance variable x
  @x
 end

 def +(y)   # to override the + operator
   @x * y + 3
 end
end

t1 = Tester.new(7)  # create an instance of Tester
puts t1.x
puts t1 + 2

# Output:
# 7
# 17
