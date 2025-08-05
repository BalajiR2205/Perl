use strict;
use warnings;
use Data::Dumper

print "\nHello World!";

my @num = (33, 4, 56, 8, 19, 97);

my $largest = (sort {$a <=> $b } @num)[-1];

print "\n$largest";

my @evens = grep {$_ % 2 == 0} @num;
print "\nEvens: ".Dumper(@evens);

sub factorial{
    my $num = shift;

    return 1 if $num == 0;

    return $num * factorial($num - 1);
}

print(factorial(2));

my $sum = 0;

$sum += $_ for @num;

print "\nSum: $sum";

my @min_max = sort {$a <=> $b} @num;

print "\nMin: $min_max[0] \nMax: $min_max[-1]";

my @reversed_array;

print "\n $#num";

for (my $i = $#num; $i>=0; $i--){
    push @reversed_array, $num[$i];
}

print "\nReversed: @reversed_array";

my @sample = (1, 2, 4, 5, 6, 33, 5, 6, 77, 1, 55, 9, 90, 90);

my %seen;

grep {$seen{$_}++} @sample;

foreach (keys %seen){
    print "\n$_ is a duplicate" if $seen{$_} > 1;
}

my @new_array = (@num, @sample);

my %unique = map {$_ => 1} @new_array;

print "\nUnqiue elements: $_" for keys %unique;


