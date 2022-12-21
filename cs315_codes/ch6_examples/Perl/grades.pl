# Perl Associative Arrays
%grades = ("Ali" => 95, "Veli" => 80, "Nur" => 99);

print "grade of Veli: $grades{Veli}\n";

# to change an entry
$grades{"Veli"} = 90;
print "grade of Veli: $grades{Veli}\n";

# to add a new entry
$grades{"Su"} = 100;
print "grade of Su: $grades{Su}\n";

# to delete an entry
delete $grades{"Ali"};

# to go through the array:
foreach $key (keys %grades) {
    print "$key $grades{$key}\n";
}

print "after makint it empty:\n";
# to empty the array
%grades = ();
foreach $key (keys %grades) {
    print "$key $grades{$key}\n";
}
