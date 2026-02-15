use strict;
use warnings;

my @AoA = (
  [1, 2, 3, 4, 5],
  [6, 7, 8, 9, 10],
  [11, 12, 13, 14, 15]
  );
  
$AoA[3] = [16, 17, 18, 19]; 

print $AoA[3][0];
