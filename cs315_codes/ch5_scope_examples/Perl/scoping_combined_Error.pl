sub static_parent {
    print "In static_parent\n";
    my $x='static-parent';
    
    sub check {
        print "In check, x=$x\n";
    }

    sub dynamic_parent {
        print "in dynamic_parent\n";
        local $x='dynamic-parrent'; # Error, 
        # you can only localize global variables.
        check;
    }
    dynamic_parent;
}
static_parent;

