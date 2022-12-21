sub big {
    local $var = 1;
    sub sub1 () {
	print "  In sub1 var=$var\n";
    }
    sub sub2 () {
        local $var = 2;
	print "In sub2, var=$var\n";
        sub1();
    }
    sub2();
    sub1();
}

big();
