@names = ('Foo', 'Bar');
push @names, 'Moo';
print "@names\n";     # Foo Bar Moo

print "\$names[1] = $names[1]\n"; # $names[1]= Bar

$names[1] = 30;
print "@names\n";     # Foo 30 Moo
     
@others = ('Darth', 'Vader');
push @names, @others;
print "@names\n";     # Foo 30 Moo Darth Vader

$last_one = pop @names;
print "$last_one\n";  # Vader
print "@names\n";     # Foo 30 Moo Darth

$first = shift @names;
print "$first\n";     # Foo
print "@names\n";     # 30 Moo Darth
