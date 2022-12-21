sub big {
    my $var=1;
    sub sub1 () {
	    print "  In sub1 var=$var\n";
    }
    sub sub2 () {
        my $var = 2;
	    print "In sub2, var=$var\n";
        sub1();
    }
    sub2();
    sub1();
}

print "In global, before big, var=$var\n";
big();
print "In global, after big, var=$var\n";
