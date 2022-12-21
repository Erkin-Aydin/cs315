# static-dynamic-scope.pl
# Lexical and dynamic scopes in Perl;
# Static (lexical) scope uses model of
# environments with frames; dynamic scope
# uses single global var frame.

$a = 0;
sub foo {
  return $a;
}
sub staticScope {
  my $a = 1; # lexical (static)
  return foo();
}

print staticScope(); # 0 (from the saved global frame)
print "\n";

$b = 0;
sub bar {
  return $b;
}
sub dynamicScope {
  local $b = 1;
  return bar();
}
print dynamicScope(); # 1 (from the caller's frame)
print "\n";