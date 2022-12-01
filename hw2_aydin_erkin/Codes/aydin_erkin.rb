#In Ruby unconditional exits exist. The "next" keyword is used instead of "continue"

#This example demonstrates how we can use the "break" statement in Ruby. 0, 1, and 2 will be printed, but the rest won't as we break out of the loop when i == 2.
  puts "Break:"
  for i in 0..4 do
    puts i
    break if i == 2
  end
  
  puts "################################################\n"

#This example demonstrates how we can use the "next" statement in Ruby. The value 2 won't be printed as that iteration will be terminated before the "puts".
  puts "Next:"
  for i in 0..4 do
    next if i == 2
    puts i
  end

  puts "################################################\n"

  #In Ruby, labeled exits do not exist. It is possible to use Continuations, Exceptions, and trow/catch instead.
