sub static_parent {
    print "In static_parent\n";
    my $x='static-parent';
    
    sub check {
        print "In check, x=$x y=$y a=$a\n";
    }

    sub dynamic_parent {
        print "in dynamic_parent\n";
        $a= 'global variable';
        local $y='dynamic-parrent'; 
        check;
    }
    check;
    dynamic_parent;
}
static_parent;
print "a is $a\n";
print "x is $x\n";
print "y is $y\n";
