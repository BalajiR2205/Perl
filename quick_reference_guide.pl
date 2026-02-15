# print "Hello, World!";
use strict;
use warnings;
use Data::Dumper;

# Referencing guide

# Old way (circumfix)
@{$array_ref}
%{$hash_ref}
@{$AoA[0]}
%{$HoH{family}}

# New way (postfix) - easier to read left to right
$array_ref->@*
$hash_ref->%*
$AoA[0]->@*
$HoH{family}->%*

# Examples
push $AoA[0]->@*, "new_item";           # add to array
my @keys = keys $HoH{family}->%*;       # get hash keys
my $count = $HoA{flintstones}->@*;      # count array elements

# Creating references
my $array_ref = [ 1, 2, 3 ];        # anonymous array
my $hash_ref = { a => 1, b => 2 };   # anonymous hash
my $array_ref2 = \@existing_array;   # reference to existing

# Dereferencing
@{$array_ref}      # old way
%{$hash_ref}       # old way
$array_ref->@*     # new way (5.20+)
$hash_ref->%*      # new way (5.20+)

# Nested access
$AoA[0][1]         # array of arrays
$HoA{key}[1]       # hash of arrays  
$AoH[0]{key}       # array of hashes
$HoH{key1}{key2}   # hash of hashes
  



