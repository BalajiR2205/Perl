use strict;
use warnings;

use List::Util;

#Sum of elements in an array:
my @numbers = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
my $sum;

foreach my $num (@numbers){
    $sum += $num;
}

# print("Sum: $sum");

#Max and min:

my @rand_numbers = (13, 2, 39, 14, 55, 666, 87, 28, 9, 190);

my @sorted_array = sort {$a <=> $b} @rand_numbers;

# print "\n @sorted_array";

# print("\n MAX: $sorted_array[0]");
# print("\n MIN: $sorted_array[-1]");

# Reverse an array without reverse function:

my @rand_numbers2 = (13, 2, 39, 14, 55, 666, 87, 28, 9, 190);
my $length = scalar (@rand_numbers2);

print "\n length: $length";
my @reversed;

for (my $i = $length-1; $i>=0; $i--){
    push @reversed, $rand_numbers2[$i];
}

print "\n reversed: @reversed";

#Frequency of elements:

my @freq_numbers = (13, 2, 28, 190, 39, 13, 14, 55, 666, 87,666, 666, 28, 9, 190, 39, 9, 9, 90, 14);

my %seen;

$seen{$_}++ for @freq_numbers;

print "\n $_ appeared $seen{$_} times." for keys %seen;

#Find duplicate elements in an array:

my @duplicates;

foreach (keys %seen){
    if ($seen{$_} > 1){
        push @duplicates, $_;
    }
}

print "\n Duplicates: @duplicates";

#Merge two arrays
my @merged = (@freq_numbers, @rand_numbers2);

print "\n Merged: @merged";

#Find unique elements:

my %unique = map {$_ => 1} @merged;

my @unique_elements = keys %unique;

print "\n Unique elements: @unique_elements";


