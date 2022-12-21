# Lexical and dynamic scopes in Perl;

$a = 0;    # global variable

sub foo {
    return "in foo, a is $a\n";
}

sub staticScope {
    my $a = 1; # lexical (static), local to staticScope function
    return foo();
}

print staticScope(); # 0 (from the saved global frame)

$b = 0;    # global variable

sub bar {
    return "in bar, b is $b\n";
}

sub dynamicScope {
    $b =77;
    local $b = 1;
    return bar();
}

print dynamicScope(); # 1 (from the caller's frame)
print "global b is $b\n";
