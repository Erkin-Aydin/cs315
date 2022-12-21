$x = 123;
sub foo { 
  print "$x\n";  # 123
}
{ local $x = 456; 
  foo(); # 456
}  
foo();
