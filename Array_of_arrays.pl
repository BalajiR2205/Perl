use strict;
use warnings;

my @AoA = (
  [1, 2, 3, 4, 5],
  [6, 7, 8, 9, 10],
  [11, 12, 13, 14, 15]
  );
  
$AoA[3] = [16, 17, 18, 19]; 

print $AoA[3][0];

# WRONG - This stores the count, not the array
for my $i (1..10) {
    my @array = somefunc($i);
    $AoA[$i] = @array;  # Gets number of elements!
}

# WRONG - All references point to same array
my @array;
for my $i (1..10) {
    @array = somefunc($i);
    $AoA[$i] = \@array;  # Same reference every time!
}

# RIGHT - Creates new array each time
for my $i (1..10) {
    my @array = somefunc($i);
    $AoA[$i] = [ @array ];  # Square brackets create new array
}
