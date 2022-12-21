$a =5;
sub bar {
    $_[0] = 7;     # Perl: pass-by-ref
}
bar($a);
print "\$a = $a\n";  # $a is changed => pass-by-reference is used.
