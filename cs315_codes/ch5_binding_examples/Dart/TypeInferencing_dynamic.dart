import 'dart:io'; 

main() {
  var x;  // if you state a var without initializing, it becomes dynamic typed.
  stdout.write("\nInitially, the type of x is ");
  print(x.runtimeType);

  x = "Hello World";
  stdout.write("\nAfter assignment, the type of x is ");
  print(x.runtimeType);
  print("x is $x");

  x = 5.7;
  stdout.write("\nAfter assignment, the type of x is ");
  print(x.runtimeType);
  print("x is $x");
}
