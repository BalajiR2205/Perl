use strict;
use warnings;

#printing hash

my %students = (
    'student1' => 55,
    'student2' => 25,
    'student3' => 35,
    'student4' => 95,
    'student5' => 5,
    'student6' => 75,
    'student7' => 45
);

foreach (keys %students){
    if ($students{$_} > 50){
        print "\n $_ scored more than 50.";
    }
    
}

#frequency of elements in array using hash

my @freq_numbers = (13, 2, 28, 190, 39, 13, 14, 55, 666, 87,666, 666, 28, 9, 190, 39, 9, 9, 90, 14);

my %seen;

$seen{$_}++ for @freq_numbers;

print "\n $_ appeared $seen{$_} times." for (keys %seen);

#Sort a hash using it's value:

print "\n sorted hash using values: $_" for (sort {$a <=> $b} values %students);

foreach my $name (sort {$a <=> $b} values %students) 
{
    print "\n $name";
}

# Invert keys and values:

my %inverted;

foreach (keys %students){
    my $value = $students{$_};
    $inverted{$value} = $_;
}

foreach (keys %inverted){
    #print "\n $_ => $inverted{$_}";
}

my %inverted_test = map { $students{$_} => $_ } keys %students;

foreach (keys %inverted_test){
    print "\n $_ => $inverted_test{$_}";
}





