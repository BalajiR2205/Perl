# print "Hello, World!";
use strict;
use warnings;

my $string = "Hello";

print $string;

my @array = (1, 2, 3, 4);

print "\n@array";

my %hash = (a => 'A', b => 'B');

print %hash;

my $array_ref = \@array;
print $array_ref;

my $hash_ref = \%hash;

print $hash_ref;

my $array_scalar = [1, 2, 3, 4];

print $array_scalar;

my $hash_scalar = { a => 'A', b =>'B' };

print "\n".$hash_scalar;

