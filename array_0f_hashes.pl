# print "Hello, World!";
use strict;
use warnings;
use Data::Dumper;

# Array of hashes

my @array = (
    {
        name => "fred",
        age  => 36,
        job  => "crane operator"
    },
    {
        name => "barney",
        age  => 34,
        job  => "quarry worker"
    },
    {
        name => "george",
        age  => 41,
        job  => "space worker"
    }
  );
  
# Adding new records
push @array, {
  name => "kenny",
  age => 40,
  job => "Cable operator."
};

print Dumper(\@array);
# Get entire record
my $one_hash = $array[0];
print %{$one_hash};

# Get specific field
my $name = $array[0]{name};
print "\n".$name;

# Loop through all records
foreach my $elem (@array){
  print "\nNames: $elem->{name}";
  print "\nAge: $elem->{age}";
}
# Loop through all records with index

for my $i (1..$#array){
  print "\n".$array[$i]{name};
}


  



