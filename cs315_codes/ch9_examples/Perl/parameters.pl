
sub foo {
    print "formal parameters: ";
    print @_;
    print "\n";
    print "Number of arguments: ".scalar(@_)."\n";
    print "The first parameter: ".$_[0]."\n";
    print "The second parameter: ".$_[1]."\n";
    print "The third parameter: ".$_[2]."\n";
}

foo(2, "a", 4.5);


$a =5;
sub bar {
    $_[0] = 7;     # Perl: pass-by-ref
}
bar($a);
print "\$a = $a\n";  # $a is changed => pass-by-reference is used.
