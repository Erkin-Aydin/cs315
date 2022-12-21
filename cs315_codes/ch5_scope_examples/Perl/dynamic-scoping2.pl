$g=5;
sub A {
    my  $x=2;    # $x uses static scoping
    local $y=3;  # $y uses dynamic soping
    local $g=7;
    print "In A: g=$g, x=$x, y=$y\n";
    B();
}

sub B {
    print "In B: g=$g, x=$x, y=$y\n";
    C();
}

sub C {
    print "In C: g=$g, x=$x, y=$y\n";
}

A();
print "In main: g=$g, x=$x, y=$y\n";
