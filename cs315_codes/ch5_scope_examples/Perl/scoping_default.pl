sub big {
    $var=1;
    sub sub1 () {
	    print "In sub1, var=$var\n";
    }
    sub sub2 () {
        $var = 2;
	    print "In sub2, var is $var\n";
        sub1();
    }
    sub1();
    sub2();
    sub1();
}

print "In global, before big, var is *$var*\n";
big();
print "In global, after big, var is $var\n";
