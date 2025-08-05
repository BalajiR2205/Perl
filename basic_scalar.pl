use strict;
use warnings;

#add two numbers
# print "Enter number 1:";
# my $num1 = <STDIN>;
# chomp($num1);

# print "$num1";

# print "Enter number 2:";
# my $num2 = <STDIN>;
# chomp($num2);

#print "\n Addition of two num".($num1 + $num2);

# Even or odd:

my $num = 13;

if ($num % 2 == 0){
    print("Even")
}else{
    #print("Odd")
}

#Factorial:


sub factorial {
    my $n = shift;
    return 1 if $n <= 1;  
    return $n * factorial($n - 1);
}

print(factorial(5));

