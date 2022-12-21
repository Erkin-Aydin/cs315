sub visible {
   print "var has the value $var\n";
}

sub dynamic {
    local $var = 'local';   # new temporary value for the still-global
    visible();              # variable called $var
}

sub lexical {
    my $var = 'private';    # new private variable, $var is created
    visible();              # (invisible outside of sub scope)
}

$var = 'global';

visible();                  # prints global
dynamic();                  # prints local
lexical();                  # prints global
