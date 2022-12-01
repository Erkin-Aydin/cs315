puts "1)Initialize"
assoc_array = {key1: "val1", key2: "val2", key3: "val3"}
puts assoc_array
puts "############################################\n"

puts "2)Get the value for a given key"
puts assoc_array[:key1]
puts assoc_array[:key2]
puts assoc_array[:key3]

puts "############################################\n"

puts "3)Add a new element "
assoc_array[:key4] = "val4"
puts assoc_array
puts "############################################\n"


puts "4)Remove an element "
assoc_array.delete(:key1)
puts assoc_array
puts "############################################\n"


puts "5)Modify the value of an existing element "
assoc_array[:key2] = "VAL2"
puts assoc_array
puts "############################################\n"


puts "6)Search for the existence of keys \"key1\" and \"key2\" "
puts assoc_array.has_key?(:key1)
puts assoc_array.has_key?(:key2)
puts "############################################\n"


puts "7)Search for the existence of a value "
puts assoc_array.has_value?("val1")
puts assoc_array.has_value?("val2")
puts assoc_array.has_value?("VAL2")
puts "############################################\n"


puts "8)Loop through an associative array, apply a function, called foo, which simply prints the key-value pair"
def foo(pair)
  puts "#{pair}"
end
for pair in assoc_array do
  foo(pair)
end
puts "############################################\n"
