sub sub1 {             # sub1 is the static parent of sub2
    local $x = 2;
#    my $x = 2;

    sub sub2 {
        print "In sub2, x=$x\n";
    }

    sub sub3 {
        print "In sub3\n";
        local $x=3;
#        my $x=3;
        sub4(\&sub2);  # call ststement that passed the subprogram, sub2
    }

    sub sub4 {
        print "In sub4\n";
        local $x = 1;
#        my $x=1;
        $subx = $_[0];
        $subx->();     # call statement for sub2, so sub4 is its dynamic parent
    }

    print "In sub1\n";

    sub3;
}
sub1();
