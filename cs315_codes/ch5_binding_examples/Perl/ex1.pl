$x = 5;
print '$x=' . $x . "\n";
$x = "Hello";
print "\$x= $x \n";

@x = ("Ali", "Ayse", "Can", "Canan", 2, 3.5);
print "\@x= @x \n";
print "\$x= $x \n";

%x = ('A', 4.0, "A-", 3.7, 'B+', 3.3, 'B', 3.0);
print '$x{A-}='. $x{'A-'} . "\n";
#foreach(keys %x) { print "$_ / $x{$_}\n"; }
