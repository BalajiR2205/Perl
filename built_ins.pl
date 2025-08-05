use strict;
use warnings;


my $string = "Independence day";

my $reversed;

my @str_to_arr = split('', $string);

my $length = scalar @str_to_arr;

for (my $i= ($length - 1); $i>=0; $i--){
    $reversed .= $str_to_arr[$i];
}

print "\n reversed: $reversed";

my $joined = join("", @str_to_arr );

print "\n Joined: $joined";

#Use map to square each number in an array:

my @num = (1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 44, 6, 7, 88, 92, 33, 4, 1);

my @sqrt_num = map {sqrt($_)} @num;

foreach (@sqrt_num){
    print "\n sqrt: $_";
}

my @evens = grep {$_ % 2 == 0} @num;

foreach (@evens){
    print "\n evens: $_";
}

my @sorted = sort {$a <=> $b} @num;

foreach (@sorted){
    print "\n sorted: $_";
}

my $string_test = "Formula 2 grand prix racing";

my $num = substr($string_test, 8, 1);

$string_test =~ s/$num/1/;

print "\n $string_test";




